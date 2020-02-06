local http = require 'http.client'
require 'http.client.proxyopt'

--[[
-- or
local http = require 'http.client.proxyopt'
]]

local client = http.new({})

client:request("GET","http://httpbin.org/get","",{ timeout = 3, proxy = "127.0.0.1:1080" })
