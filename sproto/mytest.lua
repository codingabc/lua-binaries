package.path="sproto/?.lua"
local parser = require "sprotoparser"
local print_r = require "print_r"
local core = require "sproto.core"

local ptext = [[
    .foobar {
        a 1 : string
        b 2 : integer
        c 3 : boolean
        d 4 : double
        f 6 : *integer
        g 7 : integer(2)
        h 8 : binary
        i 9 : string(4)
    }

    tbl_foobar 1 {
        request foobar
    }
]]

local pbin, obj = parser.parse(ptext)
print_r(obj)
local pobj = core.newproto(pbin)
core.dumpproto(pobj)