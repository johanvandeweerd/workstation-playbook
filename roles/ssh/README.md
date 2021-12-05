# Introduction

After installing `gnome-keyring`, `gnome-keyring` will acts as the `ssh-agent` 
and automatically load all the keys in `~/.ssh`. Make sure that for every 
private key the public key is also present (eg `id_rsa` and `id_rsa.pub`).

Use following command to permanently store ssh passphrases in keyring
```
/usr/libexec/seahorse/ssh-askpass <private_key_location>
```

Restart the `gnome-keyring-daemon` using following command:
```
/usr/bin/gnome-keyring-daemon -r -d
```

# References

- https://wiki.archlinux.org/title/GNOME/Keyring#SSH_keys
