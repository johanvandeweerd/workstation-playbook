# workstation-playbook

An Ansible playbook for setting up my Ubuntu workstation.

# Troubleshooting

## Output has been hidden ...

When following error occurs, it probably mean there is no 1Password `op` JWT token.

```
TASK [...]
******************************************************************************************************************************************************
fatal: [127.0.0.1]: FAILED! => changed=false
  censored: 'the output has been hidden due to the fact that ''no_log: true'' was specified for this result'
```

Run following command to set a temporary `op` JWT token:

```
eval $(op signin)
```
