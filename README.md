# Support for proxy option in http client

Monkey-patch module, which set's `all_proxy` ENV options just before performing request, based on `http:request`'s `option.proxy`

```lua
local http = require 'http.client'

-- Use this module before or after require 'http.client'
require 'http.client.proxyopt'

--[[
-- Also, http client is returned from this module
local http = require 'http.client.proxyopt'
]]

local client = http.new({})

client:request(
    "GET","http://httpbin.org/get","",
    {
        timeout = 3,
        proxy = "127.0.0.1:1080", -- pass proxy as an option to request
    }
)

-- alias methods are also affected
client:get("http://httpbin.org/get", { proxy = "127.0.0.1:1080" })
```
