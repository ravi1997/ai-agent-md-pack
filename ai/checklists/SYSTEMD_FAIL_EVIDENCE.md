# Checklist: systemd Service Failure Evidence

- `systemctl status <service> --no-pager`
- `journalctl -u <service> -n 300 --no-pager`
- Unit file path and relevant contents
- Environment variables source (EnvironmentFile)
- WorkingDirectory and permissions
- ExecStart command and user/group

Also check:
- `sudo -u <user> <cmd>` (run manually if safe)
- file permissions for sockets/log dirs

Output: 3 top hypotheses + evidence.
