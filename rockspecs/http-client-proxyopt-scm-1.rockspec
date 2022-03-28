package = 'http-client-proxyopt'
version = 'scm-1'
source  = {
    url    = 'git+https://github.com/moonlibs/http-client-proxyopt.git',
    branch = 'master',
}
description = {
    summary  = "Proxy option support for http.client",
    homepage = 'https://github.com/moonlibs/http-client-proxyopt.git',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1';
}
build = {
    type = 'builtin',
    modules = {
        ['http.client.proxyopt'] = 'http/client/proxyopt.lua'
    }
}

-- vim: syntax=lua
