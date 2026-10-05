#!/usr/bin/env bash
# Silent Disk & Inode Gauge for Constrained Cloud Environments
set -euo pipefail

echo "=== [Zero-Bloat Cloud] Filesystem Capacity Gauge ==="
df -h /home /tmp / 2>/dev/null || df -h .

HOME_AVAIL_PCT=$(df /home 2>/dev/null | awk 'NR==2 {print 100 - $5}' | tr -d '%')

echo ""
if [ "$HOME_AVAIL_PCT" -lt 15 ]; then
    echo "🚨 [STATUS: RED] Extreme Disk Danger! Free space is below 15% ($HOME_AVAIL_PCT% free)."
    echo "   Action: Run emergency_purge.sh immediately before executing any build."
elif [ "$HOME_AVAIL_PCT" -lt 35 ]; then
    echo "⚠️  [STATUS: AMBER] Moderate Disk Pressure. Free space is $HOME_AVAIL_PCT%."
    echo "   Action: Ephemeral /tmp redirection and check-only builds enforced."
else
    echo "✅ [STATUS: GREEN] Disk capacity healthy ($HOME_AVAIL_PCT% free). Standard zero-bloat active."
fi
