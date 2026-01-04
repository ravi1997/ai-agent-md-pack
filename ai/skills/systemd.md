# Skill: systemd Services

## Common unit fields
- `WorkingDirectory=`
- `EnvironmentFile=`
- `User=`
- `ExecStart=`
- `Restart=on-failure`
- `RestartSec=`

## Diagnosis
- `systemctl status -l <svc>`
- `journalctl -u <svc> -b -n 200 --no-pager`
