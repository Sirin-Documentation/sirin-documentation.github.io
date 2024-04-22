# GM Account

In the server console use the command

`account create [NAME] [GRADE] [SUB GRADE] [ACCOUNT CAPTURE “yes”/”no” ]`

Sirin account capture: Enables a GM to login as another user account without knowing the account password – passwords are stored securely there is no way to read them from the database.

```console
>account create gm 2 2 yes
>password *******
```

> Login with the launcher using `!username` / `password` - `!` signals this is a GM account login

# Player Account

In the server console use the command

`account create [NAME]`

```console
>account create playerone
>password *******
```

Ensure your login server is open before logging in a player account [Open Login server](consolebasics#open)

# [Enable] Launcher Account Creation
By default account creation via the launcher is disabled

This can be enabled in `sirin-core-config\ModAccountLoginService.lua`

Allowing new player accounts to be created using the game launcher

```lua
--------------------------
-- Configuration BEGIN
-- bool. Allow launcher register new accounts
config.AllowRegister = false

```
