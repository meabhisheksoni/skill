<#
.SYNOPSIS
    Automated 1-Click CRG (Code Review Graph) Toolchain Bootstrap Script
.DESCRIPTION
    Installs and configures the complete Code Review Graph toolchain on any Windows machine:
    - Verifies Python (3.10+) and uv package manager
    - Installs code-review-graph tool via uv
    - Creates global crg.cmd wrapper in ~/.local/bin
    - Ensures ~/.local/bin is in User PATH
    - Configures Antigravity/Gemini MCP config
    - Initializes/verifies the graph for the current repository
#>

[CmdletBinding()]
param(
    [string]$RepoRoot = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepoRoot)) {
    $RepoRoot = (Get-Location).Path
}

Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "   CRG TOOLCHAIN 1-CLICK BOOTSTRAP (NEW PC SETUP)   " -ForegroundColor Cyan
Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "Target Repository: $RepoRoot`n" -ForegroundColor DarkGray

# 1. Check or install uv
Write-Host "[1/6] Checking for 'uv' package manager..." -ForegroundColor Yellow
$uvPath = (Get-Command uv -ErrorAction SilentlyContinue)?.Source

if (-not $uvPath) {
    # Check Python 3.12 Scripts
    $py312Uv = "$env:LOCALAPPDATA\Programs\Python\Python312\Scripts\uv.exe"
    if (Test-Path $py312Uv) {
        $uvPath = $py312Uv
    }
}

if (-not $uvPath) {
    Write-Host "  -> 'uv' not found. Installing standalone uv for Windows..." -ForegroundColor DarkYellow
    try {
        powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
        $uvPath = "$env:USERPROFILE\.local\bin\uv.exe"
        if (-not (Test-Path $uvPath)) {
            $uvPath = "$env:CARGO_HOME\bin\uv.exe"
        }
    } catch {
        Write-Warning "Could not download uv via web. Checking if pip is available..."
        $pip = (Get-Command pip -ErrorAction SilentlyContinue)?.Source
        if ($pip) {
            & $pip install --upgrade uv
            $uvPath = (Get-Command uv -ErrorAction SilentlyContinue)?.Source
        }
    }
}

if (-not (Test-Path $uvPath)) {
    Write-Error "[FAIL] Could not locate or install 'uv'. Please install uv or Python manually."
    exit 1
}
Write-Host "  -> Found uv: $uvPath" -ForegroundColor Green

# 2. Install code-review-graph
Write-Host "`n[2/6] Installing 'code-review-graph' tool via uv..." -ForegroundColor Yellow
try {
    # Prefer Python 3.12 if available for pre-compiled tree-sitter wheels
    $py312 = "$env:LOCALAPPDATA\Programs\Python\Python312\python.exe"
    if (Test-Path $py312) {
        & "$uvPath" tool install code-review-graph --python "$py312" --force
    } else {
        & "$uvPath" tool install code-review-graph --force
    }
    Write-Host "  -> Successfully installed code-review-graph!" -ForegroundColor Green
} catch {
    Write-Error "[FAIL] uv tool install code-review-graph failed: $_"
    exit 1
}

# 3. Verify .local\bin and create crg.cmd wrapper
Write-Host "`n[3/6] Setting up CLI wrapper ('crg.cmd')..." -ForegroundColor Yellow
$localBin = "$env:USERPROFILE\.local\bin"
if (-not (Test-Path $localBin)) {
    New-Item -ItemType Directory -Path $localBin -Force | Out-Null
}

$crgCmd = "$localBin\crg.cmd"
Set-Content -Path $crgCmd -Value "@echo off`ncode-review-graph %*" -Encoding Ascii
Write-Host "  -> Created wrapper: $crgCmd" -ForegroundColor Green

# 4. Verify User Environment PATH
Write-Host "`n[4/6] Checking User Environment PATH..." -ForegroundColor Yellow
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($userPath -notlike "*$localBin*") {
    Write-Host "  -> Adding $localBin to User PATH..." -ForegroundColor DarkYellow
    [Environment]::SetEnvironmentVariable("Path", "$userPath;$localBin", "User")
    $env:Path = "$env:Path;$localBin"
    Write-Host "  -> User PATH updated successfully." -ForegroundColor Green
} else {
    Write-Host "  -> $localBin is already present in PATH." -ForegroundColor Green
}

# 5. Configure Antigravity / Gemini MCP Config
Write-Host "`n[5/6] Registering CRG in Antigravity/Gemini MCP configs..." -ForegroundColor Yellow
$mcpConfigs = @(
    "$env:USERPROFILE\.gemini\antigravity\mcp_config.json",
    "$env:USERPROFILE\.gemini\config\mcp_config.json"
)

$crgExe = "$localBin\code-review-graph.exe"

foreach ($cfg in $mcpConfigs) {
    if (Test-Path $cfg) {
        try {
            $json = Get-Content $cfg -Raw | ConvertFrom-Json
            if (-not $json.mcpServers) {
                $json | Add-Member -MemberType NoteProperty -Name "mcpServers" -Value ([PSCustomObject]@{})
            }
            
            $crgObj = [PSCustomObject]@{
                command = $crgExe.Replace('\', '/')
                args = @("serve")
            }
            
            if ($json.mcpServers.'code-review-graph') {
                $json.mcpServers.'code-review-graph'.command = $crgExe.Replace('\', '/')
                $json.mcpServers.'code-review-graph'.args = @("serve")
            } else {
                $json.mcpServers | Add-Member -MemberType NoteProperty -Name "code-review-graph" -Value $crgObj
            }
            
            $json | ConvertTo-Json -Depth 10 | Set-Content $cfg -Encoding UTF8
            Write-Host "  -> Updated MCP config: $cfg" -ForegroundColor Green
        } catch {
            Write-Warning "  -> Could not parse $cfg: $_"
        }
    }
}

# 6. Verify and Build / Status Graph
Write-Host "`n[6/6] Verifying graph database for repository..." -ForegroundColor Yellow
try {
    & "$crgExe" status --repo "$RepoRoot"
    Write-Host "`n[OK] CRG Toolchain setup is 100% complete and operational!" -ForegroundColor Green
} catch {
    Write-Host "  -> Graph not built yet. Building graph now..." -ForegroundColor DarkYellow
    & "$crgExe" build --repo "$RepoRoot"
    Write-Host "`n[OK] CRG Graph built and verified!" -ForegroundColor Green
}

Write-Host "`n===================================================" -ForegroundColor Cyan
Write-Host "You can now use 'crg' or 'code-review-graph' anywhere!" -ForegroundColor Cyan
Write-Host "===================================================" -ForegroundColor Cyan
