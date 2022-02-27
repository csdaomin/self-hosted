# self-hosted

# Security
## fail2ban
installation
```bash
sudo apt install fail2ban
```

### nginx

- jail configuration
  location in your machine maybe `/etc/fail2ban/jail.d/nginx.conf` (refer to fail2ban/jail.d/nginx.conf)

- filter configuration
  `nginx-http-auth.conf` is default filter for nginx


  ```
    # fail2ban filter configuration for nginx
    [Definition]

    failregex   = ^ \[error\] \d+#\d+: \*\d+ user "(?:[^"]+|.*?)":? (?:password mismatch|was not found in "[^\"]*"), client: <HOST>, server: \S*, request: "\S+ \S+ HTTP/\d+\.\d+", host: "\S+"(?:, referrer: "\S+")?\s*$
                ^ \[error\] \d+#\d+: \*\d+ no user/password was provided for basic authentication, client: <HOST>, server: \S+, request: "\S+ \S+ HTTP/\d+\.\d+", host: "\S+"\s*$

    ignoreregex =

    datepattern = {^LN-BEG}

    # DEV NOTES:
    # Based on samples in https://github.com/fail2ban/fail2ban/pull/43/files
    # Extensive search of all nginx auth failures not done yet.
    #
    # Author: Daniel Black
  ```
  other filters see `fail2ban/filter.d/nginx-*.conf`
  