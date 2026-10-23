local lua_dir = os.getenv("HOME") .. "/.config/hypr/lua"
package.path = lua_dir .. "/?.lua;" .. package.path

local function read_hostname()
    local file = io.open("/etc/hostname")
    if not file then
        return nil
    end
    local name = file:read("*l")
    file:close()
    return name
end

local host = read_hostname()

-- lua/hosts/<hostname>/<layer>.lua replaces the common lua/<layer>.lua.
local function layer(name)
    local host_layer = host and "hosts." .. host .. "." .. name
    if host_layer and package.searchpath(host_layer, package.path) then
        require(host_layer)
    else
        require(name)
    end
end

layer("env")
layer("toolkit")
layer("monitors")
layer("appearance")
layer("keymaps")
layer("gestures")
layer("capability")
layer("startup")
