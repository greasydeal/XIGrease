_addon.name = 'XIGrease'
_addon.author = 'greasydeal'
_addon.version = 'beta 0.1'
_addon_description = 'Connects player to monitoring services.'

local socket = require("socket")

local port = 33420
local ip = "localhost"
local tcp = assert(socket.tcp())

ashita.register_event('load', function()
    if (tcp:connect(ip, port) == 1) then
        print('\31\200[\31\05XIGrease\31\200]\31\207 '.. "Connected to XIGrease network!")
    else
        print('\31\200[\31\05XIGrease\31\200]\31\207 '.. "ERROR: Could not connect to XIGrease network!")
    end;
end);
