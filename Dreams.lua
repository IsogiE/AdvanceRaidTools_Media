local LSM = _G.LibStub and LibStub("LibSharedMedia-3.0", true)
if not LSM then
    return
end

local PACK = "ART"
local BASE = [[Interface\AddOns\AdvanceRaidTools_Media\Images\Dreams\]]
local PREFIX = "ART_Dream_" .. PACK .. "_"

local DREAMS = {
    { "oatly", "oatly.png", 256, 384 },
    { "chill", "chillguy.png", 168, 300 },
    { "lazel", "lazel.png", 960, 540 },
    { "scrapps", "scrapps.png", 392, 345 },
    { "vikrally", "vikrally.png", 540, 435 },
    { "soul", "soul.png", 453, 435 },
    { "shu", "shu.png", 540, 305 },
    { "lazelloot", "lazelloot.png", 358, 249 },
    { "andy", "andy.png", 540, 380 },
    { "newpatch", "newpatch.png", 540, 360 },
    { "norkus", "norkus.png", 379, 388 },
    { "soulflat", "soulflat.png", 499, 297 },
    { "speed", "speed.png", 381, 435 },
    { "gulp", "gulp.png", 487, 471 },
    { "sep", "sep.png", 455, 449 },
    { "lazelr2", "lazelr2.png", 512, 347 },
    { "ronkas", "ronkas.png", 430, 347 },
    { "yaya", "yaya.png", 460, 361 },
    { "kreem", "kreem.png", 452, 390 },
}

ART_Media = ART_Media or {}
ART_Media.Dreams = ART_Media.Dreams or { prefix = "ART_Dream_", dims = {} }

for _, d in ipairs(DREAMS) do
    local lsmName = PREFIX .. d[1]
    LSM:Register(LSM.MediaType.BACKGROUND, lsmName, BASE .. d[2])
    ART_Media.Dreams.dims[lsmName] = { w = d[3], h = d[4] }
end
