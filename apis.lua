server_apis:
  custom_data: table
    Hash: table -- hash library from https://github.com/Egor-Skriptunoff/pure_lua_SHA
    InstanceToTable: table
      .DecodeData(instance: Instance): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
      .EncodeData(table: table): {Properties = roblox_properties if instance:GetChildren() > 0 then Children = {} end}
    RobloxProperties: table
      __index = self
      .GetProperties(obj: Instance): {repeat {} until #self >=}
  request(...): ... -- this function equals game:GetService("HttpService"):GetAsync(...)

-- unfinished rn
