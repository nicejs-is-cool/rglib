local loadstring = require("loadstring")
local VideoChipWrapper = require("videochipw") -- not done
local evec2 = require("evec2")
local estrings = require("estrings")

return {
    loadstring = loadstring,
    load = loadstring,
    VideoChipWrapper = VideoChipWrapper,
    VCW = VideoChipWrapper,
    evec2 = evec2,
    vec2 = evec2,
    estrings = estrings,
    string = estrings,
}