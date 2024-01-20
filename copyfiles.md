# Copy Files to Client and Server

Sirin works with both GU and AoP. [Download](quickstart#download)  the version that matches your server files 

- !Server → GU    (If you are using a GU server)
- !Server → AoP  (If you are using AoP)


- !Client → GU    (If you are using a GU server)
- !Client → AoP   (If you are using AoP)


- Copy the server files into your Server folder  (Replace any files that already exist)
- Copy the client files into your client folder  (Replace any files that already exist)

#
# Remove Login and Account Servers
> Sirin uses its own login and account system

Original Account and Login servers are no longer used and can be removed
> With Sirin you need to only launch the ZoneServer and your server is running

Account management can be done directly in the server console [Account Creation](accountcreate.md)

#
# Launch the Server Console
Startup the server console by running the `ZoneServer.exe` \
You will get an error informing you to create your server password salts _this is normal_

```server console
====================================================
Welcome to SIRIN guard
This product is FREE under 50 online players.
====================================================
Core build: Jan  8 2024 16:01:35
Zone type: AoP 2016 Shrinked
Core ver: 3.0.25
Core type: AoP 2016 Shrinked
Getting modules info...
Loading files...
Salt for password hashes not set! check file ./sirin-scripts/config-core/sirin-private-settings.lua
...
```
#
# Set your Server salt
Used for securely encrypting database passwords, this has to be set by the server owner \
File `./sirin-scripts/config-core/sirin-private-settings.lua` will be created on the very first server launch.

Edit this file and type in any unique string of characters that will be used when encrypting users passwords.

> For best results use a completely random set of characters upto 64 characters

```lua
-- Do not remove these lines
local config = {}
local serverAuth = {}
--------------------------
 
-- Configuration BEGIN
 
config.PasswordSalt = "Rvq2#w9[2/RfbeaS"
config.SecondFactorSalt = "9u0&-9EM[I[=(uZZ"
```

>>  Once set restart your server

> For any further errors view [Common Errors](errors.md)
