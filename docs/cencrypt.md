# Encryption of client files

Client encryption tool is provided with the Sirin files [Download](quickstart.md#download) `!Tools -> sirin-encrypt-tool.exe`

On first launching the tool a new `keyfile.txt` will be generated

> This key is randomly generated and unique to you _If you loose this key you will have to generate a new one and re-encrypt your client files_

```console
Key not found. Generating new key...
New key created!
Done! Files processed: 0
type 'exit' to close the app.
Total files processed: 0; Files per second: 0
```

The key in `keyfile.txt` is to be inserted into your Server config `sirin-scripts\config-guard\ModFileEncryption.lua`

```keyfile
qEeBXVb1/ftFL6BQbr0jRvx5JmKVgnusTx2ZGgZoGVruzKnmtBUUo4ekgQzYMrokgnDJ3cZP7/vt3mKRPaAceQ==
```

```lua
-- Do not remove these lines
local config = {}
sirinGuardConfig.modFileEncryption = {}
--------------------------

-- Configuration BEGIN

-- string. Decryption key produced by sirin-encrypt-tool.
--
config.DecryptKey = "qEeBXVb1/ftFL6BQbr0jRvx5JmKVgnusTx2ZGgZoGVruzKnmtBUUo4ekgQzYMrokgnDJ3cZP7/vt3mKRPaAceQ=="

-- Configuration END

-- Do not remove these lines
sirinGuardConfig.modFileEncryption.Config = config
--------------------------

```

# Processing Files

On first launching the tool two new folders will be created

`in` and `out`

Files to process go into the `in` folder.  Relaunching the tool will process these files and deposit them in the `out` folder

```console
Key file read complete.
Done! Files processed: 10
type 'exit' to close the app.
Total files processed: 10; Files per second: 10
```
You can now add these files back to your client folders

> Any errors whilst processing the files will be displayed
