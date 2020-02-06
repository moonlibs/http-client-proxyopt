local c = require 'http.client'

local mt = debug.getmetatable(c.new())

local orig_request = rawget(_G,"\0http_client_request")
if not orig_request then
    orig_request = mt.__index.request
    rawset(_G,"\0http_client_request", orig_request)
end

mt.__index.request = function(self, method, url, body, opts)
    if opts and opts.proxy then
        os.setenv( "all_proxy", opts.proxy )
    else
        os.setenv( "all_proxy", nil )
    end
    return orig_request(self, method, url, body, opts)
end

return c
