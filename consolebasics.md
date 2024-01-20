# Commands

commands can be entered into the server console 
`> help` will list all commands that can be entered
```
>help
'clear' - Clear console window
'update' - Update info. Usage:
        update COMMAND
        s - Servers.
        l - Licenses.
'migrate' - Migrate game accounts.
'help' - Show this message
'exit' - Exit application
'open' - Open login server.
...
```

# Open
Opens the login server to players, this does not affect if GM accounts are able to login

# Close
Closes the login server to players

# Migrate
Used in [Migrating Databases](databases#migrating-databases) for migrating old account databases to the Sirin account database.

# Show
Is used to show modules `m`, features `f`, servers `s` and licences `l`

```console
>show f 
```
To list all features. This will later be used to [enable/disable specific features](plugins)
```console
# -   Is Active - Can disable - Name
[1]      - yes   - yes   - [Fix] Accept GvG with no money
[2]      - yes   - yes   - [Fix] Animation cancel
[3]      - yes   - yes   - [Fix] Animus recall lock on level up
[4]      - yes   - yes   - [Fix] AoP disable bugged post check
[5]      - yes   - yes   - [Fix] AoP hero combinations delay
[6]      - yes   - yes   - [Fix] AoP ore processing result
[7]      - yes   - yes   - [Fix] AoP unit repair
[8]      - yes   - yes   - [Fix] Apex crash (packet 98)
[9]      - yes   - yes   - [Fix] Bullet usage with non range weapons
[10]     - yes   - yes   - [Fix] Crash server through guild manage
[11]     - yes   - yes   - [Fix] Crash server through trade
[12]     - yes   - yes   - [Fix] Create character (name, base shape)
[13]     - yes   - yes   - [Fix] Create tower request
...
```