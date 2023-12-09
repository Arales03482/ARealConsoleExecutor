server_apis:
  custom_data: table
    Hash: table -- hash library from https://github.com/Egor-Skriptunoff/pure_lua_SHA
    InstanceToTable: table
      .DecodeData(instance: Instance): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
      .EncodeData(table: table): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
    RobloxProperties: table
      .__index = self
      .GetProperties(obj: Instance): {for _ = 0, #properties do if table.find(property.Tags, 'Deprecated') and not table.find(property.Tags, 'Hidden') and not table.find(property.Tags, 'NotScriptable') then table.insert(properties, {Name = property.Name, Value = obj[property.Name]}) end end}
    LoadCharacter(username: string, parent: Instance, isR15: bool, cframe: CFrame): Model
    LoadModel(id: number, parent: Instance, cframe: CFrame): model:GetChildren()
    GiveBTools(parent: Instance): model:GetChildren()
    BToolsExportImporter(id: number, parent: Instance, cframe: CFrame): Model
    NoCooldownSubspaceTripmine(parent: Instance, cframe: CFrame): tool
    SecurePrompt: table
      .__index = self
      .new(prompt: ProximityPrompt): setmetatable({
                                                    triggers = {
                                                      [p: Player] = _: bool
                                                    },
                                                    can_trigger = {
                                                      [p: Player] = _: bool
                                                    },
                                                    timers = {
                                                      [p: Player] = {
                                                        end_tick: number,
                                                        start_tick: number
                                                      }
                                                    },
                                                    connections = {
                                                      ["PromptButtonHoldBegan"] = _: RBXScriptConnection,
                                                      ["PromptButtonHoldEnded"] = _: RBXScriptConnection,
                                                      ["PromptHidden"] = _: RBXScriptConnection,
                                                      ["TriggerEnded"] = _: RBXScriptConnection,
                                                      ["Triggered"] = _: RBXScriptConnection
                                                    },
                                                    function_connections = {
                                                      [#self + 1] = _: RBXScriptConnection
                                                    },
                                                    _signal = Signal
                                                  },
                                                  self)
      :Connect(callback: function): RBXScriptConnection
      :Wait(): ...
      :Destroy(): nil
    Signal: table
      .__index = self
      .new(): setmetatable({
                             _BindableEvent = _: BindableEvent,
                             _DestroyEvent = _: BindableEvent
                           },
                           self)
      :Connect(callback: function): RBXScriptConnection
      :Fire(...): ...
      :Wait(): ...
      :Destroy(): nil
    WebhookService: table
      :createMessage(url: string, message: string): success_string: string, error: string
      :createEmbed(url: string, title : string, message: string, fields: table, image: string): success_string: string, error: string
      :createAuthorEmbed(url: string, authorName: string, iconurl: string, description: string, fields: table): success_string: string, error: string
      :post(url: string, data: table, times: number): success_string: string, error: string
      :multiPost(urls: table, data: table): success_string: string, error: string
    Encryption: table
      AES: table
        .ROUNDS = "rounds"
        .KEY_TYPE = "type"
        .ENCRYPTION_KEY = 1
        .DECRYPTION_KEY = 2
        expandEncryptionKey(key: string): ({
                                            [.ROUNDS] = #key + 6
                                            [.KEY_TYPE] = .ENCRYPTION_KEY
                                            ...
                                          } or nil)
        expandEncryptionKey(key: string): ({
                                            [.KEY_TYPE] = .DECRYPTION_KEY
                                            [.ROUNDS] = expandEncryptionKey(key).ROUNDS
                                            ...
                                          } or nil)
        encrypt(key: string, input: string?, inputOffset or 1: number, output = {}: table, outputOffset or 1: number): (string or nil)
        decrypt(key: string, input: string?, inputOffset or 1: number, output = {}: table, outputOffset or 1: number): (string or nil)
      AESLUA: table
        .AES128 = 16
        .AES192 = 24
        .AES256 = 32
        .ECBMODE = 1
        .CBCMODE = 2
        .OFBMODE = 3
        .CFBMODE = 4
        encrypt(password: string, data: string, keyLength or .AES128: number, mode or .CBCMODE: number): (string or nil)
        decrypt(password: string, data: string, keyLength or .AES128: number, mode or .CBCMODE: number): (string or nil)
      BIT: table
        bnot(x: number): number
        lshift(x: number, n: number): number
        rshift(x: number, n: number): number
        band(x: number, y: number): number
        bor(x: number, y: number): number
        bxor(x: number, y: number): number
      BUFFER: table
        new(): {}
        addString(stack: table, s: string): nil
        toString(stack: table): reverse(stack)[1]
  .request(...): ... -- this function equals game:GetService("HttpService"):GetAsync(...)
  .loadstring(...): ... -- acts like the loadstring function
  .loadstring_server(code: string, parent: Instance, ...): Script -- acts like the loadstring function but will get executed on the server
  .loadstring_client(code: string, parent: Instance, ...): LocalScript -- acts like the loadstring function but will get executed on the client
  .loadstring_opposite(code: string, parent: Instance, ...): Script or LocalScript -- acts like the loadstring function but will get executed from the opposite type
  .owner: Player -- the player that executed the script
client_apis:
  custom_data: table
    Hash: table -- hash library from https://github.com/Egor-Skriptunoff/pure_lua_SHA
    InstanceToTable: table
      .DecodeData(instance: Instance): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
      .EncodeData(table: table): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
    RobloxProperties: table
      .__index = self
      .GetProperties(obj: Instance): {for _ = 0, #properties do if table.find(property.Tags, 'Deprecated') and not table.find(property.Tags, 'Hidden') and not table.find(property.Tags, 'NotScriptable') then table.insert(properties, {Name = property.Name, Value = obj[property.Name]}) end end}
    LoadCharacter(username: string, parent: Instance, isR15: bool, cframe: CFrame): Model
    SecurePrompt: table
      .__index = self
      .new(prompt: ProximityPrompt): setmetatable({
                                                    triggers = {
                                                      [p: Player] = _: bool
                                                    },
                                                    can_trigger = {
                                                      [p: Player] = _: bool
                                                    },
                                                    timers = {
                                                      [p: Player] = {
                                                        end_tick: number,
                                                        start_tick: number
                                                      }
                                                    },
                                                    connections = {
                                                      ["PromptButtonHoldBegan"] = _: RBXScriptConnection,
                                                      ["PromptButtonHoldEnded"] = _: RBXScriptConnection,
                                                      ["PromptHidden"] = _: RBXScriptConnection,
                                                      ["TriggerEnded"] = _: RBXScriptConnection,
                                                      ["Triggered"] = _: RBXScriptConnection
                                                    },
                                                    function_connections = {
                                                      [#self + 1] = _: RBXScriptConnection
                                                    },
                                                    _signal = Signal
                                                  },
                                                  self)
      :Connect(callback: function): RBXScriptConnection
      :Wait(): ...
      :Destroy(): nil
    Signal: table
      .__index = self
      .new(): setmetatable({
                             _BindableEvent = _: BindableEvent,
                             _DestroyEvent = _: BindableEvent
                           },
                           self)
      :Connect(callback: function): RBXScriptConnection
      :Fire(...): ...
      :Wait(): ...
      :Destroy(): nil
    Encryption: table
      AES: table
        .ROUNDS = "rounds"
        .KEY_TYPE = "type"
        .ENCRYPTION_KEY = 1
        .DECRYPTION_KEY = 2
        expandEncryptionKey(key: string): ({
                                            [.ROUNDS] = #key + 6
                                            [.KEY_TYPE] = .ENCRYPTION_KEY
                                            ...
                                          } or nil)
        expandEncryptionKey(key: string): ({
                                            [.KEY_TYPE] = .DECRYPTION_KEY
                                            [.ROUNDS] = expandEncryptionKey(key).ROUNDS
                                            ...
                                          } or nil)
        encrypt(key: string, input: string?, inputOffset or 1: number, output = {}: table, outputOffset or 1: number): (string or nil)
        decrypt(key: string, input: string?, inputOffset or 1: number, output = {}: table, outputOffset or 1: number): (string or nil)
      AESLUA: table
        .AES128 = 16
        .AES192 = 24
        .AES256 = 32
        .ECBMODE = 1
        .CBCMODE = 2
        .OFBMODE = 3
        .CFBMODE = 4
        encrypt(password: string, data: string, keyLength or .AES128: number, mode or .CBCMODE: number): (string or nil)
        decrypt(password: string, data: string, keyLength or .AES128: number, mode or .CBCMODE: number): (string or nil)
      BIT: table
        bnot(x: number): number
        lshift(x: number, n: number): number
        rshift(x: number, n: number): number
        band(x: number, y: number): number
        bor(x: number, y: number): number
        bxor(x: number, y: number): number
      BUFFER: table
        new(): {}
        addString(stack: table, s: string): nil
        toString(stack: table): reverse(stack)[1]
  .request(...): ... -- this function equals game:GetService("HttpService"):GetAsync(...) through a remotefunction on the server
  .loadstring(...): ... -- acts like the loadstring function
  .loadstring_server(code: string, parent: Instance, ...): Script -- acts like the loadstring function but will get executed on the server through a remotefunction on the server
  .loadstring_client(code: string, parent: Instance, ...): LocalScript -- acts like the loadstring function but will get executed on the client through a remotefunction on the server
  .loadstring_opposite(code: string, parent: Instance, ...): Script or LocalScript -- acts like the loadstring function but will get executed from the opposite type through a remotefunction on the server
  .owner: Player -- the player that executed the script
