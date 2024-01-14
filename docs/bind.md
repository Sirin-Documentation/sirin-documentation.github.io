# Register
Some features require logging in such as saving your enabled modules \
Create a new user account via the Server Console

```console
>register
Provide a valid email to register new account.
email: xxxx@xxx.xxx
Provide a display name: (Optional. Can be changed later).
Display name: xxxx
Connecting license server...
License server connect success.
Server not authenticated! Server will continue in demo mode!
User registration success! Check your email box to get account password.
```

```email
Registration confirmation
To confirm your registration, login using password: xxxxxxxxx
```

# Login
Password for login is sent after registering
```console
>login
login: xxxx@xxx.xxx
password:*******
```

# Logout
Logout from the logged in account

***
# Bind Server to Account
Login to your account
```console
>login
login: xxxx@xxx.xxx
password:*******
Retrieving user info...
No server data found.
No license data found.
xxxx@xxx.xxx>
```
Bind server using `server` command with `custom id` ID can contain spaces
```console
xxxx@xxx.xxx> server bind demo_server
Bind server success!
Please, restart application!
```
Use `Show` to list the newly created server bind
```console
xxxx@xxx.xxx> show s
# - This PC - Description
[1] - yes - demo_server
```
***
# Bind License to Server
Grab updates for your Account using `update l` and `show l` to see licenses on your account \
Each license has its own id `#` and last 30 days from being bound

```console
xxxx@xxx.xxx>update l
xxxx@xxx.xxx>show l
# - Is Bind - Slot num - Have modules - Have features - Remain time
[1] - no - 500 - no - no - n/a
[2] - no - 100 - no - no - n/a
[3] - no - 50 - no - no - n/a
```
Use `show s` to grab the id `#` of your current server
```console
xxxx@xxx.xxx> show s
# - This PC - Description
[1] - yes - demo_server
```
> Before binding the license to the server - Ensure the Server folder is in its final location on the HDD \
> The Server ⇔ License link breaks when moving or renaming the server folder

Bind the license id `#` to the current server \
Optionally `license b` `[license id #]` `[server id #]` to bind to another server on the same account
```console
xxxx@xxx.xxx> license b 3
Licensed slots: 50
```
Info about the bound licenses can be seen with `show l`
```console
xxxx@xxx.xxx> show l
# - Is Bind - Slot num - Have modules - Have features - Remain time
[1] - no - 500 - no - no - n/a
[2] - no - 100 - no - no - n/a
[3] - this - 50 - no - no - 29 days, 23 h, 58 m, 31 s remaining
```
> Is Bind

    - this  `bound on account to this server`
    - yes    `bound on account but not this server`
    - no    `not bound`

> Slot Num

    - Number of players that can connect to the server