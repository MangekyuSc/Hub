local function _0xB921(f, s, c)
if type(f) ~=string.char(102,117,110,99,116,105,111,110)then
local _0x7A88 = getmetatable(f)
if type(_0x7A88) ==string.char(116,97,98,108,101)and _0x7A88.__iter then
f, s, c = _0x7A88.__iter(f)
elseif type(f) ==string.char(116,97,98,108,101)then
f, s, c = next, f, nil
end
end
return function()
local _0x17E0 = table.pack(f(s, c))
if _0x17E0[1] == nil then
return false
end
c = _0x17E0[1]
return true, table.unpack(_0x17E0, 1, _0x17E0.n)
end
end
local _0x969C = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
FARM_RANGE = FARM_RANGE or 300
Range = Range or 100
ply = ply or game:GetService(string.char(80,108,97,121,101,114,115))
Core = Core or {}
getgenv().Core = Core
ply = game.Players
plr = ply.LocalPlayer
Root = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
replicated = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
Lv = game.Players.LocalPlayer.Data.Level.Value
TeleportService = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
TW = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
Lighting = game:GetService(string.char(76,105,103,104,116,105,110,103))
Enemies = workspace.Enemies
vim1 = game:GetService(string.char(86,105,114,116,117,97,108,73,110,112,117,116,77,97,110,97,103,101,114))
vim2 = game:GetService(string.char(86,105,114,116,117,97,108,85,115,101,114))
TeamSelf = plr.Team
RunSer = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
Stats = game:GetService(string.char(83,116,97,116,115))
Energy = plr.Character and plr.Character:FindFirstChild(string.char(69,110,101,114,103,121)) and plr.Character.Energy.Value or 100
BringConnections = {}
BossList = {}
MaterialList = {}
NPCList = {}
PlrList = {}
shouldTween = false
getgenv().OnFarm = false
getgenv().AutoMaterial = false
NextIs = false
senth = false
senth2 = false
SoulGuitar = false
KenTest = true
debug = false
Brazier1 = false
Brazier2 = false
Brazier3 = false
Sec = 0.1
ClickState = 0
Num_self = 25
local _0xF0B6 = game:GetService(string.char(80,108,97,121,101,114,115))
for _0xFD54, player in pairs(_0xF0B6:GetPlayers()) do
table.insert(PlrList, player.Name)
end
do
game:GetService(string.char(80,108,97,121,101,114,115)).PlayerAdded:Connect(function(player)
table.insert(PlrList, player.Name)
end)
end
game:GetService(string.char(80,108,97,121,101,114,115)).PlayerRemoving:Connect(function(player)
local _0xCDFF = table.find(PlrList, player.Name)
if _0xCDFF then
table.remove(PlrList, _0xCDFF)
end
end)
PrehisUser = {
Find = false,
Skills = false,
DE = false,
}
plr.CharacterAdded:Connect(function(character)
local _0x1327 = character:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 15)
if _0x1327 then
Root = _0x1327
end
end)
local _0xD579
repeat
_0xD579 = plr.PlayerGui:WaitForChild(string.char(77,97,105,110)):WaitForChild(string.char(76,111,97,100,105,110,103)) and game:IsLoaded()
task.wait()
until _0xD579
World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
Marines = function()
replicated.Remotes.CommF_:InvokeServer(string.char(83,101,116,84,101,97,109),string.char(77,97,114,105,110,101,115))
end
Pirates = function()
replicated.Remotes.CommF_:InvokeServer(string.char(83,101,116,84,101,97,109),string.char(80,105,114,97,116,101,115))
end
if World1 then
BossList = {string.char(84,104,101,32,71,111,114,105,108,108,97,32,75,105,110,103),string.char(66,111,98,98,121),string.char(84,104,101,32,83,97,119),string.char(89,101,116,105),string.char(77,111,98,32,76,101,97,100,101,114),string.char(86,105,99,101,32,65,100,109,105,114,97,108),string.char(83,97,98,101,114,32,69,120,112,101,114,116),string.char(87,97,114,100,101,110),string.char(67,104,105,101,102,32,87,97,114,100,101,110),string.char(83,119,97,110),string.char(77,97,103,109,97,32,65,100,109,105,114,97,108),string.char(70,105,115,104,109,97,110,32,76,111,114,100),string.char(87,121,115,112,101,114),string.char(84,104,117,110,100,101,114,32,71,111,100),string.char(67,121,98,111,114,103),string.char(73,99,101,32,65,100,109,105,114,97,108),string.char(71,114,101,121,98,101,97,114,100),
}
elseif World2 then
BossList = {string.char(68,105,97,109,111,110,100),string.char(74,101,114,101,109,121),string.char(79,114,98,105,116,117,115),string.char(68,111,110,32,83,119,97,110),string.char(83,109,111,107,101,32,65,100,109,105,114,97,108),string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108),string.char(84,105,100,101,32,75,101,101,112,101,114),string.char(68,97,114,107,98,101,97,114,100),string.char(67,117,114,115,101,100,32,67,97,112,116,97,105,110),string.char(79,114,100,101,114),
}
elseif World3 then
BossList = {string.char(83,116,111,110,101),string.char(72,121,100,114,97,32,76,101,97,100,101,114),string.char(75,105,108,111,32,65,100,109,105,114,97,108),string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116),string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101),string.char(67,97,107,101,32,81,117,101,101,110),string.char(68,111,117,103,104,32,75,105,110,103),string.char(76,111,110,103,109,97),string.char(83,111,117,108,32,82,101,97,112,101,114),string.char(114,105,112,95,105,110,100,114,97,32,84,114,117,101,32,70,111,114,109),string.char(84,121,114,97,110,116,32,111,102,32,116,104,101,32,83,107,105,101,115),
}
end
if World1 then
MaterialList = {string.char(76,101,97,116,104,101,114,32,43,32,83,99,114,97,112,32,77,101,116,97,108),string.char(65,110,103,101,108,32,87,105,110,103,115),string.char(77,97,103,109,97,32,79,114,101),string.char(70,105,115,104,32,84,97,105,108),
}
elseif World2 then
MaterialList = {string.char(76,101,97,116,104,101,114,32,43,32,83,99,114,97,112,32,77,101,116,97,108),string.char(82,97,100,105,111,97,99,116,105,118,101,32,77,97,116,101,114,105,97,108),string.char(69,99,116,111,112,108,97,115,109),string.char(77,121,115,116,105,99,32,68,114,111,112,108,101,116),string.char(77,97,103,109,97,32,79,114,101),string.char(86,97,109,112,105,114,101,32,70,97,110,103),
}
elseif World3 then
MaterialList = {string.char(83,99,114,97,112,32,77,101,116,97,108),string.char(68,101,109,111,110,105,99,32,87,105,115,112),string.char(67,111,110,106,117,114,101,100,32,67,111,99,111,97),string.char(68,114,97,103,111,110,32,83,99,97,108,101),string.char(71,117,110,112,111,119,100,101,114),string.char(70,105,115,104,32,84,97,105,108),string.char(77,105,110,105,32,84,117,115,107),
}
end
DungeonTables = {string.char(70,108,97,109,101),string.char(73,99,101),string.char(81,117,97,107,101),string.char(76,105,103,104,116),string.char(68,97,114,107),string.char(83,116,114,105,110,103),string.char(82,117,109,98,108,101),string.char(77,97,103,109,97),string.char(72,117,109,97,110,58,32,66,117,100,100,104,97),string.char(83,97,110,100),string.char(66,105,114,100,58,32,80,104,111,101,110,105,120),string.char(68,111,117,103,104),
}
RenMon = {string.char(83,110,111,119,32,76,117,114,107,101,114),string.char(65,114,99,116,105,99,32,87,97,114,114,105,111,114),string.char(72,105,100,100,101,110,32,75,101,121),string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108),
}
CursedTables = {string.char(72,101,108,108,39,115,32,77,101,115,115,101,110,103,101,114),string.char(72,101,97,118,101,110,39,115,32,71,117,97,114,100,105,97,110),
Mob =string.char(77,121,116,104,111,108,111,103,105,99,97,108,32,80,105,114,97,116,101),
Mob2 =string.char(67,117,114,115,101,100,32,83,107,101,108,101,116,111,110),
Mob3 =string.char(67,117,114,115,101,100,32,83,107,101,108,101,116,111,110),
}
Past = {string.char(80,97,114,116),string.char(83,112,97,119,110,76,111,99,97,116,105,111,110),string.char(84,101,114,114,97,105,110),string.char(87,101,100,103,101,80,97,114,116),string.char(77,101,115,104,80,97,114,116),
}
BartMon = {string.char(83,119,97,110,32,80,105,114,97,116,101),string.char(74,101,114,101,109,121),
}
CitizenTable = {string.char(70,111,114,101,115,116,32,80,105,114,97,116,101),string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116),
}
Human_v3_Mob = {string.char(70,97,106,105,116,97),string.char(74,101,114,101,109,121),string.char(68,105,97,109,111,110,100),
}
AllBoats = {string.char(66,101,97,115,116,32,72,117,110,116,101,114),string.char(76,97,110,116,101,114,110),string.char(71,117,97,114,100,105,97,110),string.char(71,114,97,110,100,32,66,114,105,103,97,100,101),string.char(68,105,110,103,104,121),string.char(83,108,111,111,112),string.char(84,104,101,32,83,101,110,116,105,110,101,108),
}
mastery1 = {string.char(67,111,111,107,105,101,32,67,114,97,102,116,101,114)}
mastery2 = {string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110)}
PosMsList = {
[string.char(80,105,114,97,116,101,32,77,105,108,108,105,111,110,97,105,114,101)] = CFrame.new(-712.8272705078125, 98.577049255371094, 5711.9541015625),
[string.char(80,105,115,116,111,108,32,66,105,108,108,105,111,110,97,105,114,101)] = CFrame.new(-723.43316650390625, 147.42906188964844, 5931.9931640625),
[string.char(68,114,97,103,111,110,32,67,114,101,119,32,87,97,114,114,105,111,114)] = CFrame.new(7021.50439453125, 55.762702941894531, -730.12908935546875),
[string.char(68,114,97,103,111,110,32,67,114,101,119,32,65,114,99,104,101,114)] = CFrame.new(6625, 378, 244),
[string.char(70,101,109,97,108,101,32,73,115,108,97,110,100,101,114)] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
[string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116)] = CFrame.new(4902, 670, 39),
[string.char(77,97,114,105,110,101,32,67,111,109,109,111,100,111,114,101)] = CFrame.new(2401, 123, -7589),
[string.char(77,97,114,105,110,101,32,82,101,97,114,32,65,100,109,105,114,97,108)] = CFrame.new(3588, 229, -7085),
[string.char(70,105,115,104,109,97,110,32,82,97,105,100,101,114)] = CFrame.new(-10941, 332, -8760),
[string.char(70,105,115,104,109,97,110,32,67,97,112,116,97,105,110)] = CFrame.new(-11035, 332, -9087),
[string.char(70,111,114,101,115,116,32,80,105,114,97,116,101)] = CFrame.new(-13446, 413, -7760),
[string.char(77,121,116,104,111,108,111,103,105,99,97,108,32,80,105,114,97,116,101)] = CFrame.new(-13510, 584, -6987),
[string.char(74,117,110,103,108,101,32,80,105,114,97,116,101)] = CFrame.new(-11778, 426, -10592),
[string.char(77,117,115,107,101,116,101,101,114,32,80,105,114,97,116,101)] = CFrame.new(-13282, 496, -9565),
[string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110)] = CFrame.new(-8764, 142, 5963),
[string.char(76,105,118,105,110,103,32,90,111,109,98,105,101)] = CFrame.new(-10227, 421, 6161),
[string.char(68,101,109,111,110,105,99,32,83,111,117,108)] = CFrame.new(-9579, 6, 6194),
[string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121)] = CFrame.new(-9579, 6, 6194),
[string.char(80,101,97,110,117,116,32,83,99,111,117,116)] = CFrame.new(-1993, 187, -10103),
[string.char(80,101,97,110,117,116,32,80,114,101,115,105,100,101,110,116)] = CFrame.new(-2215, 159, -10474),
[string.char(73,99,101,32,67,114,101,97,109,32,67,104,101,102)] = CFrame.new(-877, 118, -11032),
[string.char(73,99,101,32,67,114,101,97,109,32,67,111,109,109,97,110,100,101,114)] = CFrame.new(-877, 118, -11032),
[string.char(67,111,111,107,105,101,32,67,114,97,102,116,101,114)] = CFrame.new(-2021, 38, -12028),
[string.char(67,97,107,101,32,71,117,97,114,100)] = CFrame.new(-2024, 38, -12026),
[string.char(66,97,107,105,110,103,32,83,116,97,102,102)] = CFrame.new(-1932, 38, -12848),
[string.char(72,101,97,100,32,66,97,107,101,114)] = CFrame.new(-1932, 38, -12848),
[string.char(67,111,99,111,97,32,87,97,114,114,105,111,114)] = CFrame.new(95, 73, -12309),
[string.char(67,104,111,99,111,108,97,116,101,32,66,97,114,32,66,97,116,116,108,101,114)] = CFrame.new(647, 42, -12401),
[string.char(83,119,101,101,116,32,84,104,105,101,102)] = CFrame.new(116, 36, -12478),
[string.char(67,97,110,100,121,32,82,101,98,101,108)] = CFrame.new(47, 61, -12889),
_0x6336 = CFrame.new(5251, 5, 1111),
}
Remotes = {
RFJobsRemoteFunction = replicated.Modules.Net[string.char(82,70,47,74,111,98,115,82,101,109,111,116,101,70,117,110,99,116,105,111,110)],
RFCraft = replicated:WaitForChild(string.char(77,111,100,117,108,101,115)):WaitForChild(string.char(78,101,116)):WaitForChild(string.char(82,70,47,67,114,97,102,116)),
}
EquipWeapon = function(p1)
if not p1 then
return
end
if plr.Backpack:FindFirstChild(p1) then
plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(p1))
end
end
weaponSc = function(p2)
for _0xFD54, child in pairs(plr.Backpack:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.ToolTip == p2 then
EquipWeapon(child.Name)
end
end
end
Attack = {}
Attack.__index = Attack
Attack.Alive = function(p3)
if not p3 then
return false
end
local _0xEABC = p3:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0x1327 = p3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0xEABC ~= nil and _0xEABC.Health > 0 and _0x1327 ~= nil
end
Attack.Pos = function(p4, p5)
return (Root.Position - p4.Position).Magnitude <= p5
end
Attack.Dist = function(p6, p7)
local _0x1327 = p6 and p6:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0x1327 and (Root.Position - _0x1327.Position).Magnitude <= p7 or false
end
Attack.DistH = function(p8, p9)
local _0x1327 = p8 and p8:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0x1327 and (Root.Position - _0x1327.Position).Magnitude > p9 or false
end
Attack.Kill = function(p10, p11)
if p10 and p11 then
local _0x1327 = p10:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
if not p10:GetAttribute(string.char(76,111,99,107,101,100)) then
p10:SetAttribute(string.char(76,111,99,107,101,100), _0x1327.CFrame)
end
PosMon = p10:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
EquipWeapon(_G.SelectWeapon)
local _0xDE5F = game.Players.LocalPlayer.Character:FindFirstChildOfClass(string.char(84,111,111,108))
if (_0xDE5F and _0xDE5F:FindFirstChild(string.char(84,111,111,108,84,105,112)) and _0xDE5F.ToolTip or"") ==string.char(66,108,111,120,32,70,114,117,105,116)then
_tp(_0x1327.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(0, math.rad(90), 0))
else
_tp(_0x1327.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, math.rad(180), 0))
end
if RandomCFrame then
task.wait(0.5)
_tp(_0x1327.CFrame * CFrame.new(0, 30, 25))
task.wait(0.5)
_tp(_0x1327.CFrame * CFrame.new(25, 30, 0))
task.wait(0.5)
_tp(_0x1327.CFrame * CFrame.new(-25, 30, 0))
task.wait(0.5)
_tp(_0x1327.CFrame * CFrame.new(0, 30, 25))
task.wait(0.5)
_tp(_0x1327.CFrame * CFrame.new(-25, 30, 0))
end
end
end
Attack.Kill2 = function(p12, p13)
if p12 and p13 then
if not p12:GetAttribute(string.char(76,111,99,107,101,100)) then
p12:SetAttribute(string.char(76,111,99,107,101,100), p12.HumanoidRootPart.CFrame)
end
PosMon = p12:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
EquipWeapon(_G.SelectWeapon)
local _0xDE5F = game.Players.LocalPlayer.Character:FindFirstChildOfClass(string.char(84,111,111,108))
if (_0xDE5F and _0xDE5F:FindFirstChild(string.char(84,111,111,108,84,105,112)) and _0xDE5F.ToolTip or"") ==string.char(66,108,111,120,32,70,114,117,105,116)then
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(0, math.rad(90), 0))
else
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(0, 10, 8) * CFrame.Angles(0, math.rad(180), 0))
end
if RandomCFrame then
task.wait(0.1)
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
task.wait(0.1)
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
task.wait(0.1)
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
task.wait(0.1)
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
task.wait(0.1)
_tp(p12.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
end
end
end
Attack.KillSea = function(p14, p15)
if p14 and p15 then
if not p14:GetAttribute(string.char(76,111,99,107,101,100)) then
p14:SetAttribute(string.char(76,111,99,107,101,100), p14.HumanoidRootPart.CFrame)
end
PosMon = p14:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
EquipWeapon(_G.SelectWeapon)
local _0xDE5F = game.Players.LocalPlayer.Character:FindFirstChildOfClass(string.char(84,111,111,108))
if (_0xDE5F and _0xDE5F:FindFirstChild(string.char(84,111,111,108,84,105,112)) and _0xDE5F.ToolTip or"") ==string.char(66,108,111,120,32,70,114,117,105,116)then
_tp(p14.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(0, math.rad(90), 0))
else
notween(p14.HumanoidRootPart.CFrame * CFrame.new(0, 50, 8))
task.wait(0.85)
notween(p14.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0))
task.wait(1)
end
end
end
Attack.Sword = function(p16, p17)
if p16 and p17 then
if not p16:GetAttribute(string.char(76,111,99,107,101,100)) then
p16:SetAttribute(string.char(76,111,99,107,101,100), p16.HumanoidRootPart.CFrame)
end
PosMon = p16:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
weaponSc(string.char(83,119,111,114,100))
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
if RandomCFrame then
task.wait(0.1)
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
task.wait(0.1)
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
task.wait(0.1)
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
task.wait(0.1)
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
task.wait(0.1)
_tp(p16.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
end
end
end
Attack.Mas = function(p18, p19)
if p18 and p19 then
if not p18:GetAttribute(string.char(76,111,99,107,101,100)) then
p18:SetAttribute(string.char(76,111,99,107,101,100), p18.HumanoidRootPart.CFrame)
end
PosMon = p18:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
if p18.Humanoid.Health <= HealthM then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
_tp(p18.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
local _0x0FBD = _G.SelectedMasterySkills
if type(_0x0FBD) ==string.char(115,116,114,105,110,103)then
_0x0FBD = { _0x0FBD }
elseif type(_0x0FBD) ~=string.char(116,97,98,108,101)then
_0x0FBD = {string.char(90),string.char(88),string.char(67),string.char(86),string.char(70),
}
end
for k, SelectedMasterySkill in pairs(_0x0FBD) do
if type(k) ==string.char(110,117,109,98,101,114)then
if type(SelectedMasterySkill) ==string.char(115,116,114,105,110,103)then
Useskills(string.char(66,108,111,120,32,70,114,117,105,116), SelectedMasterySkill)
continue
end
end
if type(k) ==string.char(115,116,114,105,110,103)and SelectedMasterySkill == true then
Useskills(string.char(66,108,111,120,32,70,114,117,105,116), k)
end
end
else
weaponSc(string.char(77,101,108,101,101))
_tp(p18.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
end
end
end
Attack.Masgun = function(p20, p21)
if p20 and p21 then
if not p20:GetAttribute(string.char(76,111,99,107,101,100)) then
p20:SetAttribute(string.char(76,111,99,107,101,100), p20.HumanoidRootPart.CFrame)
end
PosMon = p20:GetAttribute(string.char(76,111,99,107,101,100)).Position
BringEnemy()
if p20.Humanoid.Health <= HealthM then
weaponSc(string.char(71,117,110))
_tp(p20.HumanoidRootPart.CFrame * CFrame.new(0, 35, 8))
local _0x0FBD = _G.SelectedMasterySkills
if type(_0x0FBD) ==string.char(115,116,114,105,110,103)then
_0x0FBD = { _0x0FBD }
elseif type(_0x0FBD) ~=string.char(116,97,98,108,101)then
_0x0FBD = {string.char(90),string.char(88),string.char(67),string.char(86),string.char(70),
}
end
for k, SelectedMasterySkill in pairs(_0x0FBD) do
if type(k) ==string.char(110,117,109,98,101,114)then
if type(SelectedMasterySkill) ==string.char(115,116,114,105,110,103)then
Useskills(string.char(71,117,110), SelectedMasterySkill)
continue
end
end
if type(k) ==string.char(115,116,114,105,110,103)and SelectedMasterySkill == true then
Useskills(string.char(71,117,110), k)
end
end
else
weaponSc(string.char(77,101,108,101,101))
_tp(p20.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
end
end
end
statsSetings = function(p22, p23)
if p22 ~=string.char(77,101,108,101,101)then
if p22 ~=string.char(68,101,102,101,110,115,101)then
if p22 ~=string.char(83,119,111,114,100)then
if p22 ~=string.char(71,117,110)then
if p22 ==string.char(68,101,118,105,108)and plr.Data.Points.Value ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,100,100,80,111,105,110,116),string.char(68,101,109,111,110,32,70,114,117,105,116), p23)
end
elseif plr.Data.Points.Value ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,100,100,80,111,105,110,116),string.char(71,117,110), p23)
end
elseif plr.Data.Points.Value ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,100,100,80,111,105,110,116),string.char(83,119,111,114,100), p23)
end
elseif plr.Data.Points.Value ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,100,100,80,111,105,110,116),string.char(68,101,102,101,110,115,101), p23)
end
elseif plr.Data.Points.Value ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,100,100,80,111,105,110,116),string.char(77,101,108,101,101), p23)
end
end
do
BringEnemy = function(p24)
if not _B then
return
end
if not p24 then
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
local _0xD727 = math.huge
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
local _0xEABC = child:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC1F1 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xEABC and _0xC1F1 and _0xEABC.Health > 0 then
local _0xA95F = (_0xC1F1.Position - _0x1327.Position).Magnitude
if _0xA95F < _0xD727 then
_0xD727 = _0xA95F
p24 = child
end
end
end
if not p24 then
return
end
end
local _0xB9CF = false
Mobs = function(p25)
local _0xEABC = p25:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x1327 = p25:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0xEABC and _0x1327 and _0xEABC.Health > 0, _0x1327, _0xEABC
end
Network = function(p26)
if isnetworkowner then
return isnetworkowner(p26)
end
return p26.ReceiveAge == 0 and not p26.Anchored and p26.Velocity.Magnitude > 0
end
pcall(function()
if sethiddenproperty then
sethiddenproperty(plr,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
end
local _0xA9DD = p24.HumanoidRootPart.Position
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
if child ~= p24 then
local _0x515B, _0x1DF4, _0x5C07 = Mobs(child)
if _0x515B and child.Name == p24.Name then
local _0xA95F = (_0x1DF4.Position - _0xA9DD).Magnitude
if _0xA95F <= 3000 then
if not _0x1DF4:FindFirstChild(string.char(66,111,100,121,86,101,108,111,99,105,116,121)) then
local _0xF958 = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121))
_0xF958.Name =string.char(66,111,100,121,86,101,108,111,99,105,116,121)_0xF958.MaxForce = Vector3.new(1e9, 1e9, 1e9)
_0xF958.Velocity = Vector3.zero
_0xF958.Parent = _0x1DF4
end
if _0xA95F <= 10 then
_0xB9CF = true
end
if not _0xB9CF and Network(_0x1DF4) then
_0x1DF4.CFrame = CFrame.new(_0xA9DD)
end
_0x1DF4.CanCollide = false
_0x5C07.WalkSpeed = 0
_0x5C07.JumpPower = 0
end
end
end
end
if p24 and p24:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
p24.HumanoidRootPart.CanCollide = false
p24.Humanoid.WalkSpeed = 0
p24.Humanoid.JumpPower = 0
end
end)
end
end
IsSkillReady = function(p27, p28)
local _0x0BB3 = game.Players.LocalPlayer
local _0xF1D9
if _0x0BB3.Character then
for _0xFD54, child in pairs(_0x0BB3.Character:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.ToolTip == p27 then
_0xF1D9 = child.Name
break
end
end
end
if not _0xF1D9 and _0x0BB3.Backpack then
for _0xFD54, child in pairs(_0x0BB3.Backpack:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.ToolTip == p27 then
_0xF1D9 = child.Name
break
end
end
end
if _0xF1D9 then
if _0x0BB3.PlayerGui:FindFirstChild(string.char(77,97,105,110)) then
if _0x0BB3.PlayerGui.Main:FindFirstChild(string.char(83,107,105,108,108,115)) then
local _0x8FF9 = _0x0BB3.PlayerGui.Main.Skills:FindFirstChild(_0xF1D9)
if _0x8FF9 then
local _0x2FF4 = _0x8FF9:FindFirstChild(p28)
if _0x2FF4 then
local _0xBED4 = _0x2FF4:FindFirstChild(string.char(76,111,99,107)) or _0x2FF4:FindFirstChild(string.char(76,111,99,107,101,100))
if _0xBED4 and _0xBED4.Visible then
return false
end
local _0x6C91 = _0x2FF4:FindFirstChild(string.char(67,111,111,108,100,111,119,110))
if
_0x6C91
and _0x6C91.Visible
and (_0x6C91.Size.X.Scale > 0.05 or _0x6C91.AbsoluteSize.X > 5)
then
return false
end
return true
end
end
end
end
end
return true
end
Useskills = function(p29, p30)
if p29 ==string.char(77,101,108,101,101)then
weaponSc(string.char(77,101,108,101,101))
if not IsSkillReady(p29, p30) then
return
end
vim1:SendKeyEvent(true, p30, false, game)
task.wait(0.04)
vim1:SendKeyEvent(false, p30, false, game)
task.wait(0.04)
elseif p29 ==string.char(83,119,111,114,100)then
weaponSc(string.char(83,119,111,114,100))
if not IsSkillReady(p29, p30) then
return
end
vim1:SendKeyEvent(true, p30, false, game)
task.wait(0.04)
vim1:SendKeyEvent(false, p30, false, game)
task.wait(0.04)
elseif p29 ==string.char(66,108,111,120,32,70,114,117,105,116)then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
if not IsSkillReady(p29, p30) then
return
end
vim1:SendKeyEvent(true, p30, false, game)
task.wait(0.04)
vim1:SendKeyEvent(false, p30, false, game)
task.wait(0.04)
elseif p29 ==string.char(71,117,110)then
weaponSc(string.char(71,117,110))
if not IsSkillReady(p29, p30) then
return
end
vim1:SendKeyEvent(true, p30, false, game)
task.wait(0.04)
vim1:SendKeyEvent(false, p30, false, game)
task.wait(0.04)
end
if p29 ==string.char(110,105,108)and p30 ==string.char(89)then
vim1:SendKeyEvent(true,string.char(89), false, game)
task.wait(0.04)
vim1:SendKeyEvent(false,string.char(89), false, game)
task.wait(0.04)
end
end
do
local _0x9594 = getrawmetatable(game)
local _0x0B24 = _0x9594.__namecall
setreadonly(_0x9594, false)
_0x9594.__namecall = newcclosure(function(...)
local _0xD1D5 = getnamecallmethod()
local _0x88D0 = { ... }
if
tostring(_0xD1D5) ~=string.char(70,105,114,101,83,101,114,118,101,114)or tostring(_0x88D0[1]) ~=string.char(82,101,109,111,116,101,69,118,101,110,116)or not (
tostring(_0x88D0[2]) ~=string.char(116,114,117,101)and tostring(_0x88D0[2]) ~=string.char(102,97,108,115,101)and not (
(not _G.FarmMastery_G or SoulGuitar)
and not (
_G.FarmMastery_Dev
or _G.FarmBlazeEM
or _G.Prehis_Skills
or _G.SeaBeast1
or _G.FishBoat
or _G.PGB
or _G.Leviathan1
or _G.Complete_Trials
or not (
(not _G.AimMethod or ABmethod ~=string.char(65,105,109,32,80,108,97,121,101,114))
and (not _G.AimMethod or ABmethod ~=string.char(78,101,97,114,101,115,116,32,65,105,109))
)
)
)
)
then
return _0x0B24(...)
end
_0x88D0[2] = MousePos
return _0x0B24(unpack(_0x88D0))
end)
end
GetNearestEnemy = function(p31)
local _0xCFDB = plr.Character
_0xCFDB = _0xCFDB and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xCFDB then
return nil
end
local _0x42C5
local _0xE442
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
if child:IsA(string.char(77,111,100,101,108)) then
if typeof(p31) ==string.char(116,97,98,108,101)and table.find(p31, child.Name) or child.Name == p31 then
local _0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xEABC and _0x1327 and _0xEABC.Health > 0 then
local _0xA95F = (_0x1327.Position - _0xCFDB.Position).Magnitude
if not _0xE442 or _0xA95F < _0xE442 then
_0x42C5 = child
_0xE442 = _0xA95F
end
end
end
end
end
return _0x42C5, _0xE442
end
do
GetConnectionEnemies = function(p32)
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
search = function(p33)
local _0x86BE
local _0x6484
for _0xFD54, child in ipairs(p33:GetChildren()) do
if child:IsA(string.char(77,111,100,101,108)) then
local _0xEABC, _0xC1F1, _0xA95F
if typeof(p32) ==string.char(116,97,98,108,101)then
if table.find(p32, child.Name) then
_0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if not _0xEABC or not (_0xEABC.Health > 0) then
continue
end
_0xC1F1 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
_0xA95F = _0x1327
and _0xC1F1
and (_0xC1F1.Position - _0x1327.Position).Magnitude
or math.huge
if _0x86BE and not (_0xA95F < _0x6484) then
continue
end
_0x86BE = child
_0x6484 = _0xA95F
continue
end
end
if child.Name == p32 then
_0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if _0xEABC and _0xEABC.Health > 0 then
_0xC1F1 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
_0xA95F = _0x1327
and _0xC1F1
and (_0xC1F1.Position - _0x1327.Position).Magnitude
or math.huge
if not _0x86BE or _0xA95F < _0x6484 then
_0x86BE = child
_0x6484 = _0xA95F
end
end
end
end
end
return _0x86BE
end
local _0xF095 = search(workspace.Enemies) or search(replicated)
return _0xF095
end
end
do
LowCpu = function()
local _0x321E = game.Workspace.Terrain
_0x321E.WaterWaveSize = 0
_0x321E.WaterWaveSpeed = 0
_0x321E.WaterReflectance = 0
_0x321E.WaterTransparency = 0
game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
game.Lighting.Brightness = 0
settings().Rendering.QualityLevel =string.char(76,101,118,101,108,48,49)for _0xFD54, descendant in pairs(game:GetDescendants()) do
if
descendant:IsA(string.char(80,97,114,116))
or descendant:IsA(string.char(85,110,105,111,110))
or descendant:IsA(string.char(67,111,114,110,101,114,87,101,100,103,101,80,97,114,116))
or descendant:IsA(string.char(84,114,117,115,115,80,97,114,116))
then
descendant.Material =string.char(80,108,97,115,116,105,99)descendant.Reflectance = 0
else
if not descendant:IsA(string.char(68,101,99,97,108)) then
if not descendant:IsA(string.char(84,101,120,116,117,114,101)) then
if descendant:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114)) or descendant:IsA(string.char(84,114,97,105,108)) then
descendant.Lifetime = NumberRange.new(0)
elseif descendant:IsA(string.char(69,120,112,108,111,115,105,111,110)) then
descendant.BlastPressure = 1
descendant.BlastRadius = 1
elseif
descendant:IsA(string.char(70,105,114,101))
or descendant:IsA(string.char(83,112,111,116,76,105,103,104,116))
or descendant:IsA(string.char(83,109,111,107,101))
or descendant:IsA(string.char(83,112,97,114,107,108,101,115))
then
descendant.Enabled = false
elseif descendant:IsA(string.char(77,101,115,104,80,97,114,116)) then
descendant.Material =string.char(80,108,97,115,116,105,99)descendant.Reflectance = 0
descendant.TextureID = 10385902758728956
end
continue
end
end
descendant.Transparency = 1
end
end
for _0xFD54, child in pairs(game.Lighting:GetChildren()) do
if
child:IsA(string.char(66,108,117,114,69,102,102,101,99,116))
or child:IsA(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116))
or child:IsA(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116))
or child:IsA(string.char(66,108,111,111,109,69,102,102,101,99,116))
or child:IsA(string.char(68,101,112,116,104,79,102,70,105,101,108,100,69,102,102,101,99,116))
then
child.Enabled = false
end
end
end
end
CheckF = function()
if not (GetBP(string.char(68,114,97,103,111,110,45,68,114,97,103,111,110)) or GetBP(string.char(71,97,115,45,71,97,115))) then
if not GetBP(string.char(89,101,116,105,45,89,101,116,105)) then
if not (GetBP(string.char(75,105,116,115,117,110,101,45,75,105,116,115,117,110,101)) or GetBP(string.char(84,45,82,101,120,45,84,45,82,101,120))) then
return
end
end
end
return true
end
CheckBoat = function()
for _0xFD54, child in pairs(workspace.Boats:GetChildren()) do
if tostring(child.Owner.Value) == tostring(plr.Name) then
return child
end
end
return false
end
do
CheckEnemiesBoat = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(70,105,115,104,66,111,97,116)and child:FindFirstChild(string.char(72,101,97,108,116,104)).Value > 0 then
return true
end
end
return false
end
end
CheckPirateGrandBrigade = function()
local _0xC359, _0x6D31, _0xDCF8 = pairs(workspace.Enemies:GetChildren())
local _0xF2CA = _0xB921(_0xC359, _0x6D31, _0xDCF8)
local _0x66F4
repeat
local _0x00B1 = table.pack(_0xF2CA())
if not _0x00B1[1] then
return false
end
_0x66F4 = _0x00B1[3]
until _0x66F4.Name ==string.char(80,105,114,97,116,101,71,114,97,110,100,66,114,105,103,97,100,101)or _0x66F4.Name ==string.char(80,105,114,97,116,101,66,114,105,103,97,100,101)while true do
local _0xCB1F
repeat
if _0x66F4:FindFirstChild(string.char(72,101,97,108,116,104)).Value > 0 then
return true
end
_0xCB1F = nil
while true do
local _0xBA18 = table.pack(_0xF2CA())
if not _0xBA18[1] then
_0xCB1F = 1
break
end
_0x66F4 = _0xBA18[3]
if _0x66F4.Name ==string.char(80,105,114,97,116,101,71,114,97,110,100,66,114,105,103,97,100,101)then
_0xCB1F = 2
break
elseif _0x66F4.Name ~=string.char(80,105,114,97,116,101,66,114,105,103,97,100,101)then
continue
end
break
end
if _0xCB1F == 1 then
return false
end
until _0xCB1F ~= 2
end
end
CheckShark = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(83,104,97,114,107)and Attack.Alive(child) then
return true
end
end
return false
end
CheckTerrorShark = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(84,101,114,114,111,114,115,104,97,114,107)and Attack.Alive(child) then
return true
end
end
return false
end
do
CheckPiranha = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(80,105,114,97,110,104,97)and Attack.Alive(child) then
return true
end
end
return false
end
end
CheckFishCrew = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if (child.Name ==string.char(70,105,115,104,32,67,114,101,119,32,77,101,109,98,101,114)or child.Name ==string.char(72,97,117,110,116,101,100,32,67,114,101,119,32,77,101,109,98,101,114)) and Attack.Alive(child) then
return true
end
end
return false
end
CheckHauntedCrew = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ~=string.char(72,97,117,110,116,101,100,32,67,114,101,119,32,77,101,109,98,101,114)then
continue
end
if Attack.Alive(child) then
return true
end
end
return false
end
CheckSeaBeast = function()
if workspace.SeaBeasts:FindFirstChild(string.char(83,101,97,66,101,97,115,116,49)) then
return true
end
return false
end
CheckLeviathan = function()
if workspace.SeaBeasts:FindFirstChild(string.char(76,101,118,105,97,116,104,97,110)) then
return true
end
return false
end
do
UpdStFruit = function()
local _0x7B7B, _0x0F88 = plr.Backpack:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0x0F88 do
StoreFruit = v:FindFirstChild(string.char(69,97,116,82,101,109,111,116,101), true)
if StoreFruit then
replicated.Remotes.CommF_:InvokeServer(string.char(83,116,111,114,101,70,114,117,105,116),
StoreFruit.Parent:GetAttribute(string.char(79,114,105,103,105,110,97,108,78,97,109,101)),
plr.Backpack:FindFirstChild(v.Name)
)
end
end
end
end
GetNearestFruit = function()
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return nil
end
local _0xB7C3
local _0x6C42
for _0xFD54, child in pairs(workspace:GetChildren()) do
if string.find(child.Name,string.char(70,114,117,105,116)) then
local _0x6188 = child:FindFirstChild(string.char(72,97,110,100,108,101))
if _0x6188 and _0x6188:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xA95F = (_0x6188.Position - _0x1327.Position).Magnitude
if not _0x6C42 or _0xA95F < _0x6C42 then
_0xB7C3 = _0x6188
_0x6C42 = _0xA95F
end
end
end
end
return _0xB7C3
end
do
collectFruits = function(p34)
if p34 then
local _0xCFDB = plr.Character
local _0x1327 = _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
for _0xFD54, child in pairs(workspace:GetChildren()) do
if string.find(child.Name,string.char(70,114,117,105,116)) then
local _0x6188 = child:FindFirstChild(string.char(72,97,110,100,108,101))
if _0x6188 then
_0x6188.CFrame = _0x1327.CFrame
end
end
end
end
end
end
Getmoon = function()
if World1 then
return Lighting.FantasySky.MoonTextureId
end
if World2 then
return Lighting.FantasySky.MoonTextureId
end
if World3 then
return Lighting.Sky.MoonTextureId
end
end
DropFruits = function()
local _0x7B7B, _0xA8EC = plr.Backpack:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0xA8EC do
if string.find(v.Name,string.char(70,114,117,105,116)) then
EquipWeapon(v.Name)
task.wait(0.1)
if plr.PlayerGui.Main.Dialogue.Visible == true then
plr.PlayerGui.Main.Dialogue.Visible = false
end
EquipWeapon(v.Name)
plr.Character:FindFirstChild(v.Name).EatRemote:InvokeServer(string.char(68,114,111,112))
end
end
for _0xFD54, child in pairs(plr.Character:GetChildren()) do
if string.find(child.Name,string.char(70,114,117,105,116)) then
EquipWeapon(child.Name)
task.wait(0.1)
if plr.PlayerGui.Main.Dialogue.Visible == true then
plr.PlayerGui.Main.Dialogue.Visible = false
end
EquipWeapon(child.Name)
plr.Character:FindFirstChild(child.Name).EatRemote:InvokeServer(string.char(68,114,111,112))
end
end
end
GetBP = function(p35)
return plr.Backpack:FindFirstChild(p35) or plr.Character:FindFirstChild(p35)
end
local _0x402B = {
t = 0,
_0x185E = nil,
}
GetInventoryList = function()
if _0x402B.data and tick() - _0x402B.t < 2 then
return _0x402B.data
end
local _0x7925
local _0x78C0, _0x22CD = pcall(function()
return replicated.Remotes.CommF_:InvokeServer(string.char(103,101,116,73,110,118,101,110,116,111,114,121))
end)
if _0x78C0 and type(_0x22CD) ==string.char(116,97,98,108,101)then
_0x7925 = _0x22CD
end
if not _0x7925 then
local _0xA290, _0xFD47 = pcall(function()
return replicated.Remotes.CommF_:InvokeServer(string.char(103,101,116,73,110,118,101,110,116,111,114,121,87,101,97,112,111,110,115))
end)
if _0xA290 and type(_0xFD47) ==string.char(116,97,98,108,101)then
_0x7925 = _0xFD47
end
end
local _0x185E = _0x7925 or {}
_0x402B.t = tick()
_0x402B.data = _0x185E
return _0x185E
end
GetIn = function(p36)
if not plr.Character:FindFirstChild(p36) then
if not plr.Backpack:FindFirstChild(p36) then
for _0xFD54, v in pairs(GetInventoryList()) do
if type(v) ==string.char(116,97,98,108,101)and v.Name == p36 then
return true
end
end
return false
end
end
return true
end
GetM = function(p37)
if p37 ==string.char(66,111,110,101,115)then
local _0x78C0, _0x22CD = pcall(function()
return replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(67,104,101,99,107))
end)
local _0x45F7 = _0x78C0 and tonumber(_0x22CD) or 0
return _0x45F7
end
local _0x78C0, _0x22CD = pcall(function()
local _0xCB6A = require(replicated.IdMap).Material[p37]
if _0xCB6A then
return require(replicated.Util.ItemReplication).Quantity.readClient(_0xCB6A)
end
end)
if _0x78C0 and tonumber(_0x22CD) then
return tonumber(_0x22CD)
end
for _0xFD54, v in pairs(GetInventoryList()) do
if type(v) ~=string.char(116,97,98,108,101)or v.Type ~=string.char(77,97,116,101,114,105,97,108)or v.Name ~= p37 then
continue
end
return v.Count
end
return 0
end
GetWP = function(p38)
local _0x78C0 = not plr.Character
if not _0x78C0 then
_0x78C0 = not plr.Character:FindFirstChild(p38)
end
if not _0x78C0 then
return true
end
if plr.Backpack then
if plr.Backpack:FindFirstChild(p38) then
return true
end
end
for _0xFD54, v in pairs(GetInventoryList()) do
if type(v) ==string.char(116,97,98,108,101)and v.Type ==string.char(83,119,111,114,100)and v.Name == p38 then
return true
end
end
return false
end
local _0xD5A5 = {
t = 0,
v = nil,
}
CDKProgress = function()
if _0xD5A5.v and tick() - _0xD5A5.t < 0.4 then
return _0xD5A5.v
end
local function _0xB342()
return replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(80,114,111,103,114,101,115,115))
end
local _0x78C0, _0x96E3 = pcall(_0xB342)
if _0x78C0 and type(_0x96E3) ==string.char(116,97,98,108,101)then
_0xD5A5.v = _0x96E3
_0xD5A5.t = tick()
end
return _0xD5A5.v
end
getgenv().CDKDoorOpenedAt = nil
CDKEnsureDoor = function()
if getgenv().CDKDoorOpenedAt then
return true
end
if tick() - (getgenv().CDKDoorTry or 0) < 1 then
return false
end
getgenv().CDKDoorTry = tick()
local _0x78C0, _0x22CD = pcall(function()
return replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(79,112,101,110,68,111,111,114))
end)
if not _0x78C0 or tostring(_0x22CD) ~=string.char(111,112,101,110,101,100)then
pcall(function()
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(79,112,101,110,68,111,111,114), true)
end)
return false
end
getgenv().CDKDoorOpenedAt = tick()
return true
end
getInfinity_Ability = function(p39, p40)
if not Root then
return
end
if p39 ==string.char(83,111,114,117)and p40 then
local _0xF298 = next
local _0xC7F1, _0x5EA6 = getgc()
for _0xFD54, v in _0xF298, _0xC7F1, _0x5EA6 do
if plr.Character.Soru and typeof(v) ==string.char(102,117,110,99,116,105,111,110)then
if getfenv(v).script == plr.Character.Soru then
local _0x89CC = next
local _0x0125, _0x2981 = getupvalues(v)
for _0xFD54, v2 in _0x89CC, _0x0125, _0x2981 do
if typeof(v2) ==string.char(116,97,98,108,101)then
repeat
task.wait(Sec)
v2.LastUse = 0
until plr.Character.Humanoid.Health <= 0
end
end
end
end
end
elseif p39 ==string.char(69,110,101,114,103,121)and p40 then
plr.Character.Energy.Changed:connect(function()
if p40 then
plr.Character.Energy.Value = Energy
end
end)
elseif p39 ==string.char(79,98,115,101,114,118,97,116,105,111,110)and p40 then
plr.VisionRadius.Value = math.huge
end
end
do
Hop = function()
pcall(function()
local _0xFD54
local _0x4009 = 1
local _0xD516, _0xBC38, _0xA855, _0x1A23, _0x1DB4, _0xCE80, _0xF58A, _0x87CE, _0x5014, _0xF085, _0xF298, _0x21D1, _0x46A3, _0x421C, _0x99CA, _0xE96E
while true do
if _0x4009 == 1 then
_0xD516 = math.random(1, math.random(40, 75))
_0xBC38 = 1
_0xA855 = 100
_0x1A23 = _0xD516 - _0xBC38
_0x4009 = 2
elseif _0x4009 == 2 then
_0x1DB4, _0xCE80, _0xF58A = _0xD516, 100, 1
if _0xF58A > 0 and _0x1DB4 <= _0xCE80 or _0xF58A <= 0 and _0x1DB4 >= _0xCE80 then
_0x87CE = _0x1DB4
_0x4009 = 5
else
_0x4009 = 4
end
elseif _0x4009 == 3 then
_0x1DB4 += _0xF58A
if _0xF58A > 0 and _0x1DB4 <= _0xCE80 or _0xF58A <= 0 and _0x1DB4 >= _0xCE80 then
_0x87CE = _0x1DB4
_0x4009 = 5
else
_0x4009 = 4
end
else
if _0x4009 == 4 then
return
end
if _0x4009 == 5 then
local _0xAC8C = _0xB921(next, replicated.__ServerBrowser:InvokeServer(_0x87CE), nil)
local _0x2552 = table.pack(_0xAC8C())
if _0x2552[1] then
_0x4009 = 6
else
_0x4009 = 3
end
elseif _0x4009 == 6 then
_0x5014 = t80_120_1[2]
_0xF085 = t80_120_1[3]
_0x4009 = 7
elseif _0x4009 == 7 then
if tonumber(_0xF085.Count) < 12 then
_0x4009 = 8
else
_0x4009 = 9
end
elseif _0x4009 == 8 then
TeleportService:TeleportToPlaceInstance(game.PlaceId, _0x5014)
_0x4009 = 9
elseif _0x4009 == 9 then
_0x46A3, _0x421C, _0x99CA = _0xF298, _0x21D1, nil
if type(_0x46A3) ==string.char(116,97,98,108,101)then
local _0xBA02 = getmetatable(_0x46A3)
if type(_0xBA02) ==string.char(116,97,98,108,101)and _0xBA02[string.char(95,95,105,116,101,114)] then
_0x46A3, _0x421C, _0x99CA = (_0xBA02[string.char(95,95,105,116,101,114)](_0x46A3))
else
_0x46A3, _0x421C, _0x99CA = next, _0x46A3, nil
end
end
_0x4009 = 10
elseif _0x4009 == 10 then
_0x5014, _0xF085 = (_0x46A3(_0x421C, _0x99CA))
if _0x5014 == nil then
_0x4009 = 11
else
_0x99CA = _0x5014
_0x4009 = 7
end
elseif _0x4009 == 11 then
_0x1A23 += _0xBC38
if _0xBC38 <= 0 then
_0x4009 = 15
else
_0x4009 = 12
end
elseif _0x4009 == 12 then
if _0x1A23 <= _0xA855 then
_0x4009 = 13
else
_0x4009 = 14
end
elseif _0x4009 == 13 then
_0xE96E = _0x1A23
_0x4009 = 17
else
if _0x4009 == 14 then
return
end
if _0x4009 == 15 then
if _0x1A23 >= _0xA855 then
_0x4009 = 16
else
_0x4009 = 18
end
elseif _0x4009 == 16 then
_0xE96E = _0x1A23
_0x4009 = 17
elseif _0x4009 == 17 then
_0x21D1 = replicated.__ServerBrowser:InvokeServer(_0xE96E)
_0xF298 = next
_0x4009 = 10
elseif _0x4009 == 18 then
return
end
end
end
end
end)
end
end
local _0x5C69 = Instance.new(string.char(80,97,114,116), workspace)
_0x5C69.Size = Vector3.new(1, 1, 1)
_0x5C69.Name =string.char(82,105,112,95,73,110,100,114,97)_0x5C69.Anchored = true
_0x5C69.CanCollide = false
_0x5C69.CanTouch = false
_0x5C69.Transparency = 1
for _0xFD54, child in ipairs(workspace:GetChildren()) do
if child.Name == _0x5C69.Name and child ~= _0x5C69 then
child:Destroy()
end
end
local _0x43E9 = {
Tween = nil,
Target = nil,
}
getgenv().LastTPCall = 0
task.spawn(function()
while task.wait() do
if _0x5C69 then
if _0x5C69.Parent == workspace then
if shouldTween then
getgenv().OnFarm = true
else
getgenv().OnFarm = false
end
continue
end
end
getgenv().OnFarm = false
end
end)
task.spawn(function()
local _0x0BB3 = game.Players.LocalPlayer
while true do
task.wait()
if not _0x0BB3.Character then
continue
end
if _0x0BB3.Character.PrimaryPart then
break
end
end
_0x5C69.CFrame = _0x0BB3.Character.PrimaryPart.CFrame
while task.wait() do
pcall(function()
if _0x5C69 then
if _0x5C69.Parent == workspace then
local _0x4EBF = _0x0BB3.Character and _0x0BB3.Character.PrimaryPart
if getgenv().OnFarm then
if not _G.WasOnFarm then
_G.WasOnFarm = true
end
local _0xCFDB
if not _0x4EBF then
_0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return
end
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = false
end
end
elseif (_0x4EBF.Position - _0x5C69.Position).Magnitude <= 200 then
_0x4EBF.CFrame = CFrame.new(_0x5C69.Position)
_0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return
end
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = false
end
end
elseif _0x43E9.Tween then
_0x43E9.Tween:Cancel()
_0x43E9.Target = nil
_0x5C69.CFrame = _0x4EBF.CFrame
_0xCFDB = _0x0BB3.Character
if _0xCFDB then
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = false
end
end
end
else
_0x43E9.Target = nil
_0x5C69.CFrame = _0x4EBF.CFrame
_0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return
end
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = false
end
end
end
else
local _0xCFDB
if _0x43E9.Tween and _0x43E9.Tween.PlaybackState == Enum.PlaybackState.Playing then
_0x43E9.Tween:Cancel()
_0x43E9.Target = nil
if _0x4EBF then
_0x5C69.CFrame = _0x4EBF.CFrame
end
if _G.WasOnFarm then
_G.WasOnFarm = false
_0xCFDB = _0x0BB3.Character
if _0xCFDB then
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = true
end
end
end
end
else
_0x43E9.Target = nil
if _0x4EBF then
_0x5C69.CFrame = _0x4EBF.CFrame
end
if _G.WasOnFarm then
_G.WasOnFarm = false
_0xCFDB = _0x0BB3.Character
if _0xCFDB then
for _0xFD54, child in pairs(_0xCFDB:GetChildren()) do
if child:IsA(string.char(66,97,115,101,80,97,114,116)) then
child.CanCollide = true
end
end
end
end
end
end
return
end
end
end)
end
end)
local _0xB875 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x0BB3 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
sea1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
sea2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
sea3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
local _0xFCB6 = {
[string.char(84,119,101,101,110,32,83,112,101,101,100)] = 200,
[string.char(66,121,112,97,115,115,32,84,101,108,101,112,111,114,116)] = false,
[string.char(85,112,32,89)] = false,
[string.char(85,112,32,89,32,87,104,101,110,32,76,111,119,32,72,101,97,108,116,104)] = false,
[string.char(83,97,109,101,32,89)] = false,
}
local _0xD51B = CFrame.new(
10641.0918,
-1953.92981,
9825.07031,
-0.652825892,
-9.2805891e-08,
-0.757508039,
-2.73638356e-08,
1,
-9.89323823e-08,
0.757508039,
-4.38572947e-08,
-0.652825892
)
local _0x0F42 = CFrame.new(
-16271.126,
25.5847301,
1371.98755,
0.999396622,
-5.78875188e-08,
-0.0347310975,
5.52972779e-08,
1,
-8.7544322e-08,
0.034731105,
8.28877091e-08,
0.999396741
)
Convert_CFrame = function(p41)
if not p41 then
return
end
if typeof(p41) ==string.char(86,101,99,116,111,114,51)then
return CFrame.new(p41)
end
if typeof(p41) ==string.char(67,70,114,97,109,101)then
return p41
end
if typeof(p41) ==string.char(77,111,100,101,108)then
return p41:GetPivot()
end
if p41.CFrame then
return p41.CFrame
end
return nil
end
GetDistance = function(p42, p43, p44)
if p42 == nil then
return 9e9
end
local _0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return 9e9
end
local _0xEABC = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if not _0xEABC or _0xEABC.Health <= 0 then
return 9e9
end
if p43 == nil then
p43 = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not p43 then
return 9e9
end
end
local _0x981B = Convert_CFrame(p42)
local _0x3B8B = Convert_CFrame(p43)
if p44 then
return (Vector3.new(_0x981B.X, 0, _0x981B.Z) - Vector3.new(_0x3B8B.X, 0, _0x3B8B.Z)).Magnitude
end
return (_0x981B.Position - _0x3B8B.Position).Magnitude
end
InArea = function(p45)
local _0xA72D = workspace:FindFirstChild(string.char(95,87,111,114,108,100,79,114,105,103,105,110))
if not _0xA72D then
return {
_0xF1D9 ="",
}
end
local _0x5FB9 = Convert_CFrame(p45)
local _0x7B7B, _0xBE9D = _0xA72D.Locations:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0xBE9D do
if v:FindFirstChild(string.char(77,101,115,104)) and (_0x5FB9.Position - v.Position).Magnitude <= v.Mesh.Scale.X then
return v
end
end
return {
_0xF1D9 ="",
}
end
GetSpawnPoint = function(p46)
local _0xE7B9 = workspace:FindFirstChild(string.char(95,87,111,114,108,100,79,114,105,103,105,110))
and workspace._WorldOrigin:FindFirstChild(string.char(80,108,97,121,101,114,83,112,97,119,110,115))
and workspace._WorldOrigin.PlayerSpawns:FindFirstChild(string.char(80,105,114,97,116,101,115))
if not _0xE7B9 then
return
end
local _0x7B7B, _0x4D2B = _0xE7B9:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0x4D2B do
if not v:FindFirstChild(string.char(80,97,114,116)) then
continue
end
if (v.Part.Position - p46.Position).Magnitude <= 2500 then
return v
end
end
end
CheckLegendaryItems = function()
CheckItem = function(p47)
local _0x7B7B, _0xD8CB = _0x0BB3.Backpack:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0xD8CB do
if v:IsA(string.char(84,111,111,108)) and (v.Name == p47 or string.find(v.Name, p47)) then
return v
end
end
local _0x4F23, _0x9B30 = _0x0BB3.Character:GetChildren()
for _0xFD54, v in next, _0x4F23, _0x9B30 do
if v:IsA(string.char(84,111,111,108)) and (v.Name == p47 or string.find(v.Name, p47)) then
return v
end
end
end
if
CheckItem(string.char(71,111,100,39,115,32,67,104,97,108,105,99,101))
or CheckItem(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115))
or CheckItem(string.char(83,119,101,101,116,32,67,104,97,108,105,99,101))
or CheckItem(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101))
or CheckItem(string.char(70,108,111,119,101,114,49))
then
return true
end
return false
end
WaitForHumanoid = function()
local _0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return nil
end
local _0xEABC = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if _0xEABC then
return _0xEABC
end
local _0x4C19 = tick() + 5
while tick() < _0x4C19 do
local _0xAF5E = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if _0xAF5E then
return _0xAF5E
end
task.wait(0.1)
end
return nil
end
checkinventory = function(p48)
if p48 then
for _0xFD54, v in pairs(GetInventoryList()) do
if type(v) ~=string.char(116,97,98,108,101)then
continue
end
if v.Name == p48 then
return true
end
end
end
return false
end
getdis = function(p49, p50)
local _0x2418 = p50 or _0x0BB3.Character.HumanoidRootPart.CFrame
return (CFrame.new(p49.X, _0x2418.Y, p49.Z).Position - CFrame.new(_0x2418.X, _0x2418.Y, _0x2418.Z).Position).Magnitude
end
CanBypassTeleport = function(p51)
local _0xF1D9 = InArea(p51).Name
if _0xF1D9 ==""then
return false
end
if
not (not _0xFCB6[string.char(66,121,112,97,115,115,32,84,101,108,101,112,111,114,116)] or _0xF1D9:find(string.char(68,105,109,101,110,115,105,111,110)) or _0xF1D9:find(string.char(83,117,98,109,101,114,103,101,100)) or _0xF1D9 ==string.char(83,101,97,108,101,100,32,67,97,118,101,114,110))
then
if not (_0xF1D9:lower():find(string.char(117,110,100,101,114)) or CheckLegendaryItems()) then
if
_0x0BB3.Data
and _0x0BB3.Data.LastSpawnPoint
and _0x0BB3.Data.LastSpawnPoint.Value ==string.char(83,117,98,109,101,114,103,101,100,73,115,108,97,110,100)then
return false
end
if GetDistance(p51.Position) <= 3500 then
return false
end
return true
end
end
return false
end
GetBypassCFrame = function(p52)
local _0xD727 = math.huge
local _0x85ED
local _0x7B7B = workspace._WorldOrigin.PlayerSpawns.Pirates:GetChildren()
local _0x1327 = _0x0BB3.Character and _0x0BB3.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return nil
end
for _0xFD54, v in next, _0x7B7B, nil do
if
v:FindFirstChild(string.char(80,97,114,116))
and (p52.Position - _0x1327.Position).Magnitude >= 3000
and GetSpawnPoint(v.Part) ~= GetSpawnPoint(_0x1327)
and (v.Part.Position - _0x1327.Position).Magnitude <= 10000
and (v.Part.Position - p52.Position).Magnitude <= _0xD727
then
_0xD727 = (v.Part.Position - p52.Position).Magnitude
_0x85ED = v
end
end
return _0x85ED
end
BypassTP = function(p53)
local _0xCFDB = _0x0BB3.Character
if not _0xCFDB then
return
end
local _0xE88A = WaitForHumanoid()
if not _0xE88A or _0xE88A.Health <= 0 then
return
end
if CanBypassTeleport(p53) and GetBypassCFrame(p53) then
local _0x5E52 = GetBypassCFrame(p53)
if _0x5E52 and _0x5E52:FindFirstChild(string.char(80,97,114,116)) then
_0xCFDB.LastSpawnPoint.Disabled = true
_0xB875.Remotes.CommF_:InvokeServer(string.char(83,101,116,76,97,115,116,83,112,97,119,110,80,111,105,110,116), _0x5E52.Name)
_0xB875.Remotes.CommF_:InvokeServer(string.char(83,101,116,83,112,97,119,110,80,111,105,110,116))
_0xCFDB:PivotTo(_0x5E52.Part.CFrame)
_0xE88A:ChangeState(15)
while true do
task.wait()
if not _0x0BB3.Character then
continue
end
if WaitForHumanoid() and WaitForHumanoid().Health > 0 then
break
end
end
end
end
end
totopofgreattree = function()
if getdis(CFrame.new(28310.0234, 14895.1123, 109.456741)) > 1500 then
_0xB875.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(28310.0234, 14895.1123, 109.456741)
)
task.wait(0.3)
end
local _0x66D1 = CFrame.new(28607.5352, 14896.5449, 106.011726)
_tp(_0x66D1)
repeat
task.wait()
until getdis(_0x66D1) <= 5
task.wait(0.5)
for i = 1, 4 do
_0xB875.Remotes.CommF_:InvokeServer(string.char(82,97,99,101,86,52,80,114,111,103,114,101,115,115),string.char(84,101,108,101,112,111,114,116,66,97,99,107))
end
end
requestentrance = function(p54)
local _0xA9DD = p54
if typeof(p54) ==string.char(67,70,114,97,109,101)then
_0xA9DD = p54.Position
end
local _0x6982
if sea1 then
_0x6982 = {
Sky3 = Vector3.new(-7894, 5547, -380),
Sky3Exit = Vector3.new(-4607, 874, -1667),
UnderWater = Vector3.new(61163, 11, 1819),
[string.char(85,110,100,101,114,119,97,116,101,114,32,67,105,116,121)] = Vector3.new(61165.19140625, 0.18704631924629211, 1897.379150390625),
[string.char(80,105,114,97,116,101,32,86,105,108,108,97,103,101)] = Vector3.new(-1242.4625244140625, 4.7870597839355469, 3901.282958984375),
UnderwaterExit = Vector3.new(4050, -1, -1814),
}
elseif sea2 then
_0x6982 = {
[string.char(83,119,97,110,32,77,97,110,115,105,111,110)] = Vector3.new(-390, 332, 673),
[string.char(83,119,97,110,32,82,111,111,109)] = Vector3.new(2285, 15, 905),
[string.char(67,117,114,115,101,100,32,83,104,105,112)] = Vector3.new(923, 126, 32852),
[string.char(90,111,109,98,105,101,32,73,115,108,97,110,100)] = Vector3.new(-6509, 83, -133),
}
else
_0x6982 = {
[string.char(72,121,100,114,97,32,73,115,108,97,110,100)] = Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625),
Mansion = Vector3.new(-12462, 375, -7552),
Castle = Vector3.new(-5036, 315, -3179),
[string.char(84,101,109,112,108,101,32,111,102,32,84,105,109,101)] = Vector3.new(28286, 14897, 103),
[string.char(71,114,101,97,116,101,32,84,114,101,101)] = Vector3.new(3024.1709, 2280.69434, -7325.12793),
}
if not checkinventory(string.char(86,97,108,107,121,114,105,101,32,72,101,108,109)) then
return
end
end
local _0x9F53
local _0xD727 = math.huge
for _0xFD54, v in pairs(_0x6982) do
local _0xA95F = typeof(v) ==string.char(86,101,99,116,111,114,51)and (v - _0xA9DD).Magnitude or (v.Position - _0xA9DD).Magnitude
if _0xA95F < _0xD727 then
_0xD727 = _0xA95F
_0x9F53 = v
end
end
if _0x9F53 then
if _0xD727 and _0xD727 < getdis(p54) then
pcall(function()
if _G.TweenCache then
_G.TweenCache:Cancel()
end
end)
local _0x78C0 = typeof(_0x9F53) ~=string.char(86,101,99,116,111,114,51)or _0x9F53.X ~= 3024.1709 or _0x9F53.Y ~= 2280.69434 or _0x9F53.Z ~= -7325.12793
if not _0x78C0 then
_0x78C0 = not (_0xB875.Remotes.CommF_:InvokeServer(string.char(82,97,99,101,86,52,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)) >= 2)
end
if _0x78C0 then
if _0xD727 < getdis(p54) then
_0xB875.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
typeof(_0x9F53) ==string.char(86,101,99,116,111,114,51)and _0x9F53 or _0x9F53.Position
)
task.wait(1)
end
else
totopofgreattree()
task.wait(1)
end
end
end
end
_tp = function(p55)
local _0x66D1
if typeof(p55) ==string.char(86,101,99,116,111,114,51)then
_0x66D1 = CFrame.new(p55)
elseif typeof(p55) ==string.char(67,70,114,97,109,101)then
_0x66D1 = p55
elseif typeof(p55) ==string.char(73,110,115,116,97,110,99,101)then
local _0x78C0, _0x22CD = pcall(function()
if p55:IsA(string.char(77,111,100,101,108)) then
return p55:GetPivot()
end
return p55.CFrame
end)
local _0x0836 = _0x78C0 and _0x22CD
_0x66D1 = _0x0836 or nil
end
if not _0x66D1 then
return
end
if plr.Character then
if plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
if not _0x5C69 or _0x5C69.Parent ~= workspace then
return
end
getgenv().LastTPCall = tick()
shouldTween = true
getgenv().OnFarm = true
if
_0x43E9.Tween
and _0x43E9.Tween.PlaybackState == Enum.PlaybackState.Playing
and _0x43E9.Target
and (_0x43E9.Target - _0x66D1.Position).Magnitude < 1
then
return _0x43E9.Tween
end
if sea3 then
if getdis(_0x66D1.Position, _0xD51B.Position) < 4000 or _0x66D1.Position.Y < -1000 then
local _0x1327 = plr.Character.HumanoidRootPart
if
not (
typeof(IsInSubmergedIsland) ==string.char(102,117,110,99,116,105,111,110)and IsInSubmergedIsland()
or _0x1327.Position.Y < -1000
)
then
if not (getdis(_0x0F42) > 15) then
local _0x0F66 = _0xB875.Modules.Net
pcall(function()
_0x0F66[string.char(82,70,47,83,117,98,109,97,114,105,110,101,87,111,114,107,101,114,83,112,101,97,107)]:InvokeServer(string.char(65,115,107,75,105,108,108,101,100,84,105,107,105,66,111,115,115))
task.wait(0.5)
_0x0F66[string.char(82,70,47,83,117,98,109,97,114,105,110,101,87,111,114,107,101,114,83,112,101,97,107)]:InvokeServer(string.char(84,114,97,118,101,108,84,111,83,117,98,109,101,114,103,101,100,73,115,108,97,110,100))
end)
task.wait(1)
return
end
_0x66D1 = _0x0F42
end
end
end
local _0xCFDB = plr.Character
local _0x1327 = _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 or not _0x5C69 or _0x5C69.Parent ~= workspace then
return
end
if _0x43E9.Tween then
_0x43E9.Tween:Cancel()
end
_0x5C69.CFrame = _0x1327.CFrame
local _0xEABC = _0xCFDB:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xEABC and _0xEABC.Sit == true then
_0x5C69.CFrame = CFrame.new(_0x5C69.Position.X, _0x66D1.Y, _0x5C69.Position.Z)
end
local _0xA95F = (_0x66D1.Position - _0x5C69.Position).Magnitude
local _0x1E17 = TweenInfo.new(
_0xA95F / (_0xA95F <= 15 and (getgenv().TweenSpeedNear or 180) or getgenv().TweenSpeedFar or 150),
Enum.EasingStyle.Linear
)
local _0x3368 = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101)):Create(_0x5C69, _0x1E17, {
CFrame = CFrame.new(_0x66D1.Position),
})
_0x43E9.Tween = _0x3368
_0x43E9.Target = _0x66D1.Position
_0x3368:Play()
return _0x3368
end
end
end
old_tp = function(p56)
if plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
plr.Character.HumanoidRootPart.CFrame = p56
end
end
TeleportToTarget = function(p57)
local _0x2D29 = _tp(p57)
if _0x2D29 then
_0x2D29.Completed:Wait()
end
task.wait(0.1)
end
notween = function(p58)
plr.Character.HumanoidRootPart.CFrame = p58
end
do
BTP = function(p59)
local _0xCDC7 = game.Players.LocalPlayer
local _0x1327 = _0xCDC7.Character.HumanoidRootPart
local _0xEABC = _0xCDC7.Character.Humanoid
local _0xB24B = _0xCDC7.PlayerGui.Main
local _0xA9DD = _0x1327.Position
repeat
_0xEABC.Health = 0
_0x1327.CFrame = p59
_0xB24B.Quest.Visible = false
if (_0x1327.Position - _0xA9DD).Magnitude > 1 then
_0xA9DD = _0x1327.Position
_0x1327.CFrame = p59
end
task.wait(0.5)
until (p59.Position - _0x1327.Position).Magnitude <= 2000
end
end
task.spawn(function()
while task.wait() do
pcall(function()
local _0xF958, _0x191F
if
_G.Auto_StartRaid
or _G.SailBoat_Hydra
or _G.WardenBoss
or _G.AutoFactory
or _G.HighestMirage
or _G.HCM
or _G.PGB
or _G.Leviathan1
or _G.UPGDrago
or _G.Complete_Trials
or _G.TpDrago_Prehis
or _G.BuyDrago
or _G.AutoFireFlowers
or _G.DT_Uzoth
or _G.AutoBerry
or _G.Prefully
or _G.Prehis_Find
or _G.Prehis_Skills
or _G.Prehis_DB
or _G.Prehis_DE
or _G.FarmBlazeEM
or _G.Dojoo
or _G.CollectPresent
or _G.AutoLawKak
or _G.TpLab
or _G.AutoPhoenixF
or _G.AutoFarmChest
or _G.AutoHytHallow
or _G.LongsWord
or _G.BlackSpikey
or _G.AutoHolyTorch
or _G.TrainDrago
or _G.AutoSaber
or _G.FarmMastery_Dev
or _G.Auto_Fruit_Mastery
or _G.CitizenQuest
or _G.AutoEctoplasm
or _G.KeysRen
or _G.Auto_Rainbow_Haki
or _G.obsFarm
or _G.AutoBigmom
or _G.Doughv2
or _G.AuraBoss
or _G.Raiding
or _G.Auto_Cavender
or _G.TpPly
or _G.Bartilo_Quest
or _G.Level
or _G.FarmEliteHunt
or _G.AutoZou
or _G.AutoFarm_Bone
or getgenv().AutoMaterial
or _G.CraftVM
or _G.FrozenTP
or _G.TPDoor
or _G.AcientOne
or _G.AutoFarmNear
or _G.AutoRaidCastle
or _G.DarkBladev3
or _G.AutoFarmRaid
or _G.Auto_Cake_Prince
or _G.Addealer
or _G.TPNpc == true
or _G.TwinHook
or _G.FindMirage
or _G.FarmChestM
or _G.Shark
or _G.TerrorShark
or _G.Piranha
or _G.MobCrew
or _G.SeaBeast1
or _G.FishBoat
or _G.AutoPole
or _G.AutoPoleV2
or _G.Auto_SuperHuman
or _G.AutoDeathStep
or _G.Auto_SharkMan_Karate
or _G.Auto_Electric_Claw
or _G.AutoDragonTalon
or _G.Auto_Def_DarkCoat
or _G.Auto_God_Human
or _G.Auto_Tushita
or _G.AutoMatSoul
or _G.AutoKenVTWO
or _G.AutoSerpentBow
or _G.AutoFMon
or _G.Auto_Soul_Guitar
or _G.TPGEAR
or _G.AutoSaw
or _G.AutoTridentW2
or _G.AutoEvoRace
or _G.AutoGetQuestBounty
or _G.MarinesCoat
or _G.TravelDres
or _G.Defeating
or _G.DummyMan
or _G.Auto_Yama
or _G.Auto_SwanGG
or _G.SwanCoat
or _G.AutoEcBoss
or _G.Auto_Mink
or _G.Auto_Human
or _G.Auto_Skypiea
or _G.Auto_Fish
or _G.CDK_TS
or _G.CDK_YM
or _G.CDK
or _G.AutoFarmGodChalice
or _G.AutoFistDarkness
or _G.AutoMiror
or _G.Teleport
or _G.AutoKilo
or _G.AutoGetUsoap
or _G.Praying
or _G.TryLucky
or _G.AutoColShad
or _G.AutoUnHaki
or _G.Auto_DonAcces
or _G.AutoRipIngay
or _G.DragoV3
or _G.DragoV1
or _G.SailBoats
or NextIs
or _G.FarmGodChalice
or _G.IceBossRen
or senth
or senth2
or _G.Lvthan
or _G.beasthunter
or _G.DangerLV
or _G.Relic123
or _G.tweenKitsune
or _G.Collect_Ember
or _G.AutofindKitIs
or _G.snaguine
or _G.TwFruits
or _G.tweenKitShrine
or _G.Tp_LgS
or _G.Tp_MasterA
or _G.tweenShrine
or _G.FarmMastery_G
or _G.Auto_Gun_Mastery
or _G.FarmMastery_S
or _G.Auto_Mastery_All_Sword
or _G.FarmBoss
or _G.AutoFarmAllBoss
or _G.AutoFishSlap
or _G.FarmTyrant
or _G.FarmPhaBinh
or _G.AutoSpawnCP
or _G.AutoBerryH
or _G.AutoChestBP
or _G.FarmEliteHop
or _G.AutoHop_Dough
or _G.AutoDoughKing
or _G.AutoAttackDoughKing
or _G.StartEvent
or _G.AutoMysticIsland
or _G.AutoPlayerHunter
or _G.SafeMode
or _G.AutoKillMob
or _G.AutoStartPrehistoric
or _G.AutoUnHaki
or _G.AutoAttackRipIndra
or _G.AutoFarmIsland
or _G.AutoFarmDungeon
or _G.AutoFarmCandy
or _G.AutoTP_Gift
or _G.AutoTPGift
or _G.AutoTPAndCollect
or _G.MasterAutoLevel
or _G.MasterAutoCandy
or _G.TPFloor1
or _G.TPFloor2
or _G.TPFloor3
or _G.TPFloor4
or _G.AutoMagnetToken
then
shouldTween = true
local _0x1327 = plr.Character.HumanoidRootPart
if not _0x1327:FindFirstChild(string.char(66,111,100,121,67,108,105,112)) then
_0xF958 = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121))
_0xF958.Name =string.char(66,111,100,121,67,108,105,112)_0xF958.Parent = plr.Character.HumanoidRootPart
_0xF958.MaxForce = Vector3.new(100000, 100000, 100000)
_0xF958.Velocity = Vector3.new(0, 0, 0)
end
local _0xCFDB = plr.Character
if not _0xCFDB:FindFirstChild(string.char(104,105,103,104,108,105,103,104,116)) then
_0x191F = Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0x191F.Name =string.char(104,105,103,104,108,105,103,104,116)_0x191F.Enabled = true
_0x191F.FillColor = Color3.fromRGB(0, 255, 254)
_0x191F.OutlineColor = Color3.fromRGB(0, 255, 254)
_0x191F.FillTransparency = 0.5
_0x191F.OutlineTransparency = 0.2
_0x191F.Parent = plr.Character
end
for _0xFD54, descendant in pairs(plr.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
descendant.CanCollide = false
end
end
elseif tick() - (getgenv().LastTPCall or 0) < 0.35 then
shouldTween = true
if not plr.Character.HumanoidRootPart:FindFirstChild(string.char(66,111,100,121,67,108,105,112)) then
_0xF958 = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121))
_0xF958.Name =string.char(66,111,100,121,67,108,105,112)_0xF958.Parent = plr.Character.HumanoidRootPart
_0xF958.MaxForce = Vector3.new(100000, 100000, 100000)
_0xF958.Velocity = Vector3.new(0, 0, 0)
end
if not plr.Character:FindFirstChild(string.char(104,105,103,104,108,105,103,104,116)) then
_0x191F = Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0x191F.Name =string.char(104,105,103,104,108,105,103,104,116)_0x191F.Enabled = true
_0x191F.FillColor = Color3.fromRGB(0, 255, 254)
_0x191F.OutlineColor = Color3.fromRGB(0, 255, 254)
_0x191F.FillTransparency = 0.5
_0x191F.OutlineTransparency = 0.2
_0x191F.Parent = plr.Character
end
for _0xFD54, descendant in pairs(plr.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
descendant.CanCollide = false
end
end
else
shouldTween = false
if plr.Character.HumanoidRootPart:FindFirstChild(string.char(66,111,100,121,67,108,105,112)) then
plr.Character.HumanoidRootPart:FindFirstChild(string.char(66,111,100,121,67,108,105,112)):Destroy()
end
if plr.Character:FindFirstChild(string.char(104,105,103,104,108,105,103,104,116)) then
plr.Character:FindFirstChild(string.char(104,105,103,104,108,105,103,104,116)):Destroy()
end
end
end)
end
end)
do
QuestB = function()
if World1 then
if _G.FindBoss ==string.char(84,104,101,32,71,111,114,105,108,108,97,32,75,105,110,103)then
bMon =string.char(84,104,101,32,71,111,114,105,108,108,97,32,75,105,110,103)Qname =string.char(74,117,110,103,108,101,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
PosB = CFrame.new(
-1088.75977,
8.13463783,
-488.559906,
-0.707134247,
0,
0.707079291,
0,
1,
0,
-0.707079291,
0,
-0.707134247
)
elseif _G.FindBoss ==string.char(66,111,98,98,121)then
bMon =string.char(66,111,98,98,121)Qname =string.char(66,117,103,103,121,81,117,101,115,116,49)Qdata = 3
PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif _G.FindBoss ==string.char(84,104,101,32,83,97,119)then
bMon =string.char(84,104,101,32,83,97,119)PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif _G.FindBoss ==string.char(89,101,116,105)then
bMon =string.char(89,101,116,105)Qname =string.char(83,110,111,119,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif _G.FindBoss ==string.char(77,111,98,32,76,101,97,100,101,114)then
bMon =string.char(77,111,98,32,76,101,97,100,101,114)PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif _G.FindBoss ==string.char(86,105,99,101,32,65,100,109,105,114,97,108)then
bMon =string.char(86,105,99,101,32,65,100,109,105,114,97,108)Qname =string.char(77,97,114,105,110,101,81,117,101,115,116,50)Qdata = 2
PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif _G.FindBoss ==string.char(83,97,98,101,114,32,69,120,112,101,114,116)then
bMon =string.char(83,97,98,101,114,32,69,120,112,101,114,116)PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564)
elseif _G.FindBoss ==string.char(87,97,114,100,101,110)then
bMon =string.char(87,97,114,100,101,110)Qname =string.char(73,109,112,101,108,81,117,101,115,116)Qdata = 1
PosB = CFrame.new(
5278.04932,
2.15167475,
944.101929,
0.220546961,
-4.49946401e-06,
0.975376427,
-1.95412576e-05,
1,
9.03162072e-06,
-0.975376427,
-2.10519756e-05,
0.220546961
)
PosQBoss = CFrame.new(
5191.86133,
2.84020686,
686.438721,
-0.731384635,
0,
0.681965172,
0,
1,
0,
-0.681965172,
0,
-0.731384635
)
elseif _G.FindBoss ==string.char(67,104,105,101,102,32,87,97,114,100,101,110)then
bMon =string.char(67,104,105,101,102,32,87,97,114,100,101,110)Qname =string.char(73,109,112,101,108,81,117,101,115,116)Qdata = 2
PosB = CFrame.new(
5206.92578,
0.997753382,
814.976746,
0.342041343,
-0.00062915677,
0.939684749,
0.00191645394,
0.999998152,
-2.80422337e-05,
-0.939682961,
0.00181045406,
0.342041939
)
PosQBoss = CFrame.new(
5191.86133,
2.84020686,
686.438721,
-0.731384635,
0,
0.681965172,
0,
1,
0,
-0.681965172,
0,
-0.731384635
)
elseif _G.FindBoss ==string.char(83,119,97,110)then
bMon =string.char(83,119,97,110)Qname =string.char(73,109,112,101,108,81,117,101,115,116)Qdata = 3
PosB = CFrame.new(
5325.09619,
7.03906584,
719.570679,
-0.309060812,
0,
0.951042235,
0,
1,
0,
-0.951042235,
0,
-0.309060812
)
PosQBoss = CFrame.new(
5191.86133,
2.84020686,
686.438721,
-0.731384635,
0,
0.681965172,
0,
1,
0,
-0.681965172,
0,
-0.731384635
)
elseif _G.FindBoss ==string.char(77,97,103,109,97,32,65,100,109,105,114,97,108)then
bMon =string.char(77,97,103,109,97,32,65,100,109,105,114,97,108)Qname =string.char(77,97,103,109,97,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif _G.FindBoss ==string.char(70,105,115,104,109,97,110,32,76,111,114,100)then
bMon =string.char(70,105,115,104,109,97,110,32,76,111,114,100)Qname =string.char(70,105,115,104,109,97,110,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif _G.FindBoss ==string.char(87,121,115,112,101,114)then
bMon =string.char(87,121,115,112,101,114)Qname =string.char(83,107,121,69,120,112,49,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif _G.FindBoss ==string.char(84,104,117,110,100,101,114,32,71,111,100)then
bMon =string.char(84,104,117,110,100,101,114,32,71,111,100)Qname =string.char(83,107,121,69,120,112,50,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
elseif _G.FindBoss ==string.char(67,121,98,111,114,103)then
bMon =string.char(67,121,98,111,114,103)Qname =string.char(70,111,117,110,116,97,105,110,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif _G.FindBoss ==string.char(73,99,101,32,65,100,109,105,114,97,108)then
bMon =string.char(73,99,101,32,65,100,109,105,114,97,108)Qdata = nil
PosQBoss = CFrame.new(
1266.08948,
26.1757946,
-1399.57678,
-0.573599219,
0,
-0.81913656,
0,
1,
0,
0.81913656,
0,
-0.573599219
)
PosB = CFrame.new(
1266.08948,
26.1757946,
-1399.57678,
-0.573599219,
0,
-0.81913656,
0,
1,
0,
0.81913656,
0,
-0.573599219
)
elseif _G.FindBoss ==string.char(71,114,101,121,98,101,97,114,100)then
bMon =string.char(71,114,101,121,98,101,97,114,100)Qdata = nil
PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if World2 then
if _G.FindBoss ==string.char(68,105,97,109,111,110,100)then
bMon =string.char(68,105,97,109,111,110,100)Qname =string.char(65,114,101,97,49,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif _G.FindBoss ==string.char(74,101,114,101,109,121)then
bMon =string.char(74,101,114,101,109,121)Qname =string.char(65,114,101,97,50,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif _G.FindBoss ==string.char(79,114,98,105,116,117,115)then
bMon =string.char(79,114,98,105,116,117,115)Qname =string.char(77,97,114,105,110,101,81,117,101,115,116,51)Qdata = 3
PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
elseif _G.FindBoss ==string.char(68,111,110,32,83,119,97,110)then
bMon =string.char(68,111,110,32,83,119,97,110)PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif _G.FindBoss ==string.char(83,109,111,107,101,32,65,100,109,105,114,97,108)then
bMon =string.char(83,109,111,107,101,32,65,100,109,105,114,97,108)Qname =string.char(73,99,101,83,105,100,101,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif _G.FindBoss ==string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108)then
bMon =string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108)Qname =string.char(70,114,111,115,116,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
elseif _G.FindBoss ==string.char(84,105,100,101,32,75,101,101,112,101,114)then
bMon =string.char(84,105,100,101,32,75,101,101,112,101,114)Qname =string.char(70,111,114,103,111,116,116,101,110,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
elseif _G.FindBoss ==string.char(68,97,114,107,98,101,97,114,100)then
bMon =string.char(68,97,114,107,98,101,97,114,100)Qdata = nil
PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
elseif _G.FindBoss ==string.char(67,117,114,115,101,100,32,67,97,112,116,97,105,110)then
bMon =string.char(67,117,114,115,101,100,32,67,97,112,116,97,105,110)Qdata = nil
PosQBoss = CFrame.new(916.928589, 181.092773, 33422)
PosB = CFrame.new(916.928589, 181.092773, 33422)
elseif _G.FindBoss ==string.char(79,114,100,101,114)then
bMon =string.char(79,114,100,101,114)Qdata = nil
PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if World3 then
if _G.FindBoss ==string.char(83,116,111,110,101)then
bMon =string.char(83,116,111,110,101)Qname =string.char(80,105,114,97,116,101,80,111,114,116,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif _G.FindBoss ==string.char(72,121,100,114,97,32,76,101,97,100,101,114)then
bMon =string.char(72,121,100,114,97,32,76,101,97,100,101,114)Qname =string.char(86,101,110,111,109,67,114,101,119,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(5211.021484375, 1004.35778859375, 758.18475341796875)
PosB = CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469)
elseif _G.FindBoss ==string.char(75,105,108,111,32,65,100,109,105,114,97,108)then
bMon =string.char(75,105,108,111,32,65,100,109,105,114,97,108)Qname =string.char(77,97,114,105,110,101,84,114,101,101,73,115,108,97,110,100)Qdata = 3
PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
elseif _G.FindBoss ==string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116)then
bMon =string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116)Qname =string.char(68,101,101,112,70,111,114,101,115,116,73,115,108,97,110,100)Qdata = 3
PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
elseif _G.FindBoss ==string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101)then
bMon =string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101)Qname =string.char(68,101,101,112,70,111,114,101,115,116,73,115,108,97,110,100,50)Qdata = 3
PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
elseif _G.FindBoss ==string.char(67,97,107,101,32,81,117,101,101,110)then
bMon =string.char(67,97,107,101,32,81,117,101,101,110)Qname =string.char(73,99,101,67,114,101,97,109,73,115,108,97,110,100,81,117,101,115,116)Qdata = 3
PosQBoss = CFrame.new(
-819.376709,
64.9259796,
-10967.2832,
-0.766061664,
0,
0.642767608,
0,
1,
0,
-0.642767608,
0,
-0.766061664
)
PosB = CFrame.new(
-678.648804,
381.353943,
-11114.2012,
-0.908641815,
0.00149294338,
0.41757378,
0.00837114919,
0.999857843,
0.0146408929,
-0.417492568,
0.0167988986,
-0.90852499
)
elseif _G.FindBoss ==string.char(76,111,110,103,109,97)then
bMon =string.char(76,111,110,103,109,97)Qdata = nil
PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
elseif _G.FindBoss ==string.char(83,111,117,108,32,82,101,97,112,101,114)then
bMon =string.char(83,111,117,108,32,82,101,97,112,101,114)Qdata = nil
PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
end
end
end
end
do
QuestBeta = function()
QuestB()
return {
[0] = _G.FindBoss,
bMon,
Qdata,
Qname,
PosB,
PosQBoss,
}
end
end
do
local _0xBB6B = require(game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):WaitForChild(string.char(81,117,101,115,116,115)))
local _0x6BF9 = require(game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):WaitForChild(string.char(71,117,105,100,101,77,111,100,117,108,101)))
local _0x86D2 = {string.char(77,97,114,105,110,101,81,117,101,115,116),string.char(66,97,114,116,105,108,111,81,117,101,115,116),string.char(67,105,116,105,122,101,110,81,117,101,115,116),string.char(84,114,97,105,110,101,101,115),
}
CheckSea = function(p60)
if (game.PlaceId == 2753915549 or game.PlaceId == 85211729168715) and p60 == 1 then
return true
end
if (game.PlaceId == 4442272183 or game.PlaceId == 79091703265657) and p60 == 2 then
return true
end
if (game.PlaceId == 7449423635 or game.PlaceId == 100117331123089) and p60 == 3 then
return true
end
return false
end
GetQuestPointFromNPC = function(p61)
for _0xFD54, child in pairs(workspace.NPCs:GetChildren()) do
if child.Name ~= p61 then
continue
end
if child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
return child.HumanoidRootPart.CFrame
end
end
for _0xFD54, child in pairs(replicated.NPCs:GetChildren()) do
if child.Name == p61 and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
return child.HumanoidRootPart.CFrame
end
end
return nil
end
GetQuests = function()
local _0xDA8F = plr.Data.Level.Value
local _0x90CE = 0
local _0x2CA7 = {}
if _0xDA8F >= 700 and CheckSea(1) then
_0x2CA7.Mob =string.char(71,97,108,108,101,121,32,67,97,112,116,97,105,110)_0x2CA7.NameQuest =string.char(70,111,117,110,116,97,105,110,81,117,101,115,116)_0x2CA7.ID = 2
_0x2CA7.LevelReq = 700
elseif _0xDA8F >= 1500 and CheckSea(2) then
_0x2CA7.Mob =string.char(87,97,116,101,114,32,70,105,103,104,116,101,114)_0x2CA7.NameQuest =string.char(70,111,114,103,111,116,116,101,110,81,117,101,115,116)_0x2CA7.ID = 2
_0x2CA7.LevelReq = 1450
else
for k, _0x7CC5 in pairs(_0xBB6B) do
for k2, v in pairs(_0x7CC5) do
local _0xF954 = v.LevelReq
for k3 in pairs(v.Task) do
if _0xF954 <= _0xDA8F and _0x90CE <= _0xF954 and v.Task[k3] > 1 and not table.find(_0x86D2, k) then
_0x90CE = _0xF954
_0x2CA7.Mob = k3
_0x2CA7.NameQuest = k
_0x2CA7.ID = k2
_0x2CA7.LevelReq = _0xF954
end
end
end
end
end
return _0x2CA7
end
GetQuestPoint = function()
if _0x6BF9 and _0x6BF9.Data then
if _0x6BF9.Data.LastClosestNPC then
return GetQuestPointFromNPC(_0x6BF9.Data.LastClosestNPC)
end
end
return nil
end
end
do
MaterialMon = function()
local _0xCDC7 = game.Players.LocalPlayer
local _0x1327 = _0xCDC7.Character and _0xCDC7.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
shouldRequestEntrance = function(p62, p63)
if p63 <= (_0x1327.Position - p62).Magnitude then
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101), p62)
end
end
if not World1 then
if not World2 then
if World3 then
if SelectMaterial ==string.char(83,99,114,97,112,32,77,101,116,97,108)then
MMon = {string.char(74,117,110,103,108,101,32,80,105,114,97,116,101),string.char(70,111,114,101,115,116,32,80,105,114,97,116,101),
}
MPos = CFrame.new(-11975.78515625, 331.77340698242188, -10620.0302734375)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(70,105,115,104,32,84,97,105,108)then
MMon = {string.char(70,105,115,104,109,97,110,32,82,97,105,100,101,114),string.char(70,105,115,104,109,97,110,32,67,97,112,116,97,105,110),
}
MPos = CFrame.new(-10993, 332, -8940)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(67,111,110,106,117,114,101,100,32,67,111,99,111,97)then
MMon = {string.char(67,104,111,99,111,108,97,116,101,32,66,97,114,32,66,97,116,116,108,101,114),string.char(67,111,99,111,97,32,87,97,114,114,105,111,114),
}
MPos = CFrame.new(620.63446044921875, 78.936447143554688, -12581.369140625)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(68,114,97,103,111,110,32,83,99,97,108,101)then
MMon = {string.char(68,114,97,103,111,110,32,67,114,101,119,32,65,114,99,104,101,114),string.char(68,114,97,103,111,110,32,67,114,101,119,32,87,97,114,114,105,111,114),
}
MPos = CFrame.new(6594, 383, 139)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(71,117,110,112,111,119,100,101,114)then
MMon = {string.char(80,105,115,116,111,108,32,66,105,108,108,105,111,110,97,105,114,101)}
MPos = CFrame.new(-84.855690002441406, 85.620613098144531, 6132.0087890625)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(77,105,110,105,32,84,117,115,107)then
MMon = {string.char(77,121,116,104,111,108,111,103,105,99,97,108,32,80,105,114,97,116,101)}
MPos = CFrame.new(-13545, 470, -6917)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(68,101,109,111,110,105,99,32,87,105,115,112)then
MMon = {string.char(68,101,109,111,110,105,99,32,83,111,117,108)}
MPos = CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
SP =string.char(68,101,102,97,117,108,116)end
end
elseif SelectMaterial ==string.char(76,101,97,116,104,101,114,32,43,32,83,99,114,97,112,32,77,101,116,97,108)then
MMon = {string.char(77,97,114,105,110,101,32,67,97,112,116,97,105,110)}
MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(77,97,103,109,97,32,79,114,101)then
MMon = {string.char(77,97,103,109,97,32,78,105,110,106,97),string.char(76,97,118,97,32,80,105,114,97,116,101),
}
MPos = CFrame.new(-5428, 78, -5959)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(69,99,116,111,112,108,97,115,109)then
MMon = {string.char(83,104,105,112,32,68,101,99,107,104,97,110,100),string.char(83,104,105,112,32,69,110,103,105,110,101,101,114),string.char(83,104,105,112,32,83,116,101,119,97,114,100),string.char(83,104,105,112,32,79,102,102,105,99,101,114),
}
MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
SP =string.char(68,101,102,97,117,108,116)shouldRequestEntrance(Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875), 18000)
elseif SelectMaterial ==string.char(77,121,115,116,105,99,32,68,114,111,112,108,101,116)then
MMon = {string.char(87,97,116,101,114,32,70,105,103,104,116,101,114)}
MPos = CFrame.new(-3385, 239, -10542)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(82,97,100,105,111,97,99,116,105,118,101,32,77,97,116,101,114,105,97,108)then
MMon = {string.char(70,97,99,116,111,114,121,32,83,116,97,102,102)}
MPos = CFrame.new(295, 73, -56)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(86,97,109,112,105,114,101,32,70,97,110,103)then
MMon = {string.char(86,97,109,112,105,114,101)}
MPos = CFrame.new(-6033, 7, -1317)
SP =string.char(68,101,102,97,117,108,116)end
elseif SelectMaterial ==string.char(65,110,103,101,108,32,87,105,110,103,115)then
MMon = {string.char(83,104,97,110,100,97),string.char(82,111,121,97,108,32,83,113,117,97,100),string.char(82,111,121,97,108,32,83,111,108,100,105,101,114),string.char(87,121,115,112,101,114),string.char(84,104,117,110,100,101,114,32,71,111,100),
}
MPos = CFrame.new(-4698, 845, -1912)
SP =string.char(68,101,102,97,117,108,116)shouldRequestEntrance(Vector3.new(-4607.82275, 872.54248, -1667.55688), 10000)
elseif SelectMaterial ==string.char(76,101,97,116,104,101,114,32,43,32,83,99,114,97,112,32,77,101,116,97,108)then
MMon = {string.char(66,114,117,116,101),string.char(80,105,114,97,116,101),
}
MPos = CFrame.new(-1145, 15, 4350)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(77,97,103,109,97,32,79,114,101)then
MMon = {string.char(77,105,108,105,116,97,114,121,32,83,111,108,100,105,101,114),string.char(77,105,108,105,116,97,114,121,32,83,112,121),string.char(77,97,103,109,97,32,65,100,109,105,114,97,108),
}
MPos = CFrame.new(-5815, 84, 8820)
SP =string.char(68,101,102,97,117,108,116)elseif SelectMaterial ==string.char(70,105,115,104,32,84,97,105,108)then
MMon = {string.char(70,105,115,104,109,97,110,32,87,97,114,114,105,111,114),string.char(70,105,115,104,109,97,110,32,67,111,109,109,97,110,100,111),string.char(70,105,115,104,109,97,110,32,76,111,114,100),
}
MPos = CFrame.new(61123, 19, 1569)
SP =string.char(68,101,102,97,117,108,116)shouldRequestEntrance(Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875), 17000)
end
end
end
QuestNeta = function()
local _0x81AA = GetQuests()
return {
_0x81AA.Mob,
_0x81AA.ID,
_0x81AA.NameQuest,
_0x81AA.LevelReq,
_0x81AA.Mob,
(GetQuestPoint()),
}
end
alreadyTeleported = false
teleporting = false
_G.CheckQuestVisible = function(p64)
local _0xCDC7 = p64 or game.Players.LocalPlayer
local _0x7CC5 = _0xCDC7.PlayerGui:FindFirstChild(string.char(77,97,105,110)) and _0xCDC7.PlayerGui.Main:FindFirstChild(string.char(81,117,101,115,116))
local _0x6AED = _0xCDC7.PlayerGui:FindFirstChild(string.char(84,114,97,99,107,101,100,81,117,101,115,116,70,114,97,109,101))
if _0x7CC5 and _0x7CC5.Visible then
local _0x4631 =""pcall(function()
_0x4631 = _0x7CC5.Container.QuestTitle.Title.Text
end)
return true, _0x4631
end
if not _0x6AED or not _0x6AED.Enabled then
return false,""end
local _0x3396 =""pcall(function()
_0x3396 = _0x6AED.Frame.header.textLabel.Text
end)
if _0x3396 ==""then
pcall(function()
_0x3396 = _0x6AED.Frame.header.textLabel.textLabel.Text
end)
end
return true, _0x3396
end
IsInSubmergedIsland = function()
if not plr.Character then
return false
end
local _0x1327 = plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x1327 then
return _0x1327.Position.Y < -1000
end
return false
end
do
GuiNode = function(...)
local _0xB24B = game.Players.LocalPlayer.PlayerGui:FindFirstChild(string.char(77,97,105,110))
if not _0xB24B then
return nil
end
local _0x82A8 = _0xB24B
for _0xFD54, v in ipairs({ ... }) do
if _0x82A8 then
_0x82A8 = _0x82A8:FindFirstChild(v)
continue
end
return nil
end
return _0x82A8
end
end
do
GuiShown = function(...)
if select(string.char(35), ...) == 1 and select(1, ...) ==string.char(81,117,101,115,116)then
local _0x6AED = game.Players.LocalPlayer.PlayerGui:FindFirstChild(string.char(84,114,97,99,107,101,100,81,117,101,115,116,70,114,97,109,101))
if _0x6AED then
local _0x1915 = _0x6AED:FindFirstChild(string.char(70,114,97,109,101))
if _0x1915 then
return _0x6AED.Enabled and _0x1915.Visible
end
end
end
local _0xE63D = GuiNode(...)
return _0xE63D ~= nil and _0xE63D.Visible == true
end
end
QuestText = function()
local _0x6AED = game.Players.LocalPlayer.PlayerGui:FindFirstChild(string.char(84,114,97,99,107,101,100,81,117,101,115,116,70,114,97,109,101))
if _0x6AED then
local _0x1915 = _0x6AED:FindFirstChild(string.char(70,114,97,109,101))
if _0x1915 and _0x1915.Visible then
local _0x2EEF = _0x1915:FindFirstChild(string.char(104,101,97,100,101,114))
local _0xF90E = _0x2EEF and _0x2EEF:FindFirstChild(string.char(116,101,120,116,76,97,98,101,108))
if _0xF90E and _0xF90E:IsA(string.char(84,101,120,116,76,97,98,101,108)) then
return tostring(_0xF90E.Text)
end
end
end
local _0x7CC5 = GuiNode(string.char(81,117,101,115,116),string.char(67,111,110,116,97,105,110,101,114),string.char(81,117,101,115,116,84,105,116,108,101),string.char(84,105,116,108,101))
if _0x7CC5 then
return tostring(_0x7CC5.Text)
end
return""end
CheckHasQuest = function(p65)
if not p65 then
return false
end
if not GuiShown(string.char(81,117,101,115,116)) then
return false
end
local _0xEC25 = QuestText()
if _0xEC25 ==""then
return false
end
return string.find(string.lower(_0xEC25), string.lower(p65), 1, true) ~= nil
end
BFAcceptQuest = function(p66, p67, p68)
if CheckHasQuest(p68) then
return true
end
local _0x3003 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(82,101,109,111,116,101,115))
and game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes:FindFirstChild(string.char(67,111,109,109,70,95))
if not _0x3003 then
return false
end
local _0x78C0 = pcall(function()
return _0x3003:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116), p66, p67)
end)
if not _0x78C0 then
return false
end
local _0x773D = os.clock() + 3
while true do
if not CheckHasQuest(p68) then
task.wait(0.25)
if not (_0x773D <= os.clock()) then
continue
end
return CheckHasQuest(p68)
end
break
end
return true
end
task.spawn(function()
while task.wait(0.5) do
pcall(function()
local _0x17F3 = _G.ChooseWP orstring.char(77,101,108,101,101)local _0xF1D9
if plr.Character then
for _0xFD54, child in pairs(plr.Character:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.ToolTip == _0x17F3 then
_0xF1D9 = child.Name
break
end
end
end
if not _0xF1D9 and plr.Backpack then
for _0xFD54, child in pairs(plr.Backpack:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) then
if child.ToolTip == _0x17F3 then
_0xF1D9 = child.Name
break
end
end
end
end
if _0xF1D9 then
_G.SelectWeapon = _0xF1D9
end
end)
end
end)
task.spawn(function()
while task.wait() do
pcall(function()
if _G.AutoFarmNear then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
(child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) or child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
and child.Humanoid.Health > 0
then
while true do
task.wait()
Attack.Kill(child, _G.AutoFarmNear)
if not _G.AutoFarmNear then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end)
end
end)
task.spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.AutoFactory then
local _0x0118 = GetConnectionEnemies(string.char(67,111,114,101))
if _0x0118 then
while true do
task.wait()
EquipWeapon(_G.SelectWeapon)
_tp(CFrame.new(448.46756, 199.356781, -441.389252))
if _0x0118.Humanoid.Health <= 0 then
break
elseif _G.AutoFactory == false then
break
end
end
else
_tp(CFrame.new(448.46756, 199.356781, -441.389252))
end
end
end)
end
end)
task.spawn(function()
local _0x66D1 = CFrame.new(
-5496.17432,
313.768921,
-2841.53027,
0.924894512,
7.37058015e-09,
0.380223751,
3.5881019e-08,
1,
-1.06665446e-07,
-0.380223751,
1.12297109e-07,
0.924894512
)
local _0xCE41 = Vector3.new(-5539.3115234375, 313.800537109375, -2972.372314453125)
while task.wait(Sec) do
if _G.AutoRaidCastle then
local _0xCB1F
repeat
pcall(function()
local _0xCFDB = plr.Character
_0xCFDB = _0xCFDB and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xCFDB then
return
end
if (_0xCE41 - _0xCFDB.Position).Magnitude <= 500 then
local _0xF57C
local _0xEEE2
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
local _0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0xEABC
and _0x1327
and _0xEABC.Health > 0
and (_0x1327.Position - _0xCE41).Magnitude <= 700
then
local _0xA95F = (_0x1327.Position - _0xCFDB.Position).Magnitude
if not _0xEEE2 or _0xA95F < _0xEEE2 then
_0xF57C = child
_0xEEE2 = _0xA95F
end
end
end
if _0xF57C then
local _0xDF11 = tick() + 30
while true do
task.wait()
Attack.Kill(_0xF57C, _G.AutoRaidCastle)
if not _G.AutoRaidCastle then
break
elseif not _0xF57C.Parent or _0xF57C.Humanoid.Health <= 0 or _0xDF11 < tick() then
break
end
end
else
_tp(_0x66D1)
end
else
_tp(_0x66D1)
end
end)
_0xCB1F = nil
while task.wait(Sec) do
if _G.AutoRaidCastle then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
task.spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.AutoEctoplasm then
local _0xB6EC = GetConnectionEnemies({string.char(83,104,105,112,32,68,101,99,107,104,97,110,100),string.char(83,104,105,112,32,69,110,103,105,110,101,101,114),string.char(83,104,105,112,32,83,116,101,119,97,114,100),string.char(83,104,105,112,32,79,102,102,105,99,101,114),string.char(65,114,99,116,105,99,32,87,97,114,114,105,111,114),
})
if Attack.Alive(_0xB6EC) then
while true do
task.wait()
Attack.Kill(_0xB6EC, _G.AutoEctoplasm)
if not _G.AutoEctoplasm then
break
elseif not _0xB6EC.Parent or _0xB6EC.Humanoid.Health <= 0 then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
)
end
end
end)
end
end)
task.spawn(function()
while task.wait(Sec) do
if _G.AutoFarmChest then
pcall(function()
local _0xBFED = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xCDC7 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
local _0xCFDB = _0xCDC7.Character or _0xCDC7.CharacterAdded:Wait()
if not _0xCFDB then
return
end
local _0xA9DD = _0xCFDB:GetPivot().Position
local _0x65F7 = _0xBFED:GetTagged(string.char(95,67,104,101,115,116,84,97,103,103,101,100))
local _0xD727 = math.huge
local _0x9960
for i = 1, #_0x65F7 do
local _0x5543 = _0x65F7[i]
local _0xA95F = (_0x5543:GetPivot().Position - _0xA9DD).Magnitude
if
(not SelectedIsland or _0x5543:IsDescendantOf(SelectedIsland))
and not _0x5543:GetAttribute(string.char(73,115,68,105,115,97,98,108,101,100))
and _0xA95F < _0xD727
then
_0xD727 = _0xA95F
_0x9960 = _0x5543
end
end
if _0x9960 then
_tp(_0x9960:GetPivot())
end
end)
end
end
end)
task.spawn(function()
while task.wait(0.2) do
if _G.StopWhenChalice and (_G.AutoFarmChest or _G.AutoChestBP) then
pcall(function()
if GetBP(string.char(71,111,100,39,115,32,67,104,97,108,105,99,101)) or GetBP(string.char(83,119,101,101,116,32,67,104,97,108,105,99,101)) or GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115)) then
_G.AutoFarmChest = false
_G.AutoChestBP = false
end
end)
end
end
end)
task.spawn(function()
local _0xFD54
local _0x4009 = 1
local _0x65F7, _0x22C1, _0xE877, _0x9D00, _0x31A9, _0x46A3, _0x421C, _0x99CA, _0xEAE1, _0x1DB4, _0xCE80, _0xF58A, _0x8B03, _0x4EF4, _0xB5DC, _0x4670, _0x07D1, _0xE4C7, _0x2ACD, _0xDF34
while true do
if _0x4009 == 1 then
_0x4009 = 2
elseif _0x4009 == 2 then
if task.wait(Sec) then
_0x4009 = 3
else
_0x4009 = 31
end
elseif _0x4009 == 3 then
if _G.AutoBerry then
_0x4009 = 4
else
_0x4009 = 2
end
elseif _0x4009 == 4 then
local _0xBFED = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xCDC7 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
_0x65F7 = _0xBFED:GetTagged(string.char(66,101,114,114,121,66,117,115,104))
_0x22C1 = 1
_0xE877 = #_0x65F7
_0x4009 = 5
elseif _0x4009 == 5 then
if _0x22C1 <= _0xE877 then
_0x4009 = 6
else
_0x4009 = 28
end
elseif _0x4009 == 6 then
_0x9D00 = _0x22C1
_0x4009 = 9
elseif _0x4009 == 7 then
if _0x22C1 >= _0xE877 then
_0x4009 = 8
else
_0x4009 = 28
end
elseif _0x4009 == 8 then
_0x9D00 = _0x22C1
_0x4009 = 9
elseif _0x4009 == 9 then
_0x4009 = 10
elseif _0x4009 == 10 then
_0x31A9 = _0x65F7[_0x9D00]
_0x4009 = 11
elseif _0x4009 == 11 then
_0x46A3, _0x421C, _0x99CA = pairs(_0x31A9:GetAttributes())
if type(_0x46A3) ==string.char(116,97,98,108,101)then
local _0xBA02 = getmetatable(_0x46A3)
if type(_0xBA02) ==string.char(116,97,98,108,101)and _0xBA02[string.char(95,95,105,116,101,114)] then
_0x46A3, _0x421C, _0x99CA = (_0xBA02[string.char(95,95,105,116,101,114)](_0x46A3))
else
_0x46A3, _0x421C, _0x99CA = next, _0x46A3, nil
end
end
_0x4009 = 12
elseif _0x4009 == 12 then
local _0x909D
_0x909D, _0xEAE1 = (_0x46A3(_0x421C, _0x99CA))
if _0x909D == nil then
_0x4009 = 13
else
_0x99CA = _0x909D
_0x4009 = 19
end
elseif _0x4009 == 13 then
_0x1DB4, _0xCE80, _0xF58A = 1, #_0x65F7, 1
if _0xF58A > 0 and _0x1DB4 <= _0xCE80 or _0xF58A <= 0 and _0x1DB4 >= _0xCE80 then
_0x9D00 = _0x1DB4
_0x4009 = 10
else
_0x4009 = 15
end
elseif _0x4009 == 14 then
_0x1DB4 += _0xF58A
if _0xF58A > 0 and _0x1DB4 <= _0xCE80 or _0xF58A <= 0 and _0x1DB4 >= _0xCE80 then
_0x9D00 = _0x1DB4
_0x4009 = 10
else
_0x4009 = 15
end
elseif _0x4009 == 15 then
if task.wait(Sec) then
_0x4009 = 16
else
_0x4009 = 18
end
elseif _0x4009 == 16 then
if _G.AutoBerry then
_0x4009 = 17
else
_0x4009 = 15
end
elseif _0x4009 == 17 then
local _0xBFED = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xCDC7 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
_0x65F7 = _0xBFED:GetTagged(string.char(66,101,114,114,121,66,117,115,104))
_0x4009 = 14
else
if _0x4009 == 18 then
return
end
if _0x4009 == 19 then
if not BerryArray or table.find(BerryArray, _0xEAE1) then
_0x4009 = 20
else
_0x4009 = 12
end
elseif _0x4009 == 20 then
_tp(_0x31A9.Parent:GetPivot())
_0x4009 = 21
elseif _0x4009 == 21 then
_0x8B03, _0x4EF4, _0xB5DC = 1, #_0x65F7, 1
if _0xB5DC > 0 and _0x8B03 <= _0x4EF4 or _0xB5DC <= 0 and _0x8B03 >= _0x4EF4 then
_0x4670 = _0x8B03
_0x4009 = 23
else
_0x4009 = 12
end
elseif _0x4009 == 22 then
_0x8B03 += _0xB5DC
if _0xB5DC > 0 and _0x8B03 <= _0x4EF4 or _0xB5DC <= 0 and _0x8B03 >= _0x4EF4 then
_0x4670 = _0x8B03
_0x4009 = 23
else
_0x4009 = 12
end
elseif _0x4009 == 23 then
_0x4009 = 24
elseif _0x4009 == 24 then
_0x07D1, _0xE4C7, _0x2ACD = pairs(_0x65F7[_0x4670]:GetChildren())
if type(_0x07D1) ==string.char(116,97,98,108,101)then
local _0x2704 = getmetatable(_0x07D1)
if type(_0x2704) ==string.char(116,97,98,108,101)and _0x2704[string.char(95,95,105,116,101,114)] then
_0x07D1, _0xE4C7, _0x2ACD = (_0x2704[string.char(95,95,105,116,101,114)](_0x07D1))
else
_0x07D1, _0xE4C7, _0x2ACD = next, _0x07D1, nil
end
end
_0x4009 = 25
elseif _0x4009 == 25 then
local _0xCEA1
_0xCEA1, _0xDF34 = (_0x07D1(_0xE4C7, _0x2ACD))
if _0xCEA1 == nil then
_0x4009 = 22
else
_0x2ACD = _0xCEA1
_0x4009 = 26
end
elseif _0x4009 == 26 then
if not BerryArray or table.find(BerryArray, _0xDF34) then
_0x4009 = 27
else
_0x4009 = 25
end
elseif _0x4009 == 27 then
_tp(_0xDF34.WorldPivot)
fireproximityprompt(_0xDF34.ProximityPrompt, math.huge)
_0x4009 = 25
elseif _0x4009 == 28 then
if task.wait(Sec) then
_0x4009 = 29
else
_0x4009 = 30
end
elseif _0x4009 == 29 then
if _G.AutoBerry then
_0x4009 = 4
else
_0x4009 = 28
end
elseif _0x4009 == 30 then
return
elseif _0x4009 == 31 then
return
end
end
end
end)
task.spawn(function()
while task.wait(Sec) do
if _G.AutoBerryH then
local _0xBFED = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xCDC7 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
local _0x65F7 = _0xBFED:GetTagged(string.char(66,101,114,114,121,66,117,115,104))
if #_0x65F7 == 0 then
local _0xED22 = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _0xBA63 = {}
local _0x78C0 = pcall(function()
_0xBA63 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101)):JSONDecode(
game:HttpGet(string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47).. game.PlaceId
..string.char(47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,65,115,99,38,108,105,109,105,116,61,49,48,48))
)
end)
if _0x78C0 then
if _0xBA63.data then
for _0xFD54, v in pairs(_0xBA63.data) do
if v.playing < v.maxPlayers and v.id ~= game.JobId then
_0xED22:TeleportToPlaceInstance(game.PlaceId, v.id, _0xCDC7)
break
end
end
end
end
else
for i = 1, #_0x65F7 do
local _0xE5A7 = _0x65F7[i]
for _0xFD54, v in pairs(_0xE5A7:GetAttributes()) do
if BerryArray then
if not table.find(BerryArray, v) then
continue
end
end
_tp(_0xE5A7.Parent:GetPivot())
for i2 = 1, #_0x65F7 do
for _0xFD54, child in pairs(_0x65F7[i2]:GetChildren()) do
if BerryArray then
if not table.find(BerryArray, child.Name) then
continue
end
end
_tp(child.WorldPivot)
fireproximityprompt(child.ProximityPrompt, math.huge)
end
end
end
end
end
end
end
end)
task.spawn(function()
while task.wait() do
if _G.AutoKillMob then
pcall(function()
if game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Enemies:FindFirstChild(getgenv().SelectMob) then
for _0xFD54, child in pairs(game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Enemies:GetChildren()) do
if child.Name == getgenv().SelectMob then
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child.Humanoid.Health > 0
then
while true do
game:GetService(string.char(82,117,110,83,101,114,118,105,99,101)).Heartbeat:Wait()
Attack.Kill(child, _G.AutoKillMob)
if not _G.AutoKillMob then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
end)
end
end
end)
Sea1_Islands = {
Pirates = {
CFrame = CFrame.new(
-2709.67944,
24.5206585,
2104.24585,
-0.744724929,
-3.97967455e-08,
-0.667371571,
4.32403588e-08,
1,
-1.07884304e-07,
0.667371571,
-1.09201515e-07,
-0.744724929
),
Mobs = {string.char(66,97,110,100,105,116)},
},
Marine = {
CFrame = CFrame.new(
-2709.67944,
24.5206585,
2104.24585,
-0.744724929,
-3.97967455e-08,
-0.667371571,
4.32403588e-08,
1,
-1.07884304e-07,
0.667371571,
-1.09201515e-07,
-0.744724929
),
Mobs = {string.char(84,114,97,105,110,101,101)},
},
Jungle = {
CFrame = CFrame.new(-1600, 36, 150),
Mobs = {string.char(77,111,110,107,101,121),string.char(71,111,114,105,108,108,97),
},
},
[string.char(80,105,114,97,116,101,32,86,105,108,108,97,103,101)] = {
CFrame = CFrame.new(-1100, 4, 3850),
Mobs = {string.char(80,105,114,97,116,101),string.char(66,114,117,116,101),
},
},
Desert = {
CFrame = CFrame.new(1090, 7, 4370),
Mobs = {string.char(68,101,115,101,114,116,32,66,97,110,100,105,116),string.char(68,101,115,101,114,116,32,79,102,102,105,99,101,114),
},
},
[string.char(70,114,111,122,101,110,32,86,105,108,108,97,103,101)] = {
CFrame = CFrame.new(1200, 28, -1500),
Mobs = {string.char(83,110,111,119,32,66,97,110,100,105,116),string.char(83,110,111,119,109,97,110),
},
},
[string.char(77,97,114,105,110,101,32,70,111,114,116,114,101,115,115)] = {
CFrame = CFrame.new(-4500, 20, 4250),
Mobs = {string.char(67,104,105,101,102,32,80,101,116,116,121,32,79,102,102,105,99,101,114)},
},
[string.char(83,107,121,108,97,110,100,115,32,76,111,119,101,114)] = {
CFrame = CFrame.new(-5000, 700, -2500),
Mobs = {string.char(83,107,121,32,66,97,110,100,105,116),string.char(68,97,114,107,32,77,97,115,116,101,114),
},
},
Prison = {
CFrame = CFrame.new(4875, 6, 735),
Mobs = {string.char(80,114,105,115,111,110,101,114),string.char(68,97,110,103,101,114,111,117,115,32,80,114,105,115,111,110,101,114),
},
},
Colosseum = {
CFrame = CFrame.new(-1500, 60, -290),
Mobs = {string.char(84,111,103,97,32,87,97,114,114,105,111,114),string.char(71,108,97,100,105,97,116,111,114),
},
},
[string.char(77,97,103,109,97,32,86,105,108,108,97,103,101)] = {
CFrame = CFrame.new(-5200, 8, 8400),
Mobs = {string.char(77,105,108,105,116,97,114,121,32,83,111,108,100,105,101,114),string.char(77,105,108,105,116,97,114,121,32,83,112,121),
},
},
[string.char(85,110,100,101,114,119,97,116,101,114,32,67,105,116,121)] = {
CFrame = CFrame.new(61160, 5, 1819),
Mobs = {string.char(70,105,115,104,109,97,110,32,87,97,114,114,105,111,114),string.char(70,105,115,104,109,97,110,32,67,111,109,109,97,110,100,111),
},
},
[string.char(83,107,121,108,97,110,100,115,32,85,112,112,101,114)] = {
CFrame = CFrame.new(-7880, 5545, -380),
Mobs = {string.char(71,111,100,39,115,32,71,117,97,114,100),string.char(83,104,97,110,100,97),string.char(82,111,121,97,108,32,83,113,117,97,100),string.char(82,111,121,97,108,32,83,111,108,100,105,101,114),
},
},
[string.char(70,111,117,110,116,97,105,110,32,67,105,116,121)] = {
CFrame = CFrame.new(5258, 38, 4050),
Mobs = {string.char(71,97,108,108,101,121,32,80,105,114,97,116,101),string.char(71,97,108,108,101,121,32,67,97,112,116,97,105,110),
},
},
}
Core.Sea1_Islands = Sea1_Islands
getgenv().Sea1_Islands = Sea1_Islands
Sea2_Islands = {
[string.char(75,105,110,103,100,111,109,32,111,102,32,82,111,115,101)] = {
CFrame = CFrame.new(600, 73, 1000),
Mobs = {string.char(82,97,105,100,101,114),string.char(77,101,114,99,101,110,97,114,121),string.char(83,119,97,110,32,80,105,114,97,116,101),string.char(70,97,99,116,111,114,121,32,83,116,97,102,102),
},
},
[string.char(71,114,101,101,110,32,90,111,110,101)] = {
CFrame = CFrame.new(-2400, 73, -2700),
Mobs = {string.char(77,97,114,105,110,101,32,76,105,101,117,116,101,110,97,110,116),string.char(77,97,114,105,110,101,32,67,97,112,116,97,105,110),
},
},
[string.char(71,114,97,118,101,121,97,114,100,32,73,115,108,97,110,100)] = {
CFrame = CFrame.new(-5500, 8, -700),
Mobs = {string.char(90,111,109,98,105,101),string.char(86,97,109,112,105,114,101),
},
},
[string.char(83,110,111,119,32,77,111,117,110,116,97,105,110)] = {
CFrame = CFrame.new(600, 400, -5300),
Mobs = {string.char(83,110,111,119,32,84,114,111,111,112,101,114),string.char(87,105,110,116,101,114,32,87,97,114,114,105,111,114),
},
},
[string.char(72,111,116,32,97,110,100,32,67,111,108,100,32,40,67,111,108,100,41)] = {
CFrame = CFrame.new(-6000, 15, -4500),
Mobs = {string.char(76,97,98,32,83,117,98,111,114,100,105,110,97,116,101),string.char(72,111,114,110,101,100,32,87,97,114,114,105,111,114),
},
},
[string.char(72,111,116,32,97,110,100,32,67,111,108,100,32,40,72,111,116,41)] = {
CFrame = CFrame.new(-5400, 15, -5900),
Mobs = {string.char(77,97,103,109,97,32,78,105,110,106,97),string.char(76,97,118,97,32,80,105,114,97,116,101),
},
},
[string.char(67,117,114,115,101,100,32,83,104,105,112)] = {
CFrame = CFrame.new(923, 126, 32852),
Mobs = {string.char(83,104,105,112,32,68,101,99,107,104,97,110,100),string.char(83,104,105,112,32,69,110,103,105,110,101,101,114),string.char(83,104,105,112,32,83,116,101,119,97,114,100),string.char(83,104,105,112,32,79,102,102,105,99,101,114),
},
},
[string.char(73,99,101,32,67,97,115,116,108,101)] = {
CFrame = CFrame.new(5500, 28, -6800),
Mobs = {string.char(65,114,99,116,105,99,32,87,97,114,114,105,111,114),string.char(83,110,111,119,32,76,117,114,107,101,114),
},
},
[string.char(70,111,114,103,111,116,116,101,110,32,73,115,108,97,110,100)] = {
CFrame = CFrame.new(-3050, 237, -10150),
Mobs = {string.char(83,101,97,32,83,111,108,100,105,101,114),string.char(87,97,116,101,114,32,70,105,103,104,116,101,114),
},
},
}
Core.Sea2_Islands = Sea2_Islands
getgenv().Sea2_Islands = Sea2_Islands
Sea3_Islands = {
[string.char(80,111,114,116,32,84,111,119,110)] = {
CFrame = CFrame.new(-290, 7, 5300),
Mobs = {string.char(80,105,114,97,116,101,32,77,105,108,108,105,111,110,97,105,114,101),string.char(80,105,115,116,111,108,32,66,105,108,108,105,111,110,97,105,114,101),
},
},
[string.char(72,121,100,114,97,32,73,115,108,97,110,100)] = {
CFrame = CFrame.new(5700, 600, 200),
Mobs = {string.char(68,114,97,103,111,110,32,67,114,101,119,32,87,97,114,114,105,111,114),string.char(68,114,97,103,111,110,32,67,114,101,119,32,65,114,99,104,101,114),string.char(70,101,109,97,108,101,32,73,115,108,97,110,100,101,114),string.char(71,105,97,110,116,32,73,115,108,97,110,100,101,114),
},
},
[string.char(71,114,101,97,116,32,84,114,101,101)] = {
CFrame = CFrame.new(2300, 25, -6400),
Mobs = {string.char(77,97,114,105,110,101,32,67,111,109,109,111,100,111,114,101),string.char(77,97,114,105,110,101,32,82,101,97,114,32,65,100,109,105,114,97,108),
},
},
[string.char(70,108,111,97,116,105,110,103,32,84,117,114,116,108,101)] = {
CFrame = CFrame.new(-12500, 330, -7500),
Mobs = {string.char(70,105,115,104,109,97,110,32,82,97,105,100,101,114),string.char(70,105,115,104,109,97,110,32,67,97,112,116,97,105,110),string.char(70,111,114,101,115,116,32,80,105,114,97,116,101),string.char(77,121,116,104,111,108,111,103,105,99,97,108,32,80,105,114,97,116,101),string.char(74,117,110,103,108,101,32,80,105,114,97,116,101),string.char(77,117,115,107,101,116,101,101,114,32,80,105,114,97,116,101),
},
},
[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)] = {
CFrame = CFrame.new(-9500, 140, 5500),
Mobs = {string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110),string.char(76,105,118,105,110,103,32,90,111,109,98,105,101),string.char(68,101,109,111,110,105,99,32,83,111,117,108),string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121),
},
},
[string.char(83,101,97,32,111,102,32,84,114,101,97,116,115)] = {
CFrame = CFrame.new(-2100, 38, -12000),
Mobs = {string.char(80,101,97,110,117,116,32,83,99,111,117,116),string.char(80,101,97,110,117,116,32,80,114,101,115,105,100,101,110,116),string.char(73,99,101,32,67,114,101,97,109,32,67,104,101,102),string.char(73,99,101,32,67,114,101,97,109,32,67,111,109,109,97,110,100,101,114),string.char(67,111,111,107,105,101,32,67,114,97,102,116,101,114),string.char(67,97,107,101,32,71,117,97,114,100),string.char(66,97,107,105,110,103,32,83,116,97,102,102),string.char(72,101,97,100,32,66,97,107,101,114),string.char(67,111,99,111,97,32,87,97,114,114,105,111,114),string.char(67,104,111,99,111,108,97,116,101,32,66,97,114,32,66,97,116,116,108,101,114),string.char(83,119,101,101,116,32,84,104,105,101,102),string.char(67,97,110,100,121,32,82,101,98,101,108),string.char(67,97,110,100,121,32,80,105,114,97,116,101),string.char(83,110,111,119,32,68,101,109,111,110),
},
},
[string.char(84,105,107,105,32,79,117,116,112,111,115,116)] = {
CFrame = CFrame.new(-16200, 90, -17300),
Mobs = {string.char(73,115,108,101,32,79,117,116,108,97,119),string.char(73,115,108,97,110,100,32,66,111,121),string.char(83,117,110,45,107,105,115,115,101,100,32,87,97,114,114,105,111,114),string.char(73,115,108,101,32,67,104,97,109,112,105,111,110),
},
},
[string.char(83,117,98,109,101,114,103,101,100,32,73,115,108,97,110,100)] = {
CFrame = CFrame.new(-3200, -10, -10000),
Mobs = {string.char(82,101,101,102,32,66,97,110,100,105,116),string.char(67,111,114,97,108,32,80,105,114,97,116,101),string.char(83,101,97,32,67,104,97,110,116,101,114),string.char(79,99,101,97,110,32,80,114,111,112,104,101,116),string.char(72,105,103,104,32,68,105,115,99,105,112,108,101),string.char(71,114,97,110,100,32,68,101,118,111,116,101,101),
},
},
}
Core.Sea3_Islands = Sea3_Islands
getgenv().Sea3_Islands = Sea3_Islands
Core.Island = World1 and Sea1_Islands or World2 and Sea2_Islands or World3 and Sea3_Islands or {}
IslandData = Core.Island
getgenv().IslandData = IslandData
Core.GetMobs = function()
local _0xB2FA = {}
local _0xBEF6 = IslandData
or Core.Island
or World1 and Sea1_Islands
or World2 and Sea2_Islands
or World3 and Sea3_Islands
or {}
for _0xFD54, v in pairs(_0xBEF6) do
if v.Mobs then
for _0xFD54, mob in ipairs(v.Mobs) do
if not table.find(_0xB2FA, mob) then
table.insert(_0xB2FA, mob)
end
end
end
end
table.sort(_0xB2FA)
return _0xB2FA
end
getgenv().GetMobs = Core.GetMobs
task.spawn(function()
local _0x94A4
while true do
if not task.wait(0.2) then
return
elseif _G.AutoFarmIsland and _G.SelectIsland and IslandData then
_0x94A4 = IslandData[_G.SelectIsland]
if _0x94A4 then
break
end
end
end
local _0xCB1F
repeat
local _0x2418 = _0x94A4.CFrame
local _0x3649 = {}
for _0xFD54, mob in ipairs(_0x94A4.Mobs) do
_0x3649[mob] = true
end
local _0x6667 = false
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
_0x3649[child.Name]
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child.Humanoid.Health > 0
then
_0x6667 = true
while true do
task.wait()
_tp(child.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
Attack.Kill(child, true)
if not _G.AutoFarmIsland then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
if not _0x6667 then
_tp(_0x2418)
end
_0xCB1F = nil
while task.wait(0.2) do
if _G.AutoFarmIsland and _G.SelectIsland and IslandData then
_0x94A4 = IslandData[_G.SelectIsland]
if _0x94A4 then
_0xCB1F = 1
break
end
end
end
until _0xCB1F ~= 1
end)
do
task.spawn(function()
while task.wait(1) do
pcall(function()
if _G.FarmEliteHunt then
local _0x7CC5 = GuiShown(string.char(81,117,101,115,116))
local _0xCBDA = QuestText()
if _0x7CC5 then
local _0x2EFE
local _0x44D9, _0x7552, _0x1EE6 = pairs({string.char(68,105,97,98,108,111),string.char(85,114,98,97,110),string.char(68,101,97,110,100,114,101),
})
local _0xFD52 = _0xB921(_0x44D9, _0x7552, _0x1EE6)
while true do
local _0xE34E = table.pack(_0xFD52())
if not _0xE34E[1] then
break
end
local _0xDBF6 = _0xE34E[3]
if string.find(_0xCBDA, _0xDBF6) then
_0x2EFE = _0xDBF6
break
end
end
if _0x2EFE then
local _0x37C4
local _0x8AF8, _0xF925, _0xE0E4 = pairs(replicated:GetChildren())
local _0xA514 = _0xB921(_0x8AF8, _0xF925, _0xE0E4)
while true do
local _0x96C5 = table.pack(_0xA514())
if not _0x96C5[1] then
break
end
local _0x282E = _0x96C5[3]
if _0x282E.Name == _0x2EFE and _0x282E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_0x37C4 = _0x282E
break
end
end
if not _0x37C4 then
local _0x9113, _0xF9B1, _0x979B = pairs(Enemies:GetChildren())
for _0xFD54, v in _0x9113, _0xF9B1, _0x979B do
if v.Name == _0x2EFE and Attack.Alive(v) then
_0x37C4 = v
break
end
end
end
if _0x37C4 and _0x37C4:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_tp(_0x37C4.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
while true do
task.wait()
Attack.Kill(_0x37C4, _G.FarmEliteHunt)
if not _G.FarmEliteHunt then
break
elseif not _0x37C4.Parent or _0x37C4.Humanoid.Health <= 0 or not GuiShown(string.char(81,117,101,115,116)) then
break
end
end
else
task.wait(5)
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
else
local _0x21D1 = replicated.Remotes.CommF_:InvokeServer(string.char(69,108,105,116,101,72,117,110,116,101,114))
if _0x21D1 == nil or string.find(tostring(_0x21D1),string.char(67,111,111,108,100,111,119,110)) then
task.wait(10)
return
end
task.wait(1)
end
end
end)
end
end)
end
HopServer = function()
local _0xF376 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0xED22 = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _0x6CB1 =""local _0x43EA = false
repeat
local _0x78C0, _0x22CD = pcall(function()
return game:HttpGet(string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47).. game.PlaceId
..string.char(47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,65,115,99,38,108,105,109,105,116,61,49,48,48,38,99,117,114,115,111,114,61).. _0x6CB1
)
end)
if _0x78C0 and _0x22CD then
local _0x185E = _0xF376:JSONDecode(_0x22CD)
if _0x185E.data then
for _0xFD54, v in pairs(_0x185E.data) do
if v.playing < v.maxPlayers and v.id ~= game.JobId then
_0x43EA = true
_0xED22:TeleportToPlaceInstance(game.PlaceId, v.id)
break
end
end
_0x6CB1 = _0x185E.nextPageCursor or""end
end
until not _0x6CB1 or _0x43EA
end
task.spawn(function()
while task.wait(1) do
pcall(function()
if _G.FarmEliteH then
local _0x7CC5 = GuiShown(string.char(81,117,101,115,116))
local _0xE9BF = QuestText()
if _0x7CC5 then
local _0x4E60
local _0x3E2A, _0x302D, _0x0736 = pairs({string.char(68,105,97,98,108,111),string.char(85,114,98,97,110),string.char(68,101,97,110,100,114,101),
})
local _0x27AF = _0xB921(_0x3E2A, _0x302D, _0x0736)
while true do
local _0x9C0D = table.pack(_0x27AF())
if not _0x9C0D[1] then
break
end
local _0x2083 = _0x9C0D[3]
if string.find(_0xE9BF, _0x2083) then
_0x4E60 = _0x2083
break
end
end
if _0x4E60 then
local _0x90EE
local _0xED17, _0x9E02, _0x4263 = pairs(replicated:GetChildren())
local _0x36F4 = _0xB921(_0xED17, _0x9E02, _0x4263)
while true do
local _0x6D81 = table.pack(_0x36F4())
if not _0x6D81[1] then
break
end
local _0xB83B = _0x6D81[3]
if _0xB83B.Name == _0x4E60 and _0xB83B:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_0x90EE = _0xB83B
break
end
end
local _0x7DE9, _0xD98C, _0xD84C = pairs(workspace.Enemies:GetChildren())
for _0xFD54, v in _0x7DE9, _0xD98C, _0xD84C do
if v.Name == _0x4E60 then
if Attack.Alive(v) then
_0x90EE = v
break
end
end
end
if _0x90EE and _0x90EE:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_tp(_0x90EE.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
while true do
task.wait()
Attack.Kill(_0x90EE, _G.FarmEliteH)
if not _G.FarmEliteH then
break
elseif not _0x90EE.Parent or _0x90EE.Humanoid.Health <= 0 or not GuiShown(string.char(81,117,101,115,116)) then
break
end
end
else
task.wait(5)
HopServer()
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
else
local _0x21D1 = replicated.Remotes.CommF_:InvokeServer(string.char(69,108,105,116,101,72,117,110,116,101,114))
if _0x21D1 == nil or string.find(tostring(_0x21D1),string.char(67,111,111,108,100,111,119,110)) then
HopServer()
return
end
task.wait(1)
end
end
end)
end
end)
task.spawn(function()
local _0xCE41 = Vector3.new(-5097.93164, 316.447021, -3142.66602)
local _0x66D1 = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
local _0x9A8A = 0
local _0xF403 = task.wait
local _0x61E0 = Sec
while _0xF403(_0x61E0) do
pcall(function()
if _G.AutoRipIngay then
local _0xC6EE = GetConnectionEnemies({string.char(114,105,112,95,105,110,100,114,97),string.char(114,105,112,95,105,110,100,114,97,32,84,114,117,101,32,70,111,114,109),
})
if _0xC6EE then
local _0xC26C = tick() + 120
while true do
task.wait()
Attack.Kill(_0xC6EE, _G.AutoRipIngay)
if not _G.AutoRipIngay then
break
elseif not _0xC6EE.Parent or _0xC6EE.Humanoid.Health <= 0 or _0xC26C < tick() then
break
end
end
else
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0x1327
and (_0x1327.Position - _0x66D1.Position).Magnitude > 400
and tick() - _0x9A8A > 5
then
_0x9A8A = tick()
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101), _0xCE41)
task.wait(0.1)
end
_tp(_0x66D1)
end
end
end)
_0xF403 = task.wait
_0x61E0 = Sec
end
end)
AuraSkin = function(p69)
local _0x46F1 = { {
StorageName = p69,
Type =string.char(65,117,114,97,83,107,105,110),
Context =string.char(69,113,117,105,112),
} }
replicated
:WaitForChild(string.char(77,111,100,117,108,101,115))
:WaitForChild(string.char(78,101,116))
:WaitForChild(string.char(82,70,47,70,114,117,105,116,67,117,115,116,111,109,105,122,101,114,82,70))
:InvokeServer(unpack(_0x46F1))
end
VaildColor = function(p70)
if p70 then
if p70.BrickColor then
return tostring(p70.BrickColor) ==string.char(76,105,109,101,32,103,114,101,101,110)end
end
end
HakiCalculate = function(p71)
local _0x385C = {
[string.char(82,101,97,108,108,121,32,114,101,100)] =string.char(80,117,114,101,32,82,101,100),
Oyster =string.char(83,110,111,119,32,87,104,105,116,101),
[string.char(72,111,116,32,112,105,110,107)] =string.char(87,105,110,116,101,114,32,83,107,121),
}
if p71 and p71.BrickColor then
return _0x385C[tostring(p71.BrickColor)]
end
end
task.spawn(function()
while task.wait(Sec) do
if _G.AutoUnHaki then
pcall(function()
local _0x1B42 = workspace.Map[string.char(66,111,97,116,32,67,97,115,116,108,101)]:FindFirstChild(string.char(83,117,109,109,111,110,101,114))
if _0x1B42 and _0x1B42:FindFirstChild(string.char(67,105,114,99,108,101)) then
local _0x7490 = pairs
local _0x0033 = _0x1B42:FindFirstChild(string.char(67,105,114,99,108,101))
for _0xFD54, child in _0x7490(_0x0033:GetChildren()) do
if child.Name ==string.char(80,97,114,116)then
local _0x5A8B = child:FindFirstChild(string.char(80,97,114,116))
if VaildColor(_0x5A8B) == false then
AuraSkin(HakiCalculate(child))
while true do
task.wait()
_tp(child.CFrame)
if VaildColor(_0x5A8B) == true then
break
elseif not _G.AutoUnHaki then
break
end
end
end
end
end
end
end)
end
end
end)
task.spawn(function()
while task.wait() do
if _G.Auto_Cake_Prince and not _G.AutoRaidCastle then
local _0xCB1F
repeat
pcall(function()
local _0xCDC7 = game.Players.LocalPlayer
local _0x1327 = _0xCDC7.Character
and _0xCDC7.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xF1CA = workspace.Map:FindFirstChild(string.char(67,97,107,101,76,111,97,102))
local _0xF111 = _0xF1CA and _0xF1CA:FindFirstChild(string.char(66,105,103,77,105,114,114,111,114))
if not _0x1327 then
return
end
local _0x96AF, _0x7CA9
if not _G.AcceptQuestC or _G.CheckQuestVisible(_0xCDC7) then
if _0xF1CA then
if
_0xF111
and (
_0xF111.Other.Transparency == 0 or workspace.Enemies:FindFirstChild(string.char(67,97,107,101,32,80,114,105,110,99,101))
)
then
_0x7CA9 = GetConnectionEnemies(string.char(67,97,107,101,32,80,114,105,110,99,101))
if _0x7CA9 then
while true do
task.wait()
Attack.Kill2(_0x7CA9, _G.Auto_Cake_Prince)
if not _G.Auto_Cake_Prince then
break
elseif not _0x7CA9.Parent or _0x7CA9.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-2151.82, 149.32, -12404.91))
end
else
_0x96AF = GetConnectionEnemies({string.char(67,111,111,107,105,101,32,67,114,97,102,116,101,114),string.char(67,97,107,101,32,71,117,97,114,100),string.char(66,97,107,105,110,103,32,83,116,97,102,102),string.char(72,101,97,100,32,66,97,107,101,114),
})
if _0x96AF then
while true do
task.wait()
Attack.Kill(_0x96AF, _G.Auto_Cake_Prince)
if not _G.Auto_Cake_Prince then
break
elseif
not _0x96AF.Parent
or _0x96AF.Humanoid.Health <= 0
or _0xF111 and _0xF111.Other.Transparency == 0
then
break
end
end
else
_tp(CFrame.new(-2077, 252, -12373))
end
end
return
end
else
local _0x66D1 = CFrame.new(-1927.92, 37.8, -12842.54)
_tp(_0x66D1)
while (_0x66D1.Position - _0x1327.Position).Magnitude > 50 do
task.wait(0.2)
end
local _0xE460 = math.random(1, 4)
local _0xD1C6 = {
{string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,97,107,101,81,117,101,115,116,50),
2,
},
{string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,97,107,101,81,117,101,115,116,50),
1,
},
{string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,97,107,101,81,117,101,115,116,49),
1,
},
{string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,97,107,101,81,117,101,115,116,49),
2,
},
}
pcall(function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(_0xD1C6[_0xE460]))
end)
if _0xF1CA then
if
_0xF111
and (
_0xF111.Other.Transparency == 0 or workspace.Enemies:FindFirstChild(string.char(67,97,107,101,32,80,114,105,110,99,101))
)
then
_0x7CA9 = GetConnectionEnemies(string.char(67,97,107,101,32,80,114,105,110,99,101))
if not _0x7CA9 then
_tp(CFrame.new(-2151.82, 149.32, -12404.91))
return
end
while true do
task.wait()
Attack.Kill2(_0x7CA9, _G.Auto_Cake_Prince)
if not _G.Auto_Cake_Prince then
break
elseif not _0x7CA9.Parent or _0x7CA9.Humanoid.Health <= 0 then
break
end
end
else
_0x96AF = GetConnectionEnemies({string.char(67,111,111,107,105,101,32,67,114,97,102,116,101,114),string.char(67,97,107,101,32,71,117,97,114,100),string.char(66,97,107,105,110,103,32,83,116,97,102,102),string.char(72,101,97,100,32,66,97,107,101,114),
})
if _0x96AF then
while true do
task.wait()
Attack.Kill(_0x96AF, _G.Auto_Cake_Prince)
if not _G.Auto_Cake_Prince then
break
elseif
not _0x96AF.Parent
or _0x96AF.Humanoid.Health <= 0
or _0xF111 and _0xF111.Other.Transparency == 0
then
break
end
end
else
_tp(CFrame.new(-2077, 252, -12373))
end
end
return
end
end
_tp(CFrame.new(-2077, 252, -12373))
task.wait(2)
end)
_0xCB1F = nil
while task.wait() do
if _G.Auto_Cake_Prince and not _G.AutoRaidCastle then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
task.spawn(function()
while task.wait(2) do
if _G.AutoSpawnCP then
pcall(function()
local _0x3003 = game.ReplicatedStorage.Remotes.CommF_
local _0xF111 = workspace.Map.CakeLoaf:FindFirstChild(string.char(66,105,103,77,105,114,114,111,114))
if not _0xF111 then
return
end
if workspace.Enemies:FindFirstChild(string.char(67,97,107,101,32,80,114,105,110,99,101)) then
return
end
if _0xF111.Other.Transparency == 0 then
return
end
_0x3003:InvokeServer(string.char(67,97,107,101,80,114,105,110,99,101,83,112,97,119,110,101,114), true)
end)
end
end
end)
task.spawn(function()
while task.wait() do
if _G.AutoDoughKing then
pcall(function()
if workspace.Map.CakeLoaf:FindFirstChild(string.char(82,101,100,68,111,111,114)) then
if not workspace.Map.CakeLoaf:FindFirstChild(string.char(82,101,100,68,111,111,114)) then
if GetConnectionEnemies(string.char(68,111,117,103,104,32,75,105,110,103)) then
local _0xF424 = GetConnectionEnemies(string.char(68,111,117,103,104,32,75,105,110,103))
if _0xF424 then
while true do
task.wait()
Attack.Kill(_0xF424, _G.AutoDoughKing)
if not _G.AutoDoughKing then
break
elseif not _0xF424.Parent or _0xF424.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375))
end
end
elseif GetBP(string.char(82,101,100,32,75,101,121)) then
while true do
task.wait()
_tp(
CFrame.new(
-2681.97998,
64.3921585,
-12853.7363,
0.149007782,
-1.87902192e-08,
0.98883605,
3.60619588e-08,
1,
1.35681812e-08,
-0.98883605,
3.36376011e-08,
0.149007782
)
)
if not getgenv().AutoDoughKing then
break
elseif
(plr.Character.HumanoidRootPart.CFrame - CFrame.new(
-2681.97998,
64.3921585,
-12853.7363,
0.149007782,
-1.87902192e-08,
0.98883605,
3.60619588e-08,
1,
1.35681812e-08,
-0.98883605,
3.36376011e-08,
0.149007782
)).Magnitude <= 5
then
break
end
end
EquipWeapon(string.char(82,101,100,32,75,101,121))
end
elseif GetBP(string.char(82,101,100,32,75,101,121)) then
replicated.Remotes.CommF_:InvokeServer(string.char(67,97,107,101,83,99,105,101,110,116,105,115,116),string.char(67,104,101,99,107))
replicated.Remotes.CommF_:InvokeServer(string.char(82,97,105,100,115,78,112,99),string.char(67,104,101,99,107))
end
if GetBP(string.char(83,119,101,101,116,32,67,104,97,108,105,99,101)) then
replicated.Remotes.CommF_:InvokeServer(string.char(67,97,107,101,80,114,105,110,99,101,83,112,97,119,110,101,114), true)
_G.AutoAttackDoughKing = true
else
_G.AutoAttackDoughKing = false
end
if GetBP(string.char(71,111,100,39,115,32,67,104,97,108,105,99,101)) and GetM(string.char(67,111,110,106,117,114,101,100,32,67,111,99,111,97)) >= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(83,119,101,101,116,67,104,97,108,105,99,101,78,112,99))
end
local _0x78C0 = not plr.Backpack:FindFirstChild(string.char(71,111,100,39,115,32,67,104,97,108,105,99,101))
if not _0x78C0 then
_0x78C0 = plr.Character:FindFirstChild(string.char(71,111,100,39,115,32,67,104,97,108,105,99,101))
end
if _0x78C0 then
_G.FarmEliteHunt = true
else
_G.FarmEliteHunt = false
end
if GetM(string.char(67,111,110,106,117,114,101,100,32,67,111,99,111,97)) <= 10 then
local _0x275A = GetConnectionEnemies({string.char(67,111,99,111,97,32,87,97,114,114,105,111,114),string.char(67,104,111,99,111,108,97,116,101,32,66,97,114,32,66,97,116,116,108,101,114),
})
if _0x275A then
while true do
task.wait()
Attack.Kill(_0x275A, _G.AutoDoughKing)
if _G.AutoDoughKing == false then
break
elseif not _0x275A.Parent or _0x275A.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(402.71890258789062, 81.060501098632812, -12259.54296875))
end
end
end)
end
end
end)
task.spawn(function()
while task.wait() do
if _G.AutoAttackDoughKing then
pcall(function()
local _0x0589 = GetConnectionEnemies(string.char(68,111,117,103,104,32,75,105,110,103))
if _0x0589 then
while true do
task.wait()
Attack.Kill(_0x0589, _G.AutoAttackDoughKing)
if not _G.AutoAttackDoughKing then
break
elseif not _0x0589.Parent or _0x0589.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-1943.6765, 251.5095, -12337.8809))
end
end)
end
end
end)
task.spawn(function()
while task.wait() do
if _G.AutoHop_Dough then
pcall(function()
local _0x6422 = GetConnectionEnemies(string.char(68,111,117,103,104,32,75,105,110,103))
if _0x6422 then
while true do
task.wait()
Attack.Kill(_0x6422, _G.AutoHop_Dough)
if not _G.AutoHop_Dough then
break
elseif not _0x6422.Parent or _0x6422.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-1943.6765, 251.5095, -12337.8809))
task.wait(2)
HopServer()
end
end)
end
end
end)
do
task.spawn(function()
local _0xCDC7 = game.Players.LocalPlayer
local _0xC088 = {string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110),string.char(76,105,118,105,110,103,32,90,111,109,98,105,101),string.char(68,101,109,111,110,105,99,32,83,111,117,108),string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121),
}
local _0x842E = {
{string.char(72,97,117,110,116,101,100,81,117,101,115,116,49),
1,string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110),
1975,
},
{string.char(72,97,117,110,116,101,100,81,117,101,115,116,49),
2,string.char(76,105,118,105,110,103,32,90,111,109,98,105,101),
2000,
},
{string.char(72,97,117,110,116,101,100,81,117,101,115,116,50),
1,string.char(68,101,109,111,110,105,99,32,83,111,117,108),
2025,
},
{string.char(72,97,117,110,116,101,100,81,117,101,115,116,50),
2,string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121),
2050,
},
}
local _0x7708 = {
CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125),
PosMsList[string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110)],
PosMsList[string.char(76,105,118,105,110,103,32,90,111,109,98,105,101)],
PosMsList[string.char(68,101,109,111,110,105,99,32,83,111,117,108)],
}
local _0x8C45 = 1
local _0x3738
QuestWantedMob = function()
local _0x78C0, _0x22CD = pcall(function()
local _0x7CC5 = _0xCDC7.PlayerGui.Main.Quest
if _0x7CC5.Visible then
return _0x7CC5.Container.QuestTitle.Title.Text
end
return nil
end)
if not _0x78C0 or not _0x22CD then
return nil
end
local _0xBFD2 = string.lower(_0x22CD)
for _0xFD54, v in ipairs(_0x842E) do
local _0xEC3D = string.lower(v[3])
if not string.find(_0xBFD2, string.sub(_0xEC3D, 1, #_0xEC3D - 1), 1, true) then
continue
end
return v[3]
end
return nil
end
while task.wait(0.5) do
if _G.AutoFarm_Bone then
local _0xCB1F
repeat
pcall(function()
local _0x1327 = _0xCDC7.Character
and _0xCDC7.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
if _G.AcceptQuestB and not _G.CheckQuestVisible(_0xCDC7) then
local _0x66D1 = CFrame.new(-9516.99316, 172.01718, 6078.46533)
local _0xAA6C = tick() + 45
while true do
_tp(_0x66D1)
task.wait(0.5)
_0x1327 = _0xCDC7.Character
and _0xCDC7.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _G.AutoFarm_Bone then
if
_0x1327
and not ((_0x66D1.Position - _0x1327.Position).Magnitude <= 50)
and not (_0xAA6C < tick())
then
continue
end
end
break
end
if
not _G.AutoFarm_Bone
or not _0x1327
or (_0x66D1.Position - _0x1327.Position).Magnitude > 50
then
return
end
local _0xDA8F = _0xCDC7.Data.Level.Value
local _0x84B3 = {}
for _0xFD54, v in ipairs(_0x842E) do
if v[4] <= _0xDA8F then
table.insert(_0x84B3, v)
end
end
if #_0x84B3 > 0 then
local _0xD736 = _0x84B3[math.random(1, #_0x84B3)]
game.ReplicatedStorage.Remotes.CommF_:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116), _0xD736[1], _0xD736[2])
end
end
local _0xFF86 = QuestWantedMob()
local _0xCE88 = GetNearestEnemy(_0xFF86 and { _0xFF86 } or _0xC088)
if _0xCE88 then
_0x3738 = nil
local _0xE644 = tick() + 30
while true do
task.wait()
Attack.Kill(_0xCE88, true)
if not _G.AutoFarm_Bone then
break
elseif not _0xCE88.Parent or _0xCE88.Humanoid.Health <= 0 or _0xE644 < tick() then
break
end
end
elseif GetConnectionEnemies(_0xFF86 and { _0xFF86 } or _0xC088) then
local _0xECEA = GetConnectionEnemies(_0xFF86 and { _0xFF86 } or _0xC088)
if _0xECEA and _0xECEA:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_tp(_0xECEA.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
end
else
local _0x38F2
if _0xFF86 and PosMsList[_0xFF86] then
_0x38F2 = PosMsList[_0xFF86]
else
_0x38F2 = _0x7708[_0x8C45]
if (_0x38F2.Position - _0x1327.Position).Magnitude <= 60 then
_0x3738 = _0x3738 or tick()
if tick() - _0x3738 > 5 then
_0x8C45 = _0x8C45 % #_0x7708 + 1
_0x3738 = nil
end
else
_0x3738 = nil
end
end
_tp(_0x38F2)
end
end)
_0xCB1F = nil
while task.wait(0.5) do
if _G.AutoFarm_Bone then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
end
task.spawn(function()
while task.wait(Sec) do
if _G.AutoHytHallow then
local _0xCB1F
repeat
pcall(function()
local _0xFDEB = GetConnectionEnemies(string.char(83,111,117,108,32,82,101,97,112,101,114))
if _0xFDEB then
while true do
task.wait()
Attack.Kill(_0xFDEB, _G.AutoHytHallow)
if _0xFDEB.Humanoid.Health <= 0 then
break
elseif _G.AutoHytHallow == false then
break
end
end
elseif GetBP(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101)) then
while true do
task.wait(0.1)
_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
if _G.AutoHytHallow == false then
break
elseif
plr.Character.HumanoidRootPart.CFrame
== CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
then
break
end
end
EquipWeapon(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101))
else
while true do
task.wait(0.1)
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
if _G.AutoHytHallow == false then
break
elseif GetBP(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101)) then
break
end
end
end
end)
_0xCB1F = nil
while task.wait(Sec) do
if _G.AutoHytHallow then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
task.spawn(function()
if task.wait(Sec) then
repeat
pcall(function()
if _G.Auto_Random_Bone then
repeat
task.wait()
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
until not _G.Auto_Random_Bone
end
end)
until not task.wait(Sec)
end
end)
do
task.spawn(function()
while task.wait(Sec) do
if _G.TryLucky then
local _0x66D1 = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
if plr.Character.HumanoidRootPart.CFrame ~= _0x66D1 then
_tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
continue
end
if plr.Character.HumanoidRootPart.CFrame ~= _0x66D1 then
continue
end
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 1)
end
end
end)
end
do
task.spawn(function()
while task.wait(Sec) do
if _G.Praying then
local _0x66D1 = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
if plr.Character.HumanoidRootPart.CFrame ~= _0x66D1 then
_tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
elseif plr.Character.HumanoidRootPart.CFrame == _0x66D1 then
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 2)
end
end
end
end)
end
Check_Eye = function()
local _0x8E13 = workspace.Map.TikiOutpost.IslandModel
local _0xBABC = 0
for _0xFD54, v in ipairs({
_0x8E13.Eye1,
_0x8E13.Eye2,
_0x8E13.IslandChunks.E.Eye3,
_0x8E13.IslandChunks.E.Eye4,
}) do
if v and v.Transparency ~= 1 then
_0xBABC += 1
end
end
return _0xBABC, _0xBABC == 4
end
task.spawn(function()
while task.wait(Sec) do
if _G.FarmTyrant then
local _0xCB1F
repeat
pcall(function()
if not plr.Character then
return
end
local _0x1327 = plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
local _0xCE41 = Vector3.new(-16268.287, 152.616, 1390.773)
if (_0x1327.Position - _0xCE41).Magnitude > 5 then
_tp(CFrame.new(_0xCE41))
while true do
task.wait()
if not _G.FarmTyrant then
break
end
if not plr.Character then
continue
elseif
not plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or not ((plr.Character.HumanoidRootPart.Position - _0xCE41).Magnitude <= 5)
then
continue
end
break
end
end
local _0xDF22 = workspace.Enemies:FindFirstChild(string.char(84,121,114,97,110,116,32,111,102,32,116,104,101,32,83,107,105,101,115))
if
_0xDF22
and _0xDF22:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and _0xDF22.Humanoid.Health > 0
then
while _G.FarmTyrant do
if Attack and Attack.Kill then
Attack.Kill(_0xDF22, _G.FarmTyrant)
end
task.wait()
if
not _G.FarmTyrant
or not _0xDF22.Parent
or _0xDF22.Humanoid.Health <= 0
then
break
end
end
return
end
for _0xFD54, v in ipairs({string.char(83,101,114,112,101,110,116,32,72,117,110,116,101,114),string.char(83,107,117,108,108,32,83,108,97,121,101,114),string.char(73,115,108,101,32,67,104,97,109,112,105,111,110),string.char(83,117,110,45,107,105,115,115,101,100,32,87,97,114,114,105,111,114),
}) do
if not _G.FarmTyrant then
break
end
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if not _G.FarmTyrant then
break
end
if
child
and child.Name == v
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child.Humanoid.Health > 0
then
if (_0x1327.Position - child.HumanoidRootPart.Position).Magnitude > 5000 then
_tp(child.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
local _0x3738 = tick()
repeat
task.wait()
_0x1327 = plr.Character
and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
until not _G.FarmTyrant
or not _0x1327
or (_0x1327.Position - child.HumanoidRootPart.Position).Magnitude <= 6
or tick() - _0x3738 > 8
end
while _G.FarmTyrant do
if Attack and Attack.Kill then
Attack.Kill(child, _G.FarmTyrant)
end
task.wait()
if not _G.FarmTyrant or not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end)
_0xCB1F = nil
while task.wait(Sec) do
if _G.FarmTyrant then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
sendSkillKey = function(p72)
local _0xA8C5 = game:GetService(string.char(86,105,114,116,117,97,108,73,110,112,117,116,77,97,110,97,103,101,114))
_0xA8C5:SendKeyEvent(true, p72, false, game)
task.wait(0.05)
_0xA8C5:SendKeyEvent(false, p72, false, game)
end
equipAndUseSkill = function(p73)
if not plr.Character or not plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) or not (plr.Character.Humanoid.Health > 0) then
return
end
for _0xFD54, child in pairs(plr.Backpack:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.ToolTip == p73 then
child.Parent = plr.Character
task.wait(0.12)
for _0xFD54, v in ipairs({string.char(90),string.char(88),string.char(67),string.char(86),string.char(70),
}) do
if _G.FarmPhaBinh then
pcall(function()
sendSkillKey(v)
end)
task.wait(0.12)
else
break
end
end
child.Parent = plr.Backpack
return
end
end
end
local _0x12EA = {
CFrame.new(-16332.5263671875, 158.07200622558594, 1440.324951171875),
CFrame.new(-16288.609375, 158.16700744628906, 1470.3680419921875),
CFrame.new(-16245.412109375, 158.43699645996094, 1463.365966796875),
CFrame.new(-16212.46875, 158.16700744628906, 1466.343994140625),
CFrame.new(-16211.9462890625, 158.07200622558594, 1322.39794921875),
CFrame.new(-16260.921875, 154.92100524902344, 1323.615966796875),
CFrame.new(-16297.0595703125, 159.322998046875, 1317.2239990234375),
CFrame.new(-16335.0966796875, 159.33399963378906, 1324.885986328125),
}
Core.PhaBinhPoints = _0x12EA
task.spawn(function()
while task.wait(Sec) do
if _G.FarmPhaBinh then
pcall(function()
if plr and plr.Character then
if plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
if plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) and plr.Character.Humanoid.Health > 0 then
for _0xFD54, phaBinhPoint in ipairs(_0x12EA) do
if not _G.FarmPhaBinh then
break
end
_tp(phaBinhPoint)
local _0xE613 = false
local _0x3738 = tick()
while tick() - _0x3738 < 12 and _G.FarmPhaBinh do
local _0x1327 = plr.Character
and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
break
end
if (_0x1327.Position - phaBinhPoint.Position).Magnitude <= 3 then
_0xE613 = true
break
end
task.wait(0.1)
end
if _G.FarmPhaBinh and _0xE613 then
equipAndUseSkill(string.char(77,101,108,101,101))
equipAndUseSkill(string.char(83,119,111,114,100))
equipAndUseSkill(string.char(71,117,110))
end
end
return
end
end
end
end)
end
end
end)
do
task.spawn(function()
processEnemy = function(p74, p75)
if
p74:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and p74:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and p74.Humanoid.Health > 0
then
if p74.Name == p75 then
while true do
task.wait()
Attack.Kill(p74, getgenv().AutoMaterial)
if not getgenv().AutoMaterial or not p74.Parent then
break
elseif p74.Humanoid.Health <= 0 then
break
end
end
end
end
end
handleEnemySpawns = function()
for _0xFD54, child in pairs(game:GetService(string.char(87,111,114,107,115,112,97,99,101))._WorldOrigin.EnemySpawns:GetChildren()) do
for _0xFD54, v in ipairs(MMon) do
if string.find(child.Name, v) then
if
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - child.Position).Magnitude
>= 10
then
_tp(child.CFrame * Pos)
end
end
end
end
end
while task.wait() do
if getgenv().AutoMaterial then
pcall(function()
if getgenv().SelectMaterial then
MaterialMon(getgenv().SelectMaterial)
_tp(MPos)
end
for _0xFD54, v in ipairs(MMon) do
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
processEnemy(child, v)
end
end
handleEnemySpawns()
end)
end
end
end)
end
task.spawn(function()
while task.wait(Sec) do
if _G.FarmBoss then
local _0xCB1F
repeat
pcall(function()
local _0x6BFA = QuestBeta()[2] ~= nil and QuestBeta()[3] ~= nil
local _0x9E8C = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
if _G.AcceptQuestBoss and _0x6BFA then
if not string.find(_0x9E8C, QuestBeta()[0]) then
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
if plr.PlayerGui.Main.Quest.Visible == false then
_tp(QuestBeta()[5])
if (Root.Position - QuestBeta()[5].Position).Magnitude <= 5 then
replicated.Remotes.CommF_:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116), QuestBeta()[3], QuestBeta()[2])
end
elseif plr.PlayerGui.Main.Quest.Visible == true then
if workspace.Enemies:FindFirstChild(QuestBeta()[1]) then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if Attack.Alive(child) and child.Name == QuestBeta()[1] then
if string.find(_0x9E8C, QuestBeta()[0]) then
while true do
task.wait()
Attack.Kill(child, _G.FarmBoss)
if not _G.FarmBoss then
break
elseif
child.Humanoid.Health <= 0
or not child.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
end
end
else
_tp(QuestBeta()[4])
if replicated:FindFirstChild(QuestBeta()[1]) then
_tp(
replicated:FindFirstChild(QuestBeta()[1]).HumanoidRootPart.CFrame
* CFrame.new(0, 30, 0)
)
end
end
end
elseif workspace.Enemies:FindFirstChild(QuestBeta()[1]) then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if Attack.Alive(child) and child.Name == QuestBeta()[1] then
while true do
task.wait()
Attack.Kill(child, _G.FarmBoss)
if not _G.FarmBoss then
break
elseif child.Humanoid.Health <= 0 or not child.Parent then
break
end
end
end
end
else
_tp(QuestBeta()[4])
if replicated:FindFirstChild(QuestBeta()[1]) then
_tp(
replicated:FindFirstChild(QuestBeta()[1]).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
)
end
end
end)
_0xCB1F = nil
while task.wait(Sec) do
if _G.FarmBoss then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
task.spawn(function()
while task.wait(0.3) do
if _G.AutoFarmAllBoss then
pcall(function()
local _0xCDC7 = game.Players.LocalPlayer
if _0xCDC7.Character then
if _0xCDC7.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
local _0x1327 = _0xCDC7.Character.HumanoidRootPart
local _0xCD3E
local _0xD727 = math.huge
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) then
if child.Humanoid.Health > 0 and table.find(BossList, child.Name) then
local _0xA95F = (_0x1327.Position - child.HumanoidRootPart.Position).Magnitude
if _0xA95F < _0xD727 then
_0xCD3E = child
_0xD727 = _0xA95F
end
end
end
end
if _0xCD3E and _0xCD3E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
local _0xC1F1 = _0xCD3E.HumanoidRootPart
local _0xEABC = _0xCD3E.Humanoid
while true do
task.wait(0.1)
if _G.AutoFarmAllBoss then
local _0x423F = _0xC1F1.CFrame * CFrame.new(0, 5, 0)
if (_0x1327.Position - _0x423F.Position).Magnitude > 100 then
_0xCDC7.Character:PivotTo(_0x423F)
else
_tp(_0x423F)
end
if Attack and typeof(Attack.Kill) ==string.char(102,117,110,99,116,105,111,110)then
Attack.Kill(_0xCD3E, true)
end
if not _0xCD3E.Parent or _0xEABC.Health <= 0 or not _G.AutoFarmAllBoss then
break
end
else
break
end
end
end
return
end
end
end)
end
end
end)
RunSer.RenderStepped:Connect(function()
pcall(function()
if _G.FarmMastery_Dev or _G.FarmMastery_G or _G.FarmMastery_S then
for _0xFD54, child in pairs(plr.PlayerGui.Notifications:GetChildren()) do
if child.Name ==string.char(78,111,116,105,102,105,99,97,116,105,111,110,84,101,109,112,108,97,116,101)and string.find(child.Text,string.char(83,107,105,108,108,32,108,111,99,107,101,100,33)) then
child:Destroy()
end
end
end
end)
end)
local function _0xAAA2(p76)
if p76 ==string.char(67,97,107,101)then
return GetConnectionEnemies(mastery1), CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375)
end
if p76 ==string.char(66,111,110,101)then
return GetConnectionEnemies(mastery2), CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
end
if p76 ==string.char(83,101,108,101,99,116,101,100,32,77,111,98)then
if getgenv().SelectMob then
local _0xB468 = getgenv().SelectMob
local _0x16B2 = GetConnectionEnemies({ _0xB468 })
local _0x2418
if not _0x16B2 and IslandData then
for _0xFD54, v in pairs(IslandData) do
if v.Mobs and table.find(v.Mobs, _0xB468) and v.CFrame then
_0x2418 = v.CFrame
break
end
end
end
return _0x16B2, _0x2418
end
end
if World3 then
return GetConnectionEnemies(mastery1), CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375)
end
if getgenv().SelectMob then
return GetConnectionEnemies({ getgenv().SelectMob }), nil
end
return nil, nil
end
task.spawn(function()
while task.wait(Sec) do
if _G.FarmMastery_Dev or _G.Auto_Fruit_Mastery then
pcall(function()
local _0x6467, _0x5EA9 =
_0xAAA2(getgenv().SelectIslandMastery or _G.SelectIslandMastery or SelectIsland orstring.char(67,97,107,101))
if _0x6467 then
HealthM = _0x6467.Humanoid.MaxHealth * (_G.MasteryHealthPct or 70) / 100
while true do
task.wait()
MousePos = _0x6467.HumanoidRootPart.Position
Attack.Mas(_0x6467, _G.FarmMastery_Dev or _G.Auto_Fruit_Mastery)
if (_G.FarmMastery_Dev or _G.Auto_Fruit_Mastery) and not (_0x6467.Humanoid.Health <= 0) then
if _0x6467.Parent then
continue
end
end
break
end
elseif _0x5EA9 then
_tp(_0x5EA9)
end
end)
end
end
end)
task.spawn(function()
while task.wait(Sec) do
if _G.FarmMastery_G or _G.Auto_Gun_Mastery then
pcall(function()
local _0x0BC2 = getgenv().SelectIslandMastery or _G.SelectIslandMastery or SelectIsland
local _0xEA71, _0x7B83 = _0xAAA2(_0x0BC2 orstring.char(67,97,107,101))
if _0xEA71 then
HealthM = _0xEA71.Humanoid.MaxHealth * (_G.MasteryHealthPct or 70) / 100
local _0xCB1F
local _0x584D
while true do
task.wait()
MousePos = _0xEA71.HumanoidRootPart.Position
Attack.Masgun(_0xEA71, _G.FarmMastery_G or _G.Auto_Gun_Mastery)
local _0x7E35 = replicated:FindFirstChild(string.char(77,111,100,117,108,101,115))
local _0x0F66 = _0x7E35 and _0x7E35:FindFirstChild(string.char(78,101,116))
_0x584D = _0x0F66 and _0x0F66:FindFirstChild(string.char(82,69,47,83,104,111,111,116,71,117,110,69,118,101,110,116))
local _0xDE5F = plr.Character:FindFirstChildOfClass(string.char(84,111,111,108))
if not _0xDE5F or _0xDE5F.ToolTip ~=string.char(71,117,110)then
if
(_G.FarmMastery_G or _G.Auto_Gun_Mastery)
and not (_0xEA71.Humanoid.Health <= 0)
and _0xEA71.Parent
then
continue
end
elseif _0xDE5F.Name ==string.char(83,107,117,108,108,32,71,117,105,116,97,114)then
SoulGuitar = true
_0xDE5F.RemoteEvent:FireServer(string.char(84,65,80), MousePos)
vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
task.wait(0.05)
vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
task.wait(0.05)
if
not (
(_G.FarmMastery_G or _G.Auto_Gun_Mastery)
and not (_0xEA71.Humanoid.Health <= 0 or not _0xEA71.Parent)
)
then
break
end
else
SoulGuitar = false
if _0x584D then
_0xCB1F = 1
break
else
vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
task.wait(0.05)
vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
task.wait(0.05)
if
not (
(_G.FarmMastery_G or _G.Auto_Gun_Mastery)
and not (_0xEA71.Humanoid.Health <= 0 or not _0xEA71.Parent)
)
then
break
end
end
end
break
end
if _0xCB1F == 1 then
local _0x4660
repeat
_0x584D:FireServer(MousePos, { _0xEA71.HumanoidRootPart })
_0x4660 = nil
while true do
vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
task.wait(0.05)
vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
task.wait(0.05)
local _0x704A
while
(_G.FarmMastery_G or _G.Auto_Gun_Mastery)
and not (_0xEA71.Humanoid.Health <= 0)
and _0xEA71.Parent
do
task.wait()
MousePos = _0xEA71.HumanoidRootPart.Position
Attack.Masgun(_0xEA71, _G.FarmMastery_G or _G.Auto_Gun_Mastery)
local _0x7E35 = replicated:FindFirstChild(string.char(77,111,100,117,108,101,115))
local _0x0F66 = _0x7E35 and _0x7E35:FindFirstChild(string.char(78,101,116))
_0x584D = _0x0F66 and _0x0F66:FindFirstChild(string.char(82,69,47,83,104,111,111,116,71,117,110,69,118,101,110,116))
local _0xDE5F = plr.Character:FindFirstChildOfClass(string.char(84,111,111,108))
if _0xDE5F and _0xDE5F.ToolTip ==string.char(71,117,110)then
if _0xDE5F.Name ~=string.char(83,107,117,108,108,32,71,117,105,116,97,114)then
_0x704A = 1
break
end
SoulGuitar = true
_0xDE5F.RemoteEvent:FireServer(string.char(84,65,80), MousePos)
vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
task.wait(0.05)
vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
task.wait(0.05)
end
end
if _0x704A ~= 1 then
break
end
SoulGuitar = false
if not _0x584D then
continue
end
_0x4660 = 1
break
end
until _0x4660 ~= 1
end
SoulGuitar = false
elseif _0x7B83 then
_tp(_0x7B83)
end
end)
end
end
end)
task.spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.FarmMastery_S or _G.Auto_Mastery_All_Sword then
local _0x6CCF, _0xB356 =
_0xAAA2(getgenv().SelectIslandMastery or _G.SelectIslandMastery or SelectIsland orstring.char(67,97,107,101))
local _0xF298 = next
local _0x21D1, _0x1A62 = replicated.Remotes.CommF_:InvokeServer(string.char(103,101,116,73,110,118,101,110,116,111,114,121))
local _0xCB1F
local _0xF1D9
for _0xFD54, v in _0xF298, _0x21D1, _0x1A62 do
if type(v) ==string.char(116,97,98,108,101)and v.Type ==string.char(83,119,111,114,100)then
_0xF1D9 = v.Name
if tonumber(v.Mastery) >= 1 and tonumber(v.Mastery) <= 599 then
_0xCB1F = 1
break
elseif tonumber(v.Mastery) >= 600 and not GetBP(_0xF1D9) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109), _0xF1D9)
end
end
end
if _0xCB1F == 1 then
if not GetBP(_0xF1D9) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109), _0xF1D9)
elseif _0x6CCF then
repeat
task.wait()
Attack.Sword(_0x6CCF, _G.FarmMastery_S or _G.Auto_Mastery_All_Sword)
until not _G.FarmMastery_S and not _G.Auto_Mastery_All_Sword
or not _0x6CCF.Parent
or _0x6CCF.Humanoid.Health <= 0
elseif _0xB356 then
_tp(_0xB356)
end
end
end
end)
end
end)
Spawn(function()
while Wait(1) do
if _G.AutoHopServer then
pcall(function()
if not _G.HopTimer then
_G.HopTimer = tick()
end
if (_G.HopDelay or 1800) <= tick() - _G.HopTimer then
_G.HopTimer = tick()
if syn and syn.queue_on_teleport then
syn.queue_on_teleport(string.char(108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,39,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,98,108,111,120,102,114,117,105,116,115,110,111,107,101,121,47,82,101,100,122,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,67,104,101,115,116,39,41,41,40,41))
end
game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101)):Teleport(game.PlaceId, game.Players.LocalPlayer)
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if Boud then
local _0xB6F6 = {string.char(72,97,115,66,117,115,111),string.char(66,117,115,111),
}
if not plr.Character:FindFirstChild(_0xB6F6[1]) then
replicated.Remotes.CommF_:InvokeServer(_0xB6F6[2])
end
end
end)
end
end)
spawn(function()
while wait() do
if getgenv().Observation then
local _0xCB1F
repeat
pcall(function()
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommE:FireServer(string.char(75,101,110), true)
end)
_0xCB1F = nil
while wait() do
if getgenv().Observation then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
spawn(function()
while wait(0.2) do
pcall(function()
if _G.RaceClickAutov3 then
repeat
replicated.Remotes.CommE:FireServer(string.char(65,99,116,105,118,97,116,101,65,98,105,108,105,116,121))
wait(30)
until not _G.RaceClickAutov3
end
end)
end
end)
spawn(function()
while wait(0.2) do
pcall(function()
if _G.RaceClickAutov4 then
if plr.Character:FindFirstChild(string.char(82,97,99,101,69,110,101,114,103,121)) then
if plr.Character:FindFirstChild(string.char(82,97,99,101,69,110,101,114,103,121)).Value == 1 then
Useskills(string.char(110,105,108),string.char(89))
end
end
end
end)
end
end)
spawn(function()
if task.wait(Sec) then
repeat
pcall(function()
if _G.Safemode then
if plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth * 100 < Num_self then
shouldTween = true
_tp(Root.CFrame * CFrame.new(0, 500, 0))
else
shouldTween = false
return
end
end
end)
until not task.wait(Sec)
end
end)
local _0x6AF3 = {string.char(83,108,97,115,104,72,105,116),string.char(67,117,114,118,101,100,82,105,110,103),string.char(83,119,111,114,100,83,108,97,115,104),string.char(83,108,97,115,104,84,97,105,108),
}
task.spawn(function()
while task.wait(Sec) do
if _G.DestroyHit then
pcall(function()
for _0xFD54, child in pairs(workspace._WorldOrigin:GetChildren()) do
if table.find(_0x6AF3, child.Name) then
child:Destroy()
end
end
end)
end
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if RDeath then
if replicated.Effect.Container:FindFirstChild(string.char(68,101,97,116,104)) then
replicated.Effect.Container.Death:Destroy()
end
if replicated.Effect.Container:FindFirstChild(string.char(82,101,115,112,97,119,110)) then
replicated.Effect.Container.Respawn:Destroy()
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
pcall(function()
if RemoveDamage then
replicated.Assets.GUI.DamageCounter.Enabled = false
plr.PlayerGui.Notifications.Enabled = false
else
replicated.Assets.GUI.DamageCounter.Enabled = true
plr.PlayerGui.Notifications.Enabled = true
end
end)
end
end)
do
spawn(function()
if wait() then
repeat
pcall(function()
if getgenv().HopServerAdmin then
for _0xFD54, player in pairs(game.Players:GetPlayers()) do
if
table.find({string.char(114,101,100,95,103,97,109,101,52,51),string.char(114,105,112,95,105,110,100,114,97),string.char(65,120,105,111,114,101),string.char(80,111,108,107,115,116,101,114),string.char(119,101,110,108,111,99,107,116,111,97,100),string.char(68,97,105,103,114,111,99,107),string.char(116,111,105,108,97,109,118,105,100,97,109,109,101),string.char(111,111,102,102,105,99,105,97,108,110,111,111,98,105,101),string.char(85,122,111,116,104),string.char(65,122,97,114,116,104),string.char(97,114,108,116,104,109,101,116,105,99),string.char(68,101,97,116,104,95,75,105,110,103),string.char(76,117,110,111,118,101,110),string.char(84,104,101,71,114,101,97,116,101,65,99,101,100),string.char(114,105,112,95,102,117,100),string.char(100,114,105,112,95,109,97,109,97),string.char(108,97,121,97,110,100,105,107,105,116,49,50),string.char(72,105,110,103,111,105),
}, player.Name)
then
Hop()
end
end
end
end)
until not wait()
end
end)
end
spawn(function()
pcall(function()
game:GetService(string.char(82,117,110,83,101,114,118,105,99,101)).Stepped:Connect(function()
if getgenv().NoClip then
for _0xFD54, descendant in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) or descendant:IsA(string.char(80,97,114,116)) then
descendant.CanCollide = false
end
end
end
end)
end)
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Melee then
statsSetings(string.char(77,101,108,101,101), pSats)
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Sword then
statsSetings(string.char(83,119,111,114,100), pSats)
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Gun then
statsSetings(string.char(71,117,110), pSats)
end
end)
end
end)
do
spawn(function()
if wait(Sec) then
repeat
pcall(function()
if _G.Auto_DevilFruit then
statsSetings(string.char(68,101,118,105,108), pSats)
end
end)
until not wait(Sec)
end
end)
end
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Defense then
statsSetings(string.char(68,101,102,101,110,115,101), pSats)
end
end)
end
end)
task.spawn(function()
while task.wait(2) do
if _G.AutoBuyBait and _G.SelectedBait then
pcall(function()
replicated.Modules.Net[string.char(82,70,47,67,114,97,102,116)]:InvokeServer(string.char(67,114,97,102,116), _G.SelectedBait, {})
end)
end
end
end)
do
local _0x7872 = replicated:WaitForChild(string.char(70,105,115,104,82,101,112,108,105,99,97,116,101,100), 10)
local _0xA0F0 = _0x7872 and _0x7872:WaitForChild(string.char(70,105,115,104,105,110,103,82,101,113,117,101,115,116), 10)
local _0x8BE3 = _0x7872 and require(_0x7872.FishingClient.Config)
local _0x9A54 = require(replicated.Util.GetWaterHeightAtLocation)
local _0x5326 = _0x8BE3 and _0x8BE3.Rod and _0x8BE3.Rod.MaxLaunchDistance or 100
local _0x9200 = {
bite = false,
biteAt = 0,
casting = false,
castAt = 0,
blockedSince = nil,
}
task.spawn(function()
if not _0x7872 then
return
end
local function _0xFC57()
return _0x7872:WaitForChild(string.char(70,105,115,104,105,110,103,82,101,109,111,116,101), 15)
end
local _0x78C0, _0x22CD = pcall(_0xFC57)
if _0x78C0 and _0x22CD then
_0x22CD.OnClientEvent:Connect(function(p77, p78)
if p77 ~= plr then
return
end
if p78 ==string.char(83,112,97,119,110,70,105,115,104,79,110,66,111,98)then
_0x9200.bite = true
_0x9200.biteAt = tick()
elseif p78 ==string.char(82,101,115,101,116,66,105,116,105,110,103)then
_0x9200.bite = false
elseif p78 ==string.char(82,101,101,108,101,100,73,110)then
_0x9200.bite = false
_0x9200.casting = false
end
end)
end
end)
FindCastTarget = function(p79, p80, p81)
local _0x58F9 = {
p79,
workspace.Characters,
workspace.Enemies,
}
local _0x5694 = _0x9A54(p80.Position)
local _0xE829 = (p81:GetAttribute(string.char(77,97,120,76,97,117,110,99,104,68,105,115,116,97,110,99,101)) or _0x5326) * 0.99751243781094523
for _0xFD54, v in ipairs({
0,
45,
-45,
90,
-90,
135,
-135,
180,
}) do
local _0x0ADF = CFrame.Angles(0, math.rad(v), 0) * p80.CFrame.LookVector
local _0xFD54, _0x2E69 = workspace:FindPartOnRayWithIgnoreList(Ray.new(p79.Head.Position, _0x0ADF * _0xE829), _0x58F9)
local _0x6D4C, _0x6569 = workspace:FindPartOnRayWithIgnoreList(
Ray.new(_0x2E69 + Vector3.new(0, 3, 0), Vector3.new(0, -500, 0)),
_0x58F9
)
if _0x6D4C or _0x6569.Y < _0x5694 then
local _0xCE41 = Vector3.new(_0x2E69.X, math.max(_0x6569.Y, _0x5694), _0x2E69.Z)
if
not (
_0x6D4C and game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101)):HasTag(_0x6D4C, _0x8BE3.WATER_BODY_TAG)
or _0xCE41.Y <= _0x5694
)
then
continue
end
p80.CFrame = CFrame.new(p80.Position, p80.Position + Vector3.new(_0x0ADF.X, 0, _0x0ADF.Z))
return _0xCE41
end
end
local _0xFD54, _0x9E45 =
workspace:FindPartOnRayWithIgnoreList(Ray.new(p79.Head.Position, p80.CFrame.LookVector * _0xE829), _0x58F9)
return Vector3.new(_0x9E45.X, math.max(_0x9E45.Y, _0x5694), _0x9E45.Z)
end
task.spawn(function()
while task.wait(0.4) do
if _G.AutoFishing then
local _0xCB1F
repeat
pcall(function()
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xEABC = plr.Character and plr.Character:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x1327 or not _0xEABC or _0xEABC.Health <= 0 then
return
end
local _0xDE5F = plr.Character:FindFirstChildOfClass(string.char(84,111,111,108))
local _0x9352 = _0xDE5F
and _G.SelectedRod
and _0xDE5F.Name ~= _G.SelectedRod
and plr.Backpack:FindFirstChild(_G.SelectedRod)
if _0xDE5F then
if _0xDE5F:FindFirstChild(string.char(70,105,115,104,105,110,103,82,111,100,68,97,116,97)) and not _0x9352 then
if _0x9200.bite or _0x9200.casting and _0xDE5F:GetAttribute(string.char(83,101,114,118,101,114,83,116,97,116,101)) ==string.char(66,105,116,105,110,103)then
_0x9200.bite = false
_0xA0F0:InvokeServer(string.char(67,97,116,99,104,105,110,103), true)
task.wait(_G.FishCatchDelay or math.random(35, 55) / 10)
_0xA0F0:InvokeServer(string.char(67,97,116,99,104), 1, 0, math.random(80, 95) / 100)
_0x9200.casting = false
task.wait(1)
return
end
if _0x9200.casting then
if tick() - _0x9200.castAt > 25 then
pcall(function()
_0xA0F0:InvokeServer(string.char(82,101,101,108,101,100,73,110))
end)
_0x9200.casting = false
end
return
end
local _0x1A76 = _0xDE5F:GetAttribute(string.char(83,116,97,116,101))
local _0x41E4 = _0xDE5F:GetAttribute(string.char(83,101,114,118,101,114,83,116,97,116,101))
if
(_0x1A76 == nil or _0x1A76 ==string.char(82,101,101,108,101,100,73,110))
and (_0x41E4 == nil or _0x41E4 ==string.char(82,101,101,108,101,100,73,110))
then
_0x9200.blockedSince = nil
else
_0x9200.blockedSince = _0x9200.blockedSince or tick()
if tick() - _0x9200.blockedSince < 15 then
return
end
end
local _0xC477 = plr.Data.FishingData:GetAttribute(string.char(83,101,108,101,99,116,101,100,66,97,105,116))
if _0xC477 == nil or _0xC477 ==string.char(78,111,110,101)then
return
end
local _0x0315 = FindCastTarget(plr.Character, _0x1327, _0xDE5F)
if not _0x0315 then
return
end
_0xA0F0:InvokeServer(string.char(83,116,97,114,116,67,97,115,116,105,110,103))
task.wait(0.2)
local _0x21D1, _0xB9CB =
_0xA0F0:InvokeServer(string.char(67,97,115,116,76,105,110,101,65,116,76,111,99,97,116,105,111,110), _0x0315, 100, true)
if _0x21D1 and not _0xB9CB then
_0x9200.casting = true
_0x9200.castAt = tick()
_0x9200.blockedSince = nil
end
return
end
end
local _0xE265 = _G.SelectedRod and plr.Backpack:FindFirstChild(_G.SelectedRod)
if not _0xE265 then
for _0xFD54, child in ipairs(plr.Backpack:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child:FindFirstChild(string.char(70,105,115,104,105,110,103,82,111,100,68,97,116,97)) then
_0xE265 = child
break
end
end
end
if _0xE265 then
_0x9200.casting = false
_0xEABC:EquipTool(_0xE265)
task.wait(0.6)
end
end)
_0xCB1F = nil
while task.wait(0.4) do
if _G.AutoFishing then
_0xCB1F = 1
break
end
_0x9200.casting = false
_0x9200.bite = false
end
until _0xCB1F ~= 1
return
end
_0x9200.casting = false
_0x9200.bite = false
end
end)
end
HasQuest3 = function()
local _0x7CC5 = plr.PlayerGui:FindFirstChild(string.char(81,117,101,115,116)) or plr.PlayerGui:FindFirstChild(string.char(81,117,101,115,116,71,117,105))
if _0x7CC5 and _0x7CC5:FindFirstChild(string.char(67,111,110,116,97,105,110,101,114)) then
if _0x7CC5.Container:FindFirstChild(string.char(81,117,101,115,116,84,105,116,108,101)) then
return true
end
end
return false
end
task.spawn(function()
while task.wait(1) do
if _G.AutoFishingQuest then
pcall(function()
if not HasQuest3() then
replicated.Modules.Net[string.char(82,70,47,74,111,98,115,82,101,109,111,116,101,70,117,110,99,116,105,111,110)]:InvokeServer(string.char(70,105,115,104,105,110,103,78,80,67),string.char(65,110,103,108,101,114),string.char(65,115,107,81,117,101,115,116))
end
end)
end
end
end)
task.spawn(function()
while task.wait(5) do
if _G.AutoQuestComplete then
pcall(function()
replicated.Modules.Net[string.char(82,70,47,74,111,98,115,82,101,109,111,116,101,70,117,110,99,116,105,111,110)]:InvokeServer(string.char(70,105,115,104,105,110,103,78,80,67),string.char(70,105,110,105,115,104,81,117,101,115,116))
end)
end
end
end)
task.spawn(function()
while task.wait(5) do
if _G.AutoSellFish then
local _0xCB1F
repeat
pcall(function()
replicated.Modules.Net[string.char(82,70,47,74,111,98,115,82,101,109,111,116,101,70,117,110,99,116,105,111,110)]:InvokeServer(string.char(70,105,115,104,105,110,103,78,80,67),string.char(83,101,108,108,70,105,115,104))
end)
_0xCB1F = nil
while task.wait(5) do
if _G.AutoSellFish then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
do
task.spawn(function()
while task.wait(0.5) do
if _G.AutoSkillZ then
local _0xCB1F
repeat
pcall(function()
replicated.Modules.Net[string.char(82,70,47,74,111,98,84,111,111,108,65,98,105,108,105,116,105,101,115)]:InvokeServer(string.char(90), true)
end)
_0xCB1F = nil
while task.wait(0.5) do
if _G.AutoSkillZ then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
end
spawn(function()
if wait(Sec) then
repeat
pcall(function()
if _G.TravelDres and plr.Data.Level.Value >= 700 then
if workspace.Map.Ice.Door.CanCollide == true and workspace.Map.Ice.Door.Transparency == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(68,114,101,115,115,114,111,115,97,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(68,101,116,101,99,116,105,118,101))
EquipWeapon(string.char(75,101,121))
while true do
wait()
_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
if not _G.TravelDres then
break
elseif Root.Position == CFrame.new(1347.7124, 37.3751602, -1325.6488).Position then
break
end
end
elseif workspace.Map.Ice.Door.CanCollide ~= false or workspace.Map.Ice.Door.Transparency ~= 1 then
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
elseif Enemies:FindFirstChild(string.char(73,99,101,32,65,100,109,105,114,97,108)) then
local _0x9676, _0x49AA, _0xBCF0 = pairs(Enemies:GetChildren())
local _0x9C49 = _0xB921(_0x9676, _0x49AA, _0xBCF0)
local _0x4314 = table.pack(_0x9C49())
if _0x4314[1] then
local _0x22EE = _0x4314[3]
while true do
if _0x22EE.Name ==string.char(73,99,101,32,65,100,109,105,114,97,108)and Attack.Alive(_0x22EE) then
while true do
task.wait()
Attack.Kill(_0x22EE, _G.TravelDres)
if _G.TravelDres == false then
break
elseif _0x22EE.Humanoid.Health <= 0 then
break
end
end
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
local _0x5159 = table.pack(_0x9C49())
if not _0x5159[1] then
break
end
_0x22EE = _0x5159[3]
end
end
else
_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
end
end
end)
until not wait(Sec)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.AutoZou and plr.Data.Level.Value >= 1500 then
if replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) ~= 3 then
if replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) ~= 0 then
if replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) == 1 then
local _0xFDD3 = GetConnectionEnemies(string.char(74,101,114,101,109,121))
if _0xFDD3 then
while true do
wait()
Attack.Kill(_0xFDD3, _G.AutoZou)
if not _0xFDD3.Parent then
break
elseif _0xFDD3.Humanoid.Health <= 0 or _G.AutoZou == false then
break
end
end
else
_tp(CFrame.new(2099.88159, 448.931, 648.997375))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) == 2 then
while true do
wait()
_tp(CFrame.new(-1836, 11, 1714))
if not _G.AutoZou then
break
elseif Root.Position == CFrame.new(-1836, 11, 1714).Position then
break
end
end
if Root.CFrame == CFrame.new(-1836, 11, 1714) then
notween(CFrame.new(-1836, 11, 1714))
end
notween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
wait(0.1)
notween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
wait(0.1)
notween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
wait(0.1)
notween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
wait(0.1)
notween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
wait(0.1)
notween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
wait(0.1)
notween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
wait(0.1)
notween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
end
elseif
string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(83,119,97,110,32,80,105,114,97,116,101,115))
and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(53,48))
and plr.PlayerGui.Main.Quest.Visible == true
then
local _0x3E38 = GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101))
if _0x3E38 then
pcall(function()
while true do
wait()
Attack.Kill(_0x3E38, _G.AutoZou)
if not _0x3E38.Parent then
break
elseif
_0x3E38.Humanoid.Health <= 0
or _G.AutoZou == false
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
end)
else
_tp(CFrame.new(1057.92761, 137.614319, 1242.08069))
end
else
_tp(CFrame.new(-456.28952, 73.0200958, 299.895966))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess ~= nil then
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,114,97,118,101,108,90,111,117))
if replicated.Remotes.CommF_:InvokeServer(string.char(90,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)) == 0 then
local _0x28F4 = GetConnectionEnemies(string.char(114,105,112,95,105,110,100,114,97))
if _0x28F4 then
while true do
wait()
Attack.Kill(_0x28F4, _G.AutoZou)
if not _G.AutoZou then
break
elseif not _0x28F4.Parent or _0x28F4.Humanoid.Health <= 0 then
break
end
end
Check = 2
repeat
wait()
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,114,97,118,101,108,90,111,117))
until Check == 1
else
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(90,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107))
wait(0.1)
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(90,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,101,103,105,110))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(90,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)) == 1 then
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,114,97,118,101,108,90,111,117))
else
local _0xC61E = GetConnectionEnemies(string.char(68,111,110,32,83,119,97,110))
if _0xC61E then
while true do
wait()
Attack.Kill(_0xC61E, _G.AutoZou)
if not _G.AutoZou then
break
elseif not _0xC61E.Parent or _0xC61E.Humanoid.Health <= 0 then
break
end
end
else
while true do
wait()
_tp(CFrame.new(2288.802, 15.1870775, 863.034607))
if not _G.AutoZou then
break
elseif Root.Position == CFrame.new(2288.802, 15.1870775, 863.034607).Position then
break
end
end
if Root.CFrame == CFrame.new(2288.802, 15.1870775, 863.034607) then
notween(CFrame.new(2288.802, 15.1870775, 863.034607))
end
end
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess == nil then
TabelDevilFruitStore = {}
TabelDevilFruitOpen = {}
for _0xFD54, v in pairs(replicated.Remotes.CommF_:InvokeServer(string.char(103,101,116,73,110,118,101,110,116,111,114,121,70,114,117,105,116,115))) do
for k, v2 in pairs(v) do
if k ==string.char(78,97,109,101)then
table.insert(TabelDevilFruitStore, v2)
end
end
end
local _0xF298 = next
local _0x21D1, _0x99FB =
game.ReplicatedStorage:WaitForChild(string.char(82,101,109,111,116,101,115)).CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115))
for _0xFD54, v in _0xF298, _0x21D1, _0x99FB do
if v.Price >= 1000000 then
table.insert(TabelDevilFruitOpen, v.Name)
end
end
for _0xFD54, v in pairs(TabelDevilFruitOpen) do
for _0xFD54, v2 in pairs(TabelDevilFruitStore) do
if v == v2 then
if replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess == nil then
if plr.Backpack:FindFirstChild(v2) then
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(49))
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(50))
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(51))
else
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(76,111,97,100,70,114,117,105,116), v2)
end
end
end
end
end
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(49))
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(50))
replicated.Remotes.CommF_:InvokeServer(string.char(70,95),string.char(84,97,108,107,84,114,101,118,111,114),string.char(51))
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Tushita then
if not workspace.Map.Turtle:FindFirstChild(string.char(84,117,115,104,105,116,97,71,97,116,101)) then
local _0x012C = GetConnectionEnemies(string.char(76,111,110,103,109,97))
if _0x012C then
while true do
task.wait()
Attack.Kill(_0x012C, _G.Auto_Tushita)
if _0x012C.Humanoid.Health <= 0 then
break
elseif not _G.Auto_Tushita or not _0x012C.Parent then
break
end
end
elseif replicated:FindFirstChild(string.char(76,111,110,103,109,97)) then
_tp(replicated:FindFirstChild(string.char(76,111,110,103,109,97)).HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
end
elseif GetBP(string.char(72,111,108,121,32,84,111,114,99,104)) then
EquipWeapon(string.char(72,111,108,121,32,84,111,114,99,104))
task.wait(1)
while true do
task.wait()
_tp(CFrame.new(-10752, 417, -9366))
if not _G.Auto_Tushita then
break
elseif
(CFrame.new(-10752, 417, -9366).Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
then
break
end
end
wait(0.7)
while true do
task.wait()
_tp(CFrame.new(-11672, 334, -9474))
if not _G.Auto_Tushita then
break
elseif
(CFrame.new(-11672, 334, -9474).Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
then
break
end
end
wait(0.7)
while true do
task.wait()
_tp(CFrame.new(-12132, 521, -10655))
if not _G.Auto_Tushita then
break
elseif
(CFrame.new(-12132, 521, -10655).Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
then
break
end
end
wait(0.7)
while true do
task.wait()
_tp(CFrame.new(-13336, 486, -6985))
if not _G.Auto_Tushita then
break
elseif
(CFrame.new(-13336, 486, -6985).Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
then
break
end
end
wait(0.7)
while true do
task.wait()
_tp(CFrame.new(-13489, 332, -7925))
if not _G.Auto_Tushita then
break
elseif
(CFrame.new(-13489, 332, -7925).Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
then
break
end
end
else
_tp(CFrame.new(5148.03613, 162.352493, 910.548218))
wait(0.7)
end
end
end)
end
end)
spawn(function()
if wait(Sec) then
repeat
pcall(function()
if _G.Auto_Yama then
if replicated.Remotes.CommF_:InvokeServer(string.char(69,108,105,116,101,72,117,110,116,101,114),string.char(80,114,111,103,114,101,115,115)) < 30 then
_G.FarmEliteHunt = true
elseif replicated.Remotes.CommF_:InvokeServer(string.char(69,108,105,116,101,72,117,110,116,101,114),string.char(80,114,111,103,114,101,115,115)) > 30 then
_G.FarmEliteHunt = false
if
(
workspace.Map.Waterfall.SealedKatana.Handle.Position
- plr.Character.HumanoidRootPart.Position
).Magnitude >= 20
then
_tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
local _0x6336 = GetConnectionEnemies(string.char(71,104,111,115,116))
if _0x6336 then
while true do
wait()
Attack.Kill(_0x6336, _G.Auto_Yama)
if _0x6336.Humanoid.Health <= 0 then
break
elseif not _0x6336.Parent or not _G.Auto_Yama then
break
end
end
fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
end
end
end
end
end)
until not wait(Sec)
end
end)
task.spawn(function()
while wait() do
if _G.Auto_Soul_Guitar then
pcall(function()
local _0x841A = GetConnectionEnemies(string.char(76,105,118,105,110,103,32,90,111,109,98,105,101))
if _0x841A then
_0x841A.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
_0x841A.Head.CanCollide = false
_0x841A.Humanoid.Sit = false
_0x841A.HumanoidRootPart.CanCollide = false
_0x841A.Humanoid.JumpPower = 0
_0x841A.Humanoid.WalkSpeed = 0
if _0x841A.Humanoid:FindFirstChild(string.char(65,110,105,109,97,116,111,114)) then
_0x841A.Humanoid:FindFirstChild(string.char(65,110,105,109,97,116,111,114)):Destroy()
end
end
end)
end
end
end)
do
getT = function(p82)
local _0xDE76
if p82 == 1 then
_0xDE76 = workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment1.Line.Rotation
elseif p82 == 3 then
_0xDE76 = workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment3.Line.Rotation
elseif p82 == 4 then
_0xDE76 = workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment4.Line.Rotation
elseif p82 == 7 then
_0xDE76 = workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment7.Line.Rotation
elseif p82 == 10 then
_0xDE76 = workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment10.Line.Rotation
end
if _0xDE76 then
return _0xDE76.Z
end
end
end
do
getRT = function(p83)
local _0xDE76
for _0xFD54, child in pairs(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Trophies.Quest:GetChildren()) do
if p83 == 1 and child.Name ==string.char(84,114,111,112,104,121,49)and child:FindFirstChild(string.char(72,97,110,100,108,101)) then
_0xDE76 = child.Handle.Rotation
elseif p83 == 2 and child.Name ==string.char(84,114,111,112,104,121,50)and child:FindFirstChild(string.char(72,97,110,100,108,101)) then
_0xDE76 = child.Handle.Rotation
elseif p83 == 3 and child.Name ==string.char(84,114,111,112,104,121,51)and child:FindFirstChild(string.char(72,97,110,100,108,101)) then
_0xDE76 = child.Handle.Rotation
elseif p83 == 4 and child.Name ==string.char(84,114,111,112,104,121,52)and child:FindFirstChild(string.char(72,97,110,100,108,101)) then
_0xDE76 = child.Handle.Rotation
elseif p83 == 5 and child.Name ==string.char(84,114,111,112,104,121,53)and child:FindFirstChild(string.char(72,97,110,100,108,101)) then
_0xDE76 = child.Handle.Rotation
end
if _0xDE76 then
return _0xDE76.Z
end
end
end
end
GetFirePlacard = function(p84, p85)
if tostring(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(80,108,97,99,97,114,100).. p84][p85].Indicator.BrickColor) ~=string.char(80,101,97,114,108)then
fireclickdetector(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(80,108,97,99,97,114,100).. p84][p85].ClickDetector)
end
end
spawn(function()
repeat
task.wait()
until _G.Auto_Soul_Guitar
while wait(Sec) do
pcall(function()
if _G.Auto_Soul_Guitar and World3 then
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 2)
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 2, true)
if replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)) == nil then
_tp(CFrame.new(-8655.0166015625, 141.31669616699219, 6160.0224609375))
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 2)
replicated.Remotes.CommF_:InvokeServer(string.char(103,114,97,118,101,115,116,111,110,101,69,118,101,110,116), 2, true)
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)).Swamp == false then
Quest1 = true
Quest2 = false
Quest3 = false
Quest4 = false
local _0xFF1F = GetConnectionEnemies(string.char(76,105,118,105,110,103,32,90,111,109,98,105,101))
if _0xFF1F then
while true do
task.wait()
Attack.Kill(_0xFF1F, _G.Auto_Soul_Guitar)
if not _G.Auto_Soul_Guitar or _0xFF1F.Humanoid.Health <= 0 or not _0xFF1F.Parent then
break
elseif workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].SwampWater.Color ~= Color3.fromRGB(117, 0, 0) then
break
end
end
else
_tp(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)).Gravestones == false then
Quest1 = false
Quest2 = true
Quest3 = false
Quest4 = false
GetFirePlacard(string.char(55),string.char(76,101,102,116))
GetFirePlacard(string.char(54),string.char(76,101,102,116))
GetFirePlacard(string.char(53),string.char(76,101,102,116))
GetFirePlacard(string.char(52),string.char(82,105,103,104,116))
GetFirePlacard(string.char(51),string.char(76,101,102,116))
GetFirePlacard(string.char(50),string.char(82,105,103,104,116))
GetFirePlacard(string.char(49),string.char(82,105,103,104,116))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)).Ghost == false then
replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(71,104,111,115,116))
replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(71,104,111,115,116), true)
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)).Trophies == false then
Quest1 = false
Quest2 = false
Quest3 = true
Quest4 = false
_tp(CFrame.new(-9532.8232421875, 6.4716677665710449, 6078.068359375))
local _0xC9E9, _0x254D
repeat
wait()
_0x254D = getRT(1)
_0xC9E9 = getT(1)
if _0x254D and _0xC9E9 then
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment1:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
end
until _0x254D == _0xC9E9
local _0x2A8F, _0x57D4
repeat
wait()
_0x57D4 = getRT(2)
_0x2A8F = getT(3)
if _0x57D4 and _0x2A8F then
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment3:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
end
until _0x57D4 == _0x2A8F
local _0x94F3, _0xF86B
repeat
wait()
_0xF86B = getRT(3)
_0x94F3 = getT(4)
if _0xF86B and _0x94F3 then
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment4:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
end
until _0xF86B == _0x94F3
local _0xD4D0, _0x0052
repeat
wait()
_0x0052 = getRT(4)
_0xD4D0 = getT(7)
if _0x0052 and _0xD4D0 then
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment7:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
end
until _0x0052 == _0xD4D0
local _0xC3F7, _0xDC3B
repeat
wait()
_0xDC3B = getRT(5)
_0xC3F7 = getT(10)
if _0xDC3B and _0xC3F7 then
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment10:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
end
until _0xDC3B == _0xC3F7
while true do
wait()
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment2:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment5:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment6:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment8:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment9:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114))
)
if workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment2.Line.Rotation.Z == 0 then
break
elseif
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment5.Line.Rotation.Z == 0
or workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment6.Line.Rotation.Z == 0
or workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment8.Line.Rotation.Z == 0
or workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)].Tablet.Segment9.Line.Rotation.Z == 0
then
break
end
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(71,117,105,116,97,114,80,117,122,122,108,101,80,114,111,103,114,101,115,115),string.char(67,104,101,99,107)).Pipes == false then
Quest1 = false
Quest2 = false
Quest3 = false
Quest4 = true
_tp(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part3.CFrame)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part3.ClickDetector
)
_tp(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part4.CFrame)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part4.ClickDetector
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part4.ClickDetector
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part4.ClickDetector
)
_tp(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part6.CFrame)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part6.ClickDetector
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part6.ClickDetector
)
_tp(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part8.CFrame)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part8.ClickDetector
)
_tp(workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part10.CFrame)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part10.ClickDetector
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part10.ClickDetector
)
fireclickdetector(
workspace.Map[string.char(72,97,117,110,116,101,100,32,67,97,115,116,108,101)][string.char(76,97,98,32,80,117,122,122,108,101)].ColorFloor.Model.Part10.ClickDetector
)
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.AutoMatSoul and GetWP(string.char(83,107,117,108,108,32,71,117,105,116,97,114)) == false then
if GetM(string.char(66,111,110,101,115)) >= 500 and GetM(string.char(69,99,116,111,112,108,97,115,109)) >= 250 and GetM(string.char(68,97,114,107,32,70,114,97,103,109,101,110,116)) >= 1 then
replicated.Remotes.CommF_:InvokeServer(string.char(115,111,117,108,71,117,105,116,97,114,66,117,121), true)
elseif GetM(string.char(69,99,116,111,112,108,97,115,109)) <= 250 then
if _G.AutoMatSoul and World2 then
local _0x8D85 = GetConnectionEnemies({string.char(83,104,105,112,32,68,101,99,107,104,97,110,100),string.char(83,104,105,112,32,69,110,103,105,110,101,101,114),string.char(83,104,105,112,32,83,116,101,119,97,114,100),string.char(83,104,105,112,32,79,102,102,105,99,101,114),string.char(65,114,99,116,105,99,32,87,97,114,114,105,111,114),
})
if _0x8D85 then
while true do
task.wait()
Attack.Kill(_0x8D85, _G.AutoMatSoul)
if not _G.AutoMatSoul then
break
elseif not _0x8D85.Parent or _0x8D85.Humanoid.Health <= 0 then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
)
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
elseif GetM(string.char(68,97,114,107,32,70,114,97,103,109,101,110,116)) < 1 then
if _G.AutoMatSoul and World2 then
local _0xADC4 = GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100))
if _0xADC4 then
while true do
task.wait()
Attack.Kill(_0xADC4, _G.AutoMatSoul)
if not _G.AutoMatSoul then
break
elseif _0xADC4.Humanoid.Health <= 0 or not _0xADC4.Parent then
break
end
end
else
_tp(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
if not GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100)) then
Hop()
end
elseif GetM(string.char(66,111,110,101,115)) <= 500 then
if _G.AutoMatSoul and World3 then
local _0xBB1F = GetConnectionEnemies({string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110),string.char(76,105,118,105,110,103,32,90,111,109,98,105,101),string.char(68,101,109,111,110,105,99,32,83,111,117,108),string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121),
})
if _0xBB1F then
while true do
task.wait()
Attack.Kill(_0xBB1F, _G.AutoMatSoul)
if not _G.AutoMatSoul then
break
elseif _0xBB1F.Humanoid.Health <= 0 or not _0xBB1F.Parent or _0xBB1F.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.CDK then
if tick() - (getgenv().LastCDKBossKick or 0) > 3 then
getgenv().LastCDKBossKick = tick()
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(80,114,111,103,114,101,115,115),string.char(71,111,111,100))
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(80,114,111,103,114,101,115,115),string.char(69,118,105,108))
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(83,116,97,114,116,84,114,105,97,108),string.char(66,111,115,115))
end
local _0x9D4C = GetConnectionEnemies(string.char(67,117,114,115,101,100,32,83,107,101,108,101,116,111,110,32,66,111,115,115))
if _0x9D4C then
while true do
wait()
if plr.Character:FindFirstChild(string.char(89,97,109,97)) then
EquipWeapon(string.char(89,97,109,97))
else
if plr.Backpack:FindFirstChild(string.char(89,97,109,97)) then
EquipWeapon(string.char(89,97,109,97))
_tp(_0x9D4C.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
if _G.CDK then
if _0x9D4C.Parent and not (_0x9D4C.Humanoid.Health <= 0) then
continue
end
end
break
end
if plr.Character:FindFirstChild(string.char(84,117,115,104,105,116,97)) then
EquipWeapon(string.char(84,117,115,104,105,116,97))
elseif plr.Backpack:FindFirstChild(string.char(84,117,115,104,105,116,97)) then
EquipWeapon(string.char(84,117,115,104,105,116,97))
_tp(_0x9D4C.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
if _G.CDK then
if _0x9D4C.Parent and not (_0x9D4C.Humanoid.Health <= 0) then
continue
end
end
break
end
end
_tp(_0x9D4C.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
if _G.CDK then
if _0x9D4C.Parent and not (_0x9D4C.Humanoid.Health <= 0) then
continue
end
end
break
end
else
_tp(CFrame.new(-12318.193359375, 601.95184326171875, -6538.662109375))
wait(0.5)
_tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
end
end
end)
end
end)
do
spawn(function()
while wait() do
pcall(function()
if _G.CDK_YM and CDKEnsureDoor() then
if CDKProgress().Finished == nil then
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(83,116,97,114,116,84,114,105,97,108),string.char(69,118,105,108))
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(83,116,97,114,116,84,114,105,97,108),string.char(69,118,105,108))
elseif CDKProgress().Finished == false then
if tonumber(CDKProgress().Evil) == -3 then
QuestYama_1 = true
QuestYama_2 = false
QuestYama_3 = false
repeat
task.wait()
if workspace.Enemies:FindFirstChild(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101)) then
if GetConnectionEnemies(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101)) then
_tp(workspace.Enemies:FindFirstChild(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101)).HumanoidRootPart.CFrame)
end
else
_tp(CFrame.new(-13223.521484375, 428.19381713867188, -7766.06787109375))
end
until not (tonumber(CDKProgress().Evil) ~= 1 and _G.CDK_YM)
elseif tonumber(CDKProgress().Evil) == -4 then
QuestYama_1 = false
QuestYama_2 = true
QuestYama_3 = false
for _0xFD54, child in pairs(game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.QuestHaze:GetChildren()) do
for k, v in pairs(PosMsList) do
if string.find(k, child.Name) and child.Value > 0 then
if (v.Position - Root.Position).Magnitude <= 1000 then
if workspace.Enemies:FindFirstChild(k) then
for _0xFD54, child2 in pairs(workspace.Enemies:GetChildren()) do
if
child2:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child2:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child2:FindFirstChild(string.char(72,117,109,97,110,111,105,100)).Health > 0
and child2:FindFirstChild(string.char(72,97,122,101,69,83,80))
then
while true do
wait()
Attack.Kill(child2, _G.CDK_YM)
if not _G.CDK_YM then
break
elseif
tonumber(CDKProgress().Evil) == 2
or not child2:FindFirstChild(string.char(72,97,122,101,69,83,80))
or child2.Humanoid.Health <= 0
then
break
end
end
end
end
continue
end
end
_tp(v)
end
end
end
elseif tonumber(CDKProgress().Evil) == -5 then
QuestYama_1 = false
QuestYama_2 = false
QuestYama_3 = true
if
workspace.Map:FindFirstChild(string.char(72,101,108,108,68,105,109,101,110,115,105,111,110))
and (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000
then
for k in pairs(workspace.Map.HellDimension.Exit:GetChildren()) do
if tonumber(k) == 2 then
while true do
task.wait()
Root.CFrame = workspace.Map.HellDimension.Exit.CFrame
if not _G.CDK_YM then
break
elseif tonumber(CDKProgress().Evil) == 3 then
break
end
end
end
end
EquipWeapon(_G.SelectWeapon)
if tonumber(CDKProgress().Evil) ~= 3 then
repeat
task.wait()
repeat
task.wait()
_tp(workspace.Map.HellDimension.Torch1.Particles.CFrame)
for _0xFD54, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
workspace.Map.HellDimension.Torch1.Particles.Position - Root.Position
).Magnitude < 5
wait(2)
_G.T1Yama = true
until not _G.CDK_YM or _G.T1Yama or tonumber(CDKProgress().Evil) == 3
repeat
task.wait()
repeat
task.wait()
_tp(workspace.Map.HellDimension.Torch2.Particles.CFrame)
for _0xFD54, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
workspace.Map.HellDimension.Torch2.Particles.Position - Root.Position
).Magnitude < 5
wait(2)
_G.T2Yama = true
until _G.T2Yama or _G.CDK_YM == false or tonumber(CDKProgress().Evil) == 3
repeat
wait()
repeat
task.wait()
_tp(workspace.Map.HellDimension.Torch3.Particles.CFrame)
for _0xFD54, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
workspace.Map.HellDimension.Torch3.Particles.Position - Root.Position
).Magnitude < 5
wait(2)
_G.T3Yama = true
until _G.T3Yama or _G.CDK_YM == false or tonumber(CDKProgress().Evil) == 3
end
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
(
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)).Position
- workspace.Map.HellDimension.Spawn.Position
).Magnitude
<= 300
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)).Health > 0
then
while true do
task.wait()
Attack.Kill(child, _G.CDK_YM)
if not _G.CDK_YM then
break
elseif
child.Humanoid.Health <= 0
or not child.Parent
or tonumber(CDKProgress().Evil) == 3
then
break
end
end
end
end
end
end
end
end
end)
end
end)
end
spawn(function()
while wait() do
pcall(function()
if _G.CDK_YM then
if tonumber(CDKProgress().Evil) == -5 then
if
not workspace.Map:FindFirstChild(string.char(72,101,108,108,68,105,109,101,110,115,105,111,110))
or (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > 1000
then
local _0x63AF = GetConnectionEnemies(string.char(83,111,117,108,32,82,101,97,112,101,114))
if _0x63AF then
while true do
task.wait()
_tp(_0x63AF.HumanoidRootPart.CFrame)
if
_0x63AF.Humanoid.Health <= 0
or not _G.CDK_YM
or not _0x63AF.Parent
or tonumber(CDKProgress().Evil) == 3
then
break
elseif
workspace.Map:FindFirstChild(string.char(72,101,108,108,68,105,109,101,110,115,105,111,110))
and (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude
<= 1000
then
break
end
end
elseif plr.Backpack:FindFirstChild(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101)) then
repeat
_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
task.wait()
until (
CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - Root.Position
).Magnitude <= 8
EquipWeapon(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101))
else
if plr.Character:FindFirstChild(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101)) then
repeat
_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
task.wait()
until (
CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position
- Root.Position
).Magnitude <= 8
EquipWeapon(string.char(72,97,108,108,111,119,32,69,115,115,101,110,99,101))
return
end
local _0x56ED = not replicated:FindFirstChild(string.char(83,111,117,108,32,82,101,97,112,101,114))
if not _0x56ED then
_0x56ED = not (replicated:FindFirstChild(string.char(83,111,117,108,32,82,101,97,112,101,114)).Humanoid.Health > 0)
end
if _0x56ED then
if not (replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(67,104,101,99,107)) < 50) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
return
end
if workspace.Enemies:FindFirstChild(string.char(83,111,117,108,32,82,101,97,112,101,114)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
else
if replicated:FindFirstChild(string.char(83,111,117,108,32,82,101,97,112,101,114)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
return
end
if workspace.Map:FindFirstChild(string.char(72,101,108,108,68,105,109,101,110,115,105,111,110)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
return
end
local _0x78C0 = workspace.Enemies:FindFirstChild(string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110))
if not _0x78C0 then
_0x78C0 = workspace.Enemies:FindFirstChild(string.char(76,105,118,105,110,103,32,90,111,109,98,105,101))
end
local _0xA290 = _0x78C0
if not _0xA290 then
_0xA290 = workspace.Enemies:FindFirstChild(string.char(68,101,109,111,110,105,99,32,83,111,117,108))
end
local _0x8FFC = _0xA290
if not _0x8FFC then
_0x8FFC = workspace.Enemies:FindFirstChild(string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121))
end
if _0x8FFC then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
(
child.Name ==string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110)or child.Name ==string.char(76,105,118,105,110,103,32,90,111,109,98,105,101)or child.Name ==string.char(68,101,109,111,110,105,99,32,83,111,117,108)or child.Name ==string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)).Health > 0
then
while true do
task.wait()
Attack.Kill(child, _G.CDK_YM)
if not _G.CDK_YM then
break
elseif child.Humanoid.Health <= 0 or not child.Parent then
break
end
end
end
end
else
_tp(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
end
end
else
_tp(replicated:FindFirstChild(string.char(83,111,117,108,32,82,101,97,112,101,114)).HumanoidRootPart.CFrame)
end
end
end
end
end
end)
end
end)
spawn(function()
while wait() do
pcall(function()
if _G.CDK_TS and CDKEnsureDoor() then
if CDKProgress().Finished == nil then
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(83,116,97,114,116,84,114,105,97,108),string.char(71,111,111,100))
elseif CDKProgress().Finished == false then
if tonumber(CDKProgress().Good) == -3 then
QuestTushita_1 = true
QuestTushita_2 = false
QuestTushita_3 = false
while true do
wait()
_tp(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))
if
(
CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 3
then
break
elseif not _G.CDK_TS or tonumber(CDKProgress().Good) == 1 then
break
end
end
if
(
CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 10
then
wait(0.7)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114)),string.char(67,104,101,99,107))
wait(0.5)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114))
)
end
wait(1)
while true do
wait()
_tp(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125))
if
(
CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 3
then
break
elseif not _G.CDK_TS or tonumber(CDKProgress().Good) == 1 then
break
end
end
if
(
CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 10
then
wait(0.7)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114)),string.char(67,104,101,99,107))
wait(0.5)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114))
)
end
wait(1)
while true do
wait()
_tp(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))
if
(
CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 3
then
break
elseif not _G.CDK_TS or tonumber(CDKProgress().Good) == 1 then
break
end
end
if
(
CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position
- game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude <= 10
then
wait(0.7)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114)),string.char(67,104,101,99,107))
wait(0.5)
replicated.Remotes.CommF_:InvokeServer(string.char(67,68,75,81,117,101,115,116),string.char(66,111,97,116,81,117,101,115,116),
workspace.NPCs:FindFirstChild(string.char(76,117,120,117,114,121,32,66,111,97,116,32,68,101,97,108,101,114))
)
end
wait(1)
elseif tonumber(CDKProgress().Good) == -4 then
QuestTushita_1 = false
QuestTushita_2 = true
QuestTushita_3 = false
while true do
wait()
_G.AutoRaidCastle = true
if not _G.CDK_TS then
break
elseif tonumber(CDKProgress().Good) == 2 then
break
end
end
_G.AutoRaidCastle = false
elseif tonumber(CDKProgress().Good) == -5 then
QuestTushita_1 = false
QuestTushita_2 = false
QuestTushita_3 = true
if workspace.Enemies:FindFirstChild(string.char(67,97,107,101,32,81,117,101,101,110)) then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
child.Name ==string.char(67,97,107,101,32,81,117,101,101,110)and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child.Humanoid.Health > 0
then
while true do
wait()
Attack.Kill(child, _G.CDK_TS)
if not _G.CDK_TS then
break
elseif
not child.Parent
or child.Humanoid.Health <= 0
or tonumber(CDKProgress().Good) == 3
then
break
end
end
end
end
else
local _0x78C0 = not replicated:FindFirstChild(string.char(67,97,107,101,32,81,117,101,101,110))
if not _0x78C0 then
_0x78C0 = not (replicated:FindFirstChild(string.char(67,97,107,101,32,81,117,101,101,110)).Humanoid.Health > 0)
end
if _0x78C0 then
if
(
game.Players.LocalPlayer.Character.HumanoidRootPart.Position
- workspace.Map.HeavenlyDimension.Spawn.Position
).Magnitude <= 1000
then
for k in pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren()) do
Ex = k
end
if Ex == 2 then
while true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
workspace.Map.HeavenlyDimension.Exit.CFrame
if not _G.CDK_TS then
break
elseif tonumber(CDKProgress().Good) == 3 then
break
end
end
end
repeat
wait()
repeat
wait()
_tp(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))
for _0xFD54, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position
- game.Players.LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude < 5
wait(2)
_G.DoneT1 = true
until not _G.CDK_TS or _G.DoneT1
repeat
wait()
repeat
wait()
_tp(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))
for _0xFD54, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position
- game.Players.LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude < 5
wait(2)
_G.DoneT2 = true
until _G.DoneT2 or _G.CDK_TS == false
repeat
wait()
repeat
task.wait()
_tp(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))
for _0xFD54, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
if descendant:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
fireproximityprompt(descendant)
end
end
until (
CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position
- game.Players.LocalPlayer.Character.HumanoidRootPart.Position
).Magnitude < 5
wait(2)
_G.DoneT3 = true
until _G.DoneT3 or _G.CDK_TS == false
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
(child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)).Position - CFrame.new(
-22695.7012,
5270.93652,
3814.42847,
0.11794927,
3.32185834e-08,
0.99301964,
-8.73070718e-08,
1,
-2.30819008e-08,
-0.99301964,
-8.3975138e-08,
0.11794927
).Position).Magnitude
<= 300
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)).Health > 0
then
while true do
wait()
Attack.Kill(child, _G.CDK_TS)
if not _G.CDK_TS then
break
elseif child.Humanoid.Health <= 0 or not child.Parent then
break
end
end
end
end
end
else
_tp(
replicated:FindFirstChild(string.char(67,97,107,101,32,81,117,101,101,110)).HumanoidRootPart.CFrame
* CFrame.new(0, 30, 0)
)
end
end
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
if _G.Tp_LgS then
pcall(function()
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
local _0x7038
local _0x460F
for _0xFD54, v in ipairs({
workspace:FindFirstChild(string.char(78,80,67,115)),
replicated:FindFirstChild(string.char(78,80,67,115)),
}) do
if v then
for _0xFD54, child in ipairs(v:GetChildren()) do
if string.find(child.Name,string.char(76,101,103,101,110,100,97,114,121,32,83,119,111,114,100,32,68,101,97,108,101,114), 1, true) then
local _0x78C0, _0x22CD = pcall(function()
return child:GetPivot()
end)
if _0x78C0 then
local _0xA95F = (_0x22CD.Position - _0x1327.Position).Magnitude
if not _0x460F or _0xA95F < _0x460F then
_0x7038 = _0x22CD
_0x460F = _0xA95F
end
end
end
end
end
end
if _0x7038 then
_tp(_0x7038)
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.AutoPole then
pcall(function()
local _0xD2F4 = GetConnectionEnemies(string.char(84,104,117,110,100,101,114,32,71,111,100))
if _0xD2F4 then
while true do
task.wait()
Attack.Kill(_0xD2F4, _G.AutoPole)
if not _G.AutoPole then
break
elseif not _0xD2F4.Parent or _0xD2F4.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
end
end)
end
end
end)
spawn(function()
if wait(Sec) then
repeat
pcall(function()
if _G.AutoPoleV2 then
if not GetBP(string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41)) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109),string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41))
end
if not GetBP(string.char(80,111,108,101,32,40,50,110,100,32,70,111,114,109,41)) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109),string.char(80,111,108,101,32,40,50,110,100,32,70,111,114,109,41))
end
if GetBP(string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41)) and GetBP(string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41)).Level.Value <= 179 then
_G.Level = true
elseif GetBP(string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41)) and GetBP(string.char(80,111,108,101,32,40,49,115,116,32,70,111,114,109,41)).Level.Value >= 180 then
_G.Level = false
end
if not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)) then
return
end
local _0xA290 = not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)).AwakenedMoves:FindFirstChild(string.char(90))
if not _0xA290 then
_0xA290 = not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)).AwakenedMoves:FindFirstChild(string.char(88))
end
local _0x8FFC = _0xA290
if not _0x8FFC then
_0x8FFC = not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)).AwakenedMoves:FindFirstChild(string.char(67))
end
local _0x56ED = _0x8FFC
if not _0x56ED then
_0x56ED = not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)).AwakenedMoves:FindFirstChild(string.char(86))
end
local _0x6576 = _0x56ED
if not _0x6576 then
_0x6576 = not GetBP(string.char(82,117,109,98,108,101,32,70,114,117,105,116)).AwakenedMoves:FindFirstChild(string.char(70))
end
if _0x6576 then
local _0x78C0 = replicated.Remotes.CommF_:InvokeServer(string.char(65,119,97,107,101,110,101,114),string.char(67,104,101,99,107)) == nil
if not _0x78C0 then
_0x78C0 = replicated.Remotes.CommF_:InvokeServer(string.char(65,119,97,107,101,110,101,114),string.char(67,104,101,99,107)) == 0
end
if _0x78C0 then
_G.SelectChip =string.char(82,117,109,98,108,101)local _0x21D1 = replicated.Remotes.CommF_:InvokeServer(string.char(82,97,105,100,115,78,112,99),string.char(83,101,108,101,99,116), _G.SelectChip)
if _0x21D1 then
_0x21D1:Stop()
end
_G.Raiding = true
_G.Auto_Awakener = true
end
else
_G.SelectChip = nil
_G.Raiding = false
_G.Auto_Awakener = false
if plr.Data.Fragments.Value >= 5000 then
replicated.Remotes.CommF_:InvokeServer(string.char(84,104,117,110,100,101,114,32,71,111,100),string.char(84,97,108,107))
wait(Sec)
replicated.Remotes.CommF_:InvokeServer(string.char(84,104,117,110,100,101,114,32,71,111,100),string.char(83,117,114,101))
end
end
end
end)
until not wait(Sec)
end
end)
spawn(function()
if wait(0.2) then
repeat
pcall(function()
if _G.AutoSaw then
local _0x1152 = GetConnectionEnemies(string.char(84,104,101,32,83,97,119))
if _0x1152 then
while true do
task.wait()
Attack.Kill(_0x1152, _G.AutoSaw)
if _G.AutoSaw == false then
break
elseif _0x1152.Humanoid.Health <= 0 then
break
end
end
return
else
_tp(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906))
end
end
end)
until not wait(0.2)
end
end)
spawn(function()
while wait(0.2) do
pcall(function()
if _G.AutoSaber and plr.Data.Level.Value >= 200 then
if not plr.Backpack:FindFirstChild(string.char(83,97,98,101,114)) then
if not plr.Character:FindFirstChild(string.char(83,97,98,101,114)) then
if workspace.Map.Jungle.Final.Part.Transparency ~= 0 then
local _0x78C0 = workspace.Enemies:FindFirstChild(string.char(83,97,98,101,114,32,69,120,112,101,114,116))
if not _0x78C0 then
_0x78C0 = replicated:FindFirstChild(string.char(83,97,98,101,114,32,69,120,112,101,114,116))
end
if _0x78C0 then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(83,97,98,101,114,32,69,120,112,101,114,116)and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.AutoSaber)
if child.Humanoid.Health <= 0 then
break
elseif _G.AutoSaber == false then
break
end
end
if child.Humanoid.Health <= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(80,108,97,99,101,82,101,108,105,99))
end
end
end
else
_tp(
CFrame.new(
-1401.85046,
29.9773273,
8.81916237,
0.85820812,
8.76083845e-08,
0.513301849,
-8.55007443e-08,
1,
-2.77243419e-08,
-0.513301849,
-2.00944328e-08,
0.85820812
)
)
end
elseif workspace.Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
if workspace.Map.Desert.Burn.Part.Transparency ~= 0 then
if replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(83,105,99,107,77,97,110)) ~= 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(71,101,116,67,117,112))
wait(0.5)
EquipWeapon(string.char(67,117,112))
wait(0.5)
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(70,105,108,108,67,117,112),
plr.Character.Cup
)
wait(Sec)
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(83,105,99,107,77,97,110))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(82,105,99,104,83,111,110)) == nil then
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(82,105,99,104,83,111,110))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(82,105,99,104,83,111,110)) == 0 then
local _0xA290 = workspace.Enemies:FindFirstChild(string.char(77,111,98,32,76,101,97,100,101,114))
if not _0xA290 then
_0xA290 = replicated:FindFirstChild(string.char(77,111,98,32,76,101,97,100,101,114))
end
if not _0xA290 then
return
end
_tp(
CFrame.new(
-2967.59521,
-4.91089821,
5328.70703,
0.342208564,
-0.0227849055,
0.939347804,
0.0251603816,
0.999569714,
0.0150796166,
-0.939287126,
0.0184739735,
0.342634559
)
)
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name ==string.char(77,111,98,32,76,101,97,100,101,114)and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.AutoSaber)
if child.Humanoid.Health <= 0 then
break
elseif _G.AutoSaber == false then
break
end
end
end
end
else
if replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(82,105,99,104,83,111,110)) ~= 1 then
return
end
replicated.Remotes.CommF_:InvokeServer(string.char(80,114,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(82,105,99,104,83,111,110))
EquipWeapon(string.char(82,101,108,105,99))
_tp(
CFrame.new(
-1404.91504,
29.9773273,
3.80598116,
0.876514494,
5.66906877e-09,
0.481375456,
2.53851997e-08,
1,
-5.79995607e-08,
-0.481375456,
6.30572643e-08,
0.876514494
)
)
end
elseif plr.Backpack:FindFirstChild(string.char(84,111,114,99,104)) then
EquipWeapon(string.char(84,111,114,99,104))
firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 0)
firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 1)
_tp(
CFrame.new(
1114.61475,
5.04679728,
4350.22803,
-0.648466587,
-1.28799094e-09,
0.761243105,
-5.70652914e-10,
1,
1.20584542e-09,
-0.761243105,
3.47544882e-10,
-0.648466587
)
)
elseif plr.Character:FindFirstChild(string.char(84,111,114,99,104)) then
EquipWeapon(string.char(84,111,114,99,104))
firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 0)
firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 1)
_tp(
CFrame.new(
1114.61475,
5.04679728,
4350.22803,
-0.648466587,
-1.28799094e-09,
0.761243105,
-5.70652914e-10,
1,
1.20584542e-09,
-0.761243105,
3.47544882e-10,
-0.648466587
)
)
return
else
_tp(
CFrame.new(
-1610.00757,
11.5049858,
164.001587,
0.984807551,
-0.167722285,
-0.0449818149,
0.17364943,
0.951244235,
0.254912198,
3.42372805e-05,
-0.258850515,
0.965917408
)
)
end
elseif
(CFrame.new(
-1612.55884,
36.9774132,
148.719543,
0.37091279,
3.0717151e-09,
-0.928667724,
3.97099491e-08,
1,
1.91679348e-08,
0.928667724,
-4.39869794e-08,
0.37091279
).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100
then
_tp(plr.Character.HumanoidRootPart.CFrame)
wait(0.5)
plr.Character.HumanoidRootPart.CFrame =
workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame =
workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame =
workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame =
workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame =
workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame
wait(0.5)
else
_tp(
CFrame.new(
-1612.55884,
36.9774132,
148.719543,
0.37091279,
3.0717151e-09,
-0.928667724,
3.97099491e-08,
1,
1.91679348e-08,
0.928667724,
-4.39869794e-08,
0.37091279
)
)
end
end
end
end
end)
end
end)
do
spawn(function()
while wait(0.2) do
if _G.AutoColShad then
pcall(function()
local _0xE557 = GetConnectionEnemies(string.char(67,121,98,111,114,103))
if _0xE557 then
while true do
task.wait()
Attack.Kill(_0xE557, _G.AutoColShad)
if _G.AutoColShad == false then
break
elseif not _0xE557.Parent or _0xE557.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813))
end
end)
end
end
end)
end
do
spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.AutoGetUsoap then
for _0xFD54, child in pairs(workspace.Characters:GetChildren()) do
if
child.Name ~= plr.Name
and child.Humanoid.Health > 0
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child.Parent
and (Root.Position - child.HumanoidRootPart.Position).Magnitude <= 230
then
while true do
task.wait()
EquipWeapon(_G.SelectWeapon)
_tp(child.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))
if _G.AutoGetUsoap == false then
break
elseif
child.Humanoid.Health <= 0
or not child.Parent
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
then
break
end
end
end
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
if _G.Greybeard then
pcall(function()
if GetWP(string.char(66,105,115,101,110,116,111)) then
if GetWP(string.char(66,105,115,101,110,116,111)) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109),string.char(66,105,115,101,110,116,111))
local _0xA5AB = GetConnectionEnemies(string.char(71,114,101,121,98,101,97,114,100))
if _0xA5AB then
while true do
wait()
Attack.Kill(_0xA5AB, _G.Greybeard)
if _G.Greybeard == false then
break
elseif not _0xA5AB.Parent or _0xA5AB.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-5023.38330078125, 28.652032852172852, 4332.3818359375))
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,73,116,101,109),string.char(66,105,115,101,110,116,111))
end
end)
end
end
end)
spawn(function()
while wait(0.1) do
if _G.WardenBoss then
local _0xCB1F
repeat
pcall(function()
local _0x38B3 = GetConnectionEnemies(string.char(67,104,105,101,102,32,87,97,114,100,101,110))
if _0x38B3 then
while true do
wait()
Attack.Kill(_0x38B3, _G.WardenBoss)
if _G.WardenBoss == false then
break
elseif not _0x38B3.Parent or _0x38B3.Humanoid.Health <= 0 then
break
end
end
else
_tp(
CFrame.new(
5206.92578,
0.997753382,
814.976746,
0.342041343,
-0.00062915677,
0.939684749,
0.00191645394,
0.999998152,
-2.80422337e-05,
-0.939682961,
0.00181045406,
0.342041939
)
)
end
end)
_0xCB1F = nil
while wait(0.1) do
if _G.WardenBoss then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
spawn(function()
while wait(0.1) do
if _G.MarinesCoat then
pcall(function()
local _0xF1C1 = GetConnectionEnemies(string.char(86,105,99,101,32,65,100,109,105,114,97,108))
if _0xF1C1 then
while true do
wait()
Attack.Kill(_0xF1C1, _G.MarinesCoat)
if _G.MarinesCoat == false then
break
elseif not _0xF1C1.Parent or _0xF1C1.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375))
end
end)
end
end
end)
spawn(function()
while wait(0.1) do
if _G.SwanCoat then
local _0xCB1F
repeat
pcall(function()
local _0xB708 = GetConnectionEnemies(string.char(83,119,97,110))
if _0xB708 then
while true do
wait()
Attack.Kill(_0xB708, _G.SwanCoat)
if _G.SwanCoat == false then
break
elseif not _0xB708.Parent or _0xB708.Humanoid.Health <= 0 then
break
end
end
else
_tp(
CFrame.new(
5325.09619,
7.03906584,
719.570679,
-0.309060812,
0,
0.951042235,
0,
1,
0,
-0.951042235,
0,
-0.309060812
)
)
end
end)
_0xCB1F = nil
while wait(0.1) do
if _G.SwanCoat then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
spawn(function()
pcall(function()
while wait(0.1) do
if _G.IceBossRen then
local _0x194C = GetConnectionEnemies(string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108))
if _0x194C then
while true do
task.wait()
Attack.Kill(_0x194C, _G.IceBossRen)
if _G.IceBossRen == false then
break
elseif not _0x194C.Parent or _0x194C.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
end
end
end
end)
end)
spawn(function()
while wait(0.1) do
pcall(function()
if _G.KeysRen then
if plr.Backpack:FindFirstChild(RenMon[3]) then
EquipWeapon(RenMon[3])
wait(0.1)
_tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
else
if plr.Character:FindFirstChild(RenMon[3]) then
EquipWeapon(RenMon[3])
wait(0.1)
_tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
return
end
local _0x5E5B = GetConnectionEnemies(RenMon)
if _0x5E5B then
while true do
task.wait()
Attack.Kill(_0x5E5B, _G.KeysRen)
if plr.Backpack:FindFirstChild(RenMon[3]) then
break
elseif _G.KeysRen == false or not _0x5E5B.Parent or _0x5E5B.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
end
end
end
end)
end
end)
spawn(function()
while wait(0.1) do
pcall(function()
if _G.AutoTridentW2 then
local _0x47FA = GetConnectionEnemies(string.char(84,105,100,101,32,75,101,101,112,101,114))
if _0x47FA then
while true do
task.wait()
Attack.Kill(_0x47FA, _G.AutoTridentW2)
if _G.AutoTridentW2 == false then
break
elseif not _0x47FA.Parent or _0x47FA.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188))
end
end
end)
end
end)
do
spawn(function()
while wait(0.1) do
pcall(function()
if _G.LongsWord then
local _0xDF59 = GetConnectionEnemies(string.char(68,105,97,109,111,110,100))
if _0xDF59 then
while true do
task.wait()
Attack.Kill(_0xDF59, _G.LongsWord)
if _G.LongsWord == false then
break
elseif not _0xDF59.Parent or _0xDF59.Humanoid.Health <= 0 then
break
end
end
return
else
_tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
end
end
end)
end
end)
end
spawn(function()
while wait(0.1) do
if _G.BlackSpikey then
pcall(function()
local _0xFDD3 = GetConnectionEnemies(string.char(74,101,114,101,109,121))
if _0xFDD3 then
while true do
wait()
Attack.Kill(_0xFDD3, _G.BlackSpikey)
if _G.BlackSpikey == false then
break
elseif not _0xFDD3.Parent or _0xFDD3.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.DarkBladev3 and World2 then
if not GetBP(string.char(68,97,114,107,32,66,108,97,100,101)) then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,73,116,101,109),string.char(68,97,114,107,32,66,108,97,100,101))
end
if not GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115)) then
_G.AutoFarmChest = true
elseif workspace.Enemies:FindFirstChild(string.char(68,97,114,107,98,101,97,114,100)) then
if GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100)) and GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115)) >= 1 then
while true do
wait()
_tp(CFrame.new(-5719.36376953125, 48.505905151367188, -782.9759521484375))
if not _G.DarkBladev3 then
break
elseif
Root.Position
== CFrame.new(-5719.36376953125, 48.505905151367188, -782.9759521484375).Position
then
break
end
end
fireclickdetector(workspace.Map.GraveIsland.Mountain.Rocks.Button.ClickDetector)
end
else
_tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.AutoEcBoss then
if GetM(string.char(69,99,116,111,112,108,97,115,109)) >= 99 then
replicated.Remotes.CommF_:InvokeServer(string.char(69,99,116,111,112,108,97,115,109),string.char(66,117,121), 3)
elseif GetM(string.char(69,99,116,111,112,108,97,115,109)) <= 99 then
local _0x30E4 = GetConnectionEnemies(string.char(67,117,114,115,101,100,32,67,97,112,116,97,105,110))
if _0x30E4 then
while true do
wait()
Attack.Kill(_0x30E4, _G.AutoEcBoss)
if not _G.AutoEcBoss then
break
elseif not _0x30E4.Parent or _0x30E4.Humanoid.Health <= 0 then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
)
wait(0.5)
_tp(CFrame.new(916.928589, 181.092773, 33422))
end
end
end
end)
end
end)
end
spawn(function()
while wait(0.1) do
if _G.Auto_Def_DarkCoat then
local _0xCB1F
repeat
pcall(function()
local _0x78C0 = not GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115))
if not _0x78C0 then
_0x78C0 = workspace.Enemies:FindFirstChild(string.char(68,97,114,107,98,101,97,114,100))
end
if not _0x78C0 then
_tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
elseif GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100)) then
local _0xADC4 = GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100))
if _0xADC4 then
while true do
wait()
Attack.Kill(_0xADC4, _G.Auto_Def_DarkCoat)
if _G.Auto_Def_DarkCoat == false then
break
elseif not _0xADC4.Parent or _0xADC4.Humanoid.Health <= 0 then
break
end
end
end
elseif not (GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115)) or GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100))) then
while true do
wait(0.1)
_G.AutoFarmChest = true
if not _G.Auto_Def_DarkCoat then
break
elseif GetBP(string.char(70,105,115,116,32,111,102,32,68,97,114,107,110,101,115,115)) or GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100)) then
break
end
end
_G.AutoFarmChest = false
end
end)
_0xCB1F = nil
while wait(0.1) do
if _G.Auto_Def_DarkCoat then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
do
spawn(function()
while wait(0.1) do
if _G.Auto_DonAcces then
pcall(function()
if
replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess == nil
and plr.Data.Level.Value >= 1500
then
FruitPrice = {}
FruitStore = {}
local _0xF298 = next
local _0x21D1, _0x5557 = replicated:WaitForChild(string.char(82,101,109,111,116,101,115)).CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115))
for _0xFD54, v in _0xF298, _0x21D1, _0x5557 do
if v.Price >= 1000000 then
table.insert(FruitPrice, v.Name)
end
end
for _0xFD54, v in pairs(replicated.Remotes.CommF_:InvokeServer(string.char(103,101,116,73,110,118,101,110,116,111,114,121,70,114,117,105,116,115))) do
for k, v2 in pairs(v) do
if k ==string.char(78,97,109,101)then
table.insert(FruitStore, v2)
end
end
replicated.Remotes.CommF_:InvokeServer(string.char(67,111,117,115,105,110),string.char(66,117,121))
for _0xFD54, v2 in pairs(FruitPrice) do
for _0xFD54, v3 in pairs(FruitStore) do
if v2 == v3 then
if
replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess
== nil
then
_G.StoreF = false
if plr.Backpack:FindFirstChild(FruitStore) then
replicated.Remotes.CommF_:InvokeServer(string.char(84,97,108,107,84,114,101,118,111,114),string.char(49))
replicated.Remotes.CommF_:InvokeServer(string.char(84,97,108,107,84,114,101,118,111,114),string.char(50))
replicated.Remotes.CommF_:InvokeServer(string.char(84,97,108,107,84,114,101,118,111,114),string.char(51))
else
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,70,114,117,105,116), tostring(v2))
end
end
end
end
end
if replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,85,110,108,111,99,107,97,98,108,101,115)).FlamingoAccess ~= nil then
_G.StoreF = true
_G.Auto_DonAcces = false
end
end
end
end)
end
end
end)
end
do
spawn(function()
while wait(0.2) do
if _G.Auto_SwanGG then
pcall(function()
local _0x9753 = GetConnectionEnemies(string.char(68,111,110,32,83,119,97,110))
if _0x9753 then
while true do
wait()
Attack.Kill(_0x9753, _G.Auto_SwanGG)
if _G.Auto_SwanGG == false then
break
elseif not _0x9753.Parent or _0x9753.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
end
end)
end
end
end)
end
do
spawn(function()
while wait(Sec) do
if _G.AutoBigmom then
pcall(function()
local _0x51B6 = GetConnectionEnemies(string.char(67,97,107,101,32,81,117,101,101,110))
if _0x51B6 then
while true do
task.wait()
Attack.Kill(_0x51B6, _G.AutoBigmom)
if not _G.AutoBigmom then
break
elseif not _0x51B6.Parent or _0x51B6.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-709.31329345703125, 381.6005859375, -11011.396484375))
end
end)
end
end
end)
end
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Cavender then
local _0xF9A7 = GetConnectionEnemies(string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101))
if _0xF9A7 then
while true do
wait()
Attack.Kill(_0xF9A7, _G.Auto_Cavender)
if not _G.Auto_Cavender then
break
elseif _0xF9A7.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
end
end
end)
end
end)
spawn(function()
if wait(Sec) then
repeat
pcall(function()
if _G.TwinHook then
local _0x1D65 = GetConnectionEnemies(string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
if _0x1D65 then
while true do
wait()
Attack.Kill(_0x1D65, _G.TwinHook)
if not _G.TwinHook then
break
elseif _0x1D65.Humanoid.Health <= 0 then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
)
wait(0.2)
_tp(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
end
end
end)
until not wait(Sec)
end
end)
do
spawn(function()
while wait(Sec) do
if _G.AutoSerpentBow then
local _0xDCB9 = GetConnectionEnemies(string.char(72,121,100,114,97,32,76,101,97,100,101,114))
if _0xDCB9 then
while true do
wait()
Attack.Kill(_0xDCB9, _G.AutoSerpentBow)
if not _G.AutoSerpentBow then
break
elseif not _0xDCB9.Parent or _0xDCB9.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469))
end
end
end
end)
end
spawn(function()
while wait(0.2) do
if _G.AutoKilo then
local _0xCB1F
repeat
pcall(function()
local _0x926F = GetConnectionEnemies(string.char(75,105,108,111,32,65,100,109,105,114,97,108))
if _0x926F then
while true do
task.wait()
Attack.Kill(_0x926F, _G.AutoKilo)
if not _G.AutoKilo then
break
elseif not _0x926F.Parent or _0x926F.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125))
end
end)
_0xCB1F = nil
while wait(0.2) do
if _G.AutoKilo then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
spawn(function()
while wait() do
if _G.Tp_MasterA then
local _0xCB1F
repeat
pcall(function()
for _0xFD54, child in pairs(replicated.NPCs:GetChildren()) do
if child.Name ==string.char(66,97,114,105,115,116,97,32,67,111,117,115,105,110)then
_tp(child.HumanoidRootPart.CFrame)
end
end
end)
_0xCB1F = nil
while wait() do
if _G.Tp_MasterA then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
spawn(function()
pcall(function()
while wait(Sec) do
if _G.Auto_Rainbow_Haki then
if plr.PlayerGui.Main.Quest.Visible ~= false then
if
plr.PlayerGui.Main.Quest.Visible == true
and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(83,116,111,110,101))
then
local _0x04A1 = GetConnectionEnemies(string.char(83,116,111,110,101))
if _0x04A1 then
while true do
wait()
Attack.Kill(_0x04A1, _G.Auto_Rainbow_Haki)
if _G.Auto_Rainbow_Haki == false then
break
elseif
_0x04A1.Humanoid.Health <= 0
or not _0x04A1.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
_tp(
CFrame.new(
-1086.11621,
38.8425903,
6768.71436,
0.0231462717,
-0.592676699,
0.805107772,
2.03251839e-05,
0.805323839,
0.592835128,
-0.999732077,
-0.0137055516,
0.0186523199
)
)
end
else
if plr.PlayerGui.Main.Quest.Visible == true then
if
string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(72,121,100,114,97,32,76,101,97,100,101,114))
then
local _0xE63C = GetConnectionEnemies(string.char(72,121,100,114,97,32,76,101,97,100,101,114))
if _0xE63C then
while true do
task.wait()
Attack.Kill(_0xE63C, _G.Auto_Rainbow_Haki)
if _G.Auto_Rainbow_Haki == false then
break
elseif
_0xE63C.Humanoid.Health <= 0
or not _0xE63C.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625)
)
local _0xCE41 = Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625)
local _0x66D1 =
CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469)
if plr.Character.HumanoidRootPart.CFrame.Position == _0xCE41 then
_tp(_0x66D1)
end
end
continue
end
end
if
plr.PlayerGui.Main.Quest.Visible == true
and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(75,105,108,111,32,65,100,109,105,114,97,108))
then
local _0xA2CC = GetConnectionEnemies(string.char(75,105,108,111,32,65,100,109,105,114,97,108))
if _0xA2CC then
while true do
task.wait()
Attack.Kill(_0xA2CC, _G.Auto_Rainbow_Haki)
if _G.Auto_Rainbow_Haki == false then
break
elseif
_0xA2CC.Humanoid.Health <= 0
or not _0xA2CC.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
_tp(
CFrame.new(
2877.61743,
423.558685,
-7207.31006,
-0.989591599,
-0,
-0.143904909,
-0,
1.00000012,
-0,
0.143904924,
0,
-0.989591479
)
)
end
elseif
plr.PlayerGui.Main.Quest.Visible == true
and string.find(
plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
then
local _0x2E7F = GetConnectionEnemies(string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
if _0x2E7F then
while true do
task.wait()
Attack.Kill(_0x2E7F, _G.Auto_Rainbow_Haki)
if _G.Auto_Rainbow_Haki == false then
break
elseif
_0x2E7F.Humanoid.Health <= 0
or not _0x2E7F.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
local _0xCE41 = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
local _0x66D1 = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
if plr.Character.HumanoidRootPart.CFrame.Position ~= _0xCE41 then
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
)
elseif plr.Character.HumanoidRootPart.CFrame.Position == _0xCE41 then
_tp(_0x66D1)
end
end
elseif
plr.PlayerGui.Main.Quest.Visible == true
and string.find(
plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101))
then
local _0xB3CD = GetConnectionEnemies(string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
if _0xB3CD then
while true do
task.wait()
Attack.Kill(_0xB3CD, _G.Auto_Rainbow_Haki)
if _G.Auto_Rainbow_Haki == false then
break
elseif
_0xB3CD.Humanoid.Health <= 0
or not _0xB3CD.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969)
)
end
end
end
elseif not _G.GetQFast then
Rainbow1 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
if plr.Character.HumanoidRootPart.CFrame ~= Rainbow1 then
_tp(Rainbow1)
elseif plr.Character.HumanoidRootPart.CFrame == Rainbow1 then
wait(1)
replicated.Remotes.CommF_:InvokeServer(string.char(72,111,114,110,101,100,77,97,110),string.char(66,101,116))
end
elseif plr.PlayerGui.Main.Quest.Visible == false then
replicated.Remotes.CommF_:InvokeServer(string.char(72,111,114,110,101,100,77,97,110),string.char(66,101,116))
end
end
end
end)
end)
spawn(function()
while wait(0.2) do
pcall(function()
if _G.obsFarm then
replicated.Remotes.CommE:FireServer(string.char(75,101,110), true)
if plr:GetAttribute(string.char(75,101,110,68,111,100,103,101,115,76,101,102,116)) == 0 then
KenTest = false
elseif plr:GetAttribute(string.char(75,101,110,68,111,100,103,101,115,76,101,102,116)) > 0 then
replicated.Remotes.CommE:FireServer(string.char(75,101,110), true)
KenTest = true
end
end
end)
end
end)
do
spawn(function()
while wait(0.2) do
pcall(function()
if _G.obsFarm then
if not World1 then
if not World2 then
if World3 then
if not workspace.Enemies:FindFirstChild(string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116)) then
_tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
elseif KenTest then
while true do
wait()
_tp(
workspace.Enemies:FindFirstChild(string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116)).HumanoidRootPart.CFrame
* CFrame.new(3, 0, 0)
)
if _G.obsFarm == false then
break
elseif KenTest == false then
break
end
end
else
while true do
wait()
_tp(
workspace.Enemies:FindFirstChild(string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116)).HumanoidRootPart.CFrame
* CFrame.new(0, 50, 0)
)
if _G.obsFarm == false then
break
elseif KenTest then
break
end
end
end
end
elseif not workspace.Enemies:FindFirstChild(string.char(76,97,118,97,32,80,105,114,97,116,101)) then
_tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
elseif KenTest then
while true do
wait()
plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(string.char(76,97,118,97,32,80,105,114,97,116,101)).HumanoidRootPart.CFrame
* CFrame.new(3, 0, 0)
if _G.obsFarm == false then
break
elseif KenTest == false then
break
end
end
else
while true do
wait()
plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(string.char(76,97,118,97,32,80,105,114,97,116,101)).HumanoidRootPart.CFrame
* CFrame.new(0, 50, 0)
if _G.obsFarm == false then
break
elseif KenTest then
break
end
end
end
elseif not workspace.Enemies:FindFirstChild(string.char(71,97,108,108,101,121,32,67,97,112,116,97,105,110)) then
_tp(CFrame.new(5533.29785, 88.1079102, 4852.3916))
elseif KenTest then
while true do
wait()
plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(string.char(71,97,108,108,101,121,32,67,97,112,116,97,105,110)).HumanoidRootPart.CFrame
* CFrame.new(3, 0, 0)
if _G.obsFarm == false then
break
elseif KenTest == false then
break
end
end
else
while true do
wait()
plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(string.char(71,97,108,108,101,121,32,67,97,112,116,97,105,110)).HumanoidRootPart.CFrame
* CFrame.new(0, 50, 0)
if _G.obsFarm == false then
break
elseif KenTest then
break
end
end
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
if _G.AutoKenVTWO then
pcall(function()
local _0xFD54
local _0x4009 = 1
local _0x66D1, _0x7DDA, _0x077F, _0xD090, _0x090A, _0x9069, _0x46A3, _0x421C, _0x99CA, _0x6779, _0x07D1, _0xE4C7, _0x2ACD, _0x7ACB, _0x0596, _0xEA35, _0x717A, _0x4651
while true do
if _0x4009 == 1 then
_0x66D1 = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
_0x7DDA = CFrame.new(-10920.125, 624.20275878906, -10266.995117188)
_0x077F = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)
_0xD090 = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)
if
plr.PlayerGui.Main.Quest.Visible == true
and string.find(
plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(68,101,102,101,97,116,32,53,48,32,70,111,114,101,115,116,32,80,105,114,97,116,101,115))
then
_0x4009 = 2
else
_0x4009 = 6
end
elseif _0x4009 == 2 then
_0x090A = GetConnectionEnemies(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101))
if _0x090A then
_0x4009 = 3
else
_0x4009 = 5
end
elseif _0x4009 == 3 then
wait()
Attack.Kill(_0x090A, _G.AutoKenVTWO)
if _G.AutoKenVTWO then
_0x4009 = 4
else
_0x4009 = 13
end
elseif _0x4009 == 4 then
if _0x090A.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false then
_0x4009 = 13
else
_0x4009 = 3
end
elseif _0x4009 == 5 then
_tp(_0x077F)
_0x4009 = 13
elseif _0x4009 == 6 then
if plr.PlayerGui.Main.Quest.Visible == true then
_0x4009 = 7
else
_0x4009 = 11
end
elseif _0x4009 == 7 then
_0x9069 = GetConnectionEnemies(string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
if _0x9069 then
_0x4009 = 8
else
_0x4009 = 10
end
elseif _0x4009 == 8 then
wait()
Attack.Kill(_0x9069, _G.AutoKenVTWO)
if not _G.AutoKenVTWO or _0x9069.Humanoid.Health <= 0 then
_0x4009 = 13
else
_0x4009 = 9
end
elseif _0x4009 == 9 then
if plr.PlayerGui.Main.Quest.Visible == false then
_0x4009 = 13
else
_0x4009 = 8
end
elseif _0x4009 == 10 then
_tp(_0xD090)
_0x4009 = 13
elseif _0x4009 == 11 then
if plr.PlayerGui.Main.Quest.Visible == false then
_0x4009 = 12
else
_0x4009 = 13
end
elseif _0x4009 == 12 then
replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,105,116,105,122,101,110))
wait(0.1)
replicated.Remotes.CommF_:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,105,116,105,122,101,110,81,117,101,115,116), 1)
_0x4009 = 13
elseif _0x4009 == 13 then
if replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,105,116,105,122,101,110)) == 2 then
_0x4009 = 14
else
_0x4009 = 15
end
elseif _0x4009 == 14 then
_tp(CFrame.new(-12513.51953125, 340.11373901367188, -9873.048828125))
_0x4009 = 15
elseif _0x4009 == 15 then
if plr.Backpack:FindFirstChild(string.char(70,114,117,105,116,32,66,111,119,108)) then
_0x4009 = 16
else
_0x4009 = 18
end
elseif _0x4009 == 16 then
if plr.Character:FindFirstChild(string.char(70,114,117,105,116,32,66,111,119,108)) then
_0x4009 = 17
else
_0x4009 = 18
end
else
if _0x4009 == 17 then
return
end
if _0x4009 == 18 then
if GetBP(string.char(70,114,117,105,116,32,66,111,119,108)) then
_0x4009 = 38
else
_0x4009 = 19
end
elseif _0x4009 == 19 then
if GetBP(string.char(65,112,112,108,101)) then
_0x4009 = 26
else
_0x4009 = 20
end
elseif _0x4009 == 20 then
replicated.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
)
_0x4009 = 21
elseif _0x4009 == 21 then
_0x46A3, _0x421C, _0x99CA = pairs(workspace:GetDescendants())
if type(_0x46A3) ==string.char(116,97,98,108,101)then
local _0xBA02 = getmetatable(_0x46A3)
if type(_0xBA02) ==string.char(116,97,98,108,101)and _0xBA02[string.char(95,95,105,116,101,114)] then
_0x46A3, _0x421C, _0x99CA = (_0xBA02[string.char(95,95,105,116,101,114)](_0x46A3))
else
_0x46A3, _0x421C, _0x99CA = next, _0x46A3, nil
end
end
_0x4009 = 22
elseif _0x4009 == 22 then
local _0xADF1
_0xADF1, _0x6779 = (_0x46A3(_0x421C, _0x99CA))
if _0xADF1 == nil then
_0x4009 = 23
else
_0x99CA = _0xADF1
_0x4009 = 24
end
elseif _0x4009 == 23 then
_0x4009 = 38
elseif _0x4009 == 24 then
if _0x6779.Name ==string.char(65,112,112,108,101)then
_0x4009 = 25
else
_0x4009 = 22
end
elseif _0x4009 == 25 then
_0x6779.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
wait()
firetouchinterest(plr.Character.HumanoidRootPart, _0x6779.Handle, 0)
wait()
_0x4009 = 22
elseif _0x4009 == 26 then
if GetBP(string.char(66,97,110,97,110,97)) then
_0x4009 = 32
else
_0x4009 = 27
end
elseif _0x4009 == 27 then
_tp(CFrame.new(2286.0078125, 73.133918762207031, -7159.80908203125))
_0x4009 = 28
elseif _0x4009 == 28 then
_0x07D1, _0xE4C7, _0x2ACD = pairs(workspace:GetDescendants())
if type(_0x07D1) ==string.char(116,97,98,108,101)then
local _0x2704 = getmetatable(_0x07D1)
if type(_0x2704) ==string.char(116,97,98,108,101)and _0x2704[string.char(95,95,105,116,101,114)] then
_0x07D1, _0xE4C7, _0x2ACD = (_0x2704[string.char(95,95,105,116,101,114)](_0x07D1))
else
_0x07D1, _0xE4C7, _0x2ACD = next, _0x07D1, nil
end
end
_0x4009 = 29
elseif _0x4009 == 29 then
local _0x807B
_0x807B, _0x7ACB = (_0x07D1(_0xE4C7, _0x2ACD))
if _0x807B == nil then
_0x4009 = 38
else
_0x2ACD = _0x807B
_0x4009 = 30
end
elseif _0x4009 == 30 then
if _0x7ACB.Name ==string.char(66,97,110,97,110,97)then
_0x4009 = 31
else
_0x4009 = 29
end
elseif _0x4009 == 31 then
_0x7ACB.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
wait()
firetouchinterest(plr.Character.HumanoidRootPart, _0x7ACB.Handle, 0)
wait()
_0x4009 = 29
elseif _0x4009 == 32 then
if GetBP(string.char(80,105,110,101,97,112,112,108,101)) then
_0x4009 = 38
else
_0x4009 = 33
end
elseif _0x4009 == 33 then
_tp(CFrame.new(-712.8272705078125, 98.577049255371094, 5711.9541015625))
_0x4009 = 34
elseif _0x4009 == 34 then
_0x0596, _0xEA35, _0x717A = pairs(workspace:GetDescendants())
if type(_0x0596) ==string.char(116,97,98,108,101)then
local _0x3866 = getmetatable(_0x0596)
if type(_0x3866) ==string.char(116,97,98,108,101)and _0x3866[string.char(95,95,105,116,101,114)] then
_0x0596, _0xEA35, _0x717A = (_0x3866[string.char(95,95,105,116,101,114)](_0x0596))
else
_0x0596, _0xEA35, _0x717A = next, _0x0596, nil
end
end
_0x4009 = 35
elseif _0x4009 == 35 then
local _0x4C97
_0x4C97, _0x4651 = (_0x0596(_0xEA35, _0x717A))
if _0x4C97 == nil then
_0x4009 = 38
else
_0x717A = _0x4C97
_0x4009 = 36
end
elseif _0x4009 == 36 then
if _0x4651.Name ==string.char(80,105,110,101,97,112,112,108,101)then
_0x4009 = 37
else
_0x4009 = 35
end
elseif _0x4009 == 37 then
_0x4651.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
wait()
firetouchinterest(plr.Character.HumanoidRootPart, _0x4651.Handle, 0)
wait()
_0x4009 = 35
elseif _0x4009 == 38 then
if plr.Backpack:FindFirstChild(string.char(66,97,110,97,110,97)) then
_0x4009 = 39
else
_0x4009 = 41
end
elseif _0x4009 == 39 then
if plr.Backpack:FindFirstChild(string.char(65,112,112,108,101)) then
_0x4009 = 40
else
_0x4009 = 41
end
elseif _0x4009 == 40 then
if plr.Backpack:FindFirstChild(string.char(80,105,110,101,97,112,112,108,101)) then
_0x4009 = 44
else
_0x4009 = 41
end
elseif _0x4009 == 41 then
if plr:FindFirstChild(string.char(66,97,110,97,110,97)) then
_0x4009 = 42
else
_0x4009 = 47
end
elseif _0x4009 == 42 then
if plr:FindFirstChild(string.char(65,112,112,108,101)) then
_0x4009 = 43
else
_0x4009 = 47
end
elseif _0x4009 == 43 then
if plr:FindFirstChild(string.char(80,105,110,101,97,112,112,108,101)) then
_0x4009 = 44
else
_0x4009 = 47
end
elseif _0x4009 == 44 then
wait()
_tp(_0x66D1)
if _G.AutoKenVTWO then
_0x4009 = 46
else
_0x4009 = 45
end
elseif _0x4009 == 45 then
if plr.Character.HumanoidRootPart.CFrame == _0x66D1 then
_0x4009 = 46
else
_0x4009 = 44
end
elseif _0x4009 == 46 then
replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,105,116,105,122,101,110))
_0x4009 = 47
elseif _0x4009 == 47 then
if plr.Backpack:FindFirstChild(string.char(70,114,117,105,116,32,66,111,119,108)) then
_0x4009 = 50
else
_0x4009 = 48
end
elseif _0x4009 == 48 then
if plr.Character:FindFirstChild(string.char(70,114,117,105,116,32,66,111,119,108)) then
_0x4009 = 50
else
_0x4009 = 49
end
else
if _0x4009 == 49 then
return
end
if _0x4009 == 50 then
if plr.Character.HumanoidRootPart.CFrame == _0x7DDA then
_0x4009 = 51
else
_0x4009 = 55
end
elseif _0x4009 == 51 then
if plr.Character.HumanoidRootPart.CFrame == _0x7DDA then
_0x4009 = 52
else
_0x4009 = 54
end
elseif _0x4009 == 52 then
replicated.Remotes.CommF_:InvokeServer(string.char(75,101,110,84,97,108,107,50),string.char(83,116,97,114,116))
wait(0.1)
replicated.Remotes.CommF_:InvokeServer(string.char(75,101,110,84,97,108,107,50),string.char(66,117,121))
_0x4009 = 53
else
if _0x4009 == 53 then
return
end
if _0x4009 == 54 then
return
elseif _0x4009 == 55 then
_tp(_0x7DDA)
_0x4009 = 56
elseif _0x4009 == 56 then
return
end
end
end
end
end
end)
end
end
end)
spawn(function()
while wait(0.1) do
pcall(function()
if _G.Bartilo_Quest and Lv >= 850 then
local _0x7CC5 = plr.PlayerGui.Main.Quest
if replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) == 0 then
_G.Level = false
if _0x7CC5.Visible ~= true then
while true do
wait()
_tp(
CFrame.new(
-461.533203,
72.3478546,
300.311096,
0.050853312,
-0,
-0.998706102,
0,
1,
-0,
0.998706102,
0,
0.050853312
)
)
if
(CFrame.new(
-461.533203,
72.3478546,
300.311096,
0.050853312,
-0,
-0.998706102,
0,
1,
-0,
0.998706102,
0,
0.050853312
).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 20
then
break
elseif _G.Bartilo_Quest == false then
break
end
end
if
(CFrame.new(
-461.533203,
72.3478546,
300.311096,
0.050853312,
-0,
-0.998706102,
0,
1,
-0,
0.998706102,
0,
0.050853312
).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 1
then
replicated.Remotes.CommF_:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116),string.char(66,97,114,116,105,108,111,81,117,101,115,116), 1)
end
elseif GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101)) then
local _0x353A = GetConnectionEnemies(BartMon)
if _0x353A then
repeat
task.wait()
if
string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(83,119,97,110,32,80,105,114,97,116,101))
then
Attack.Kill(_0x353A, _G.Bartilo_Quest)
else
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
until _G.Bartilo_Quest == false
or not _0x353A.Parent
or _0x353A.Humanoid.Health <= 0
or _0x7CC5.Visible == false
or not _0x353A:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
end
else
_tp(
CFrame.new(
970.369446,
142.653198,
1217.3667,
0.162079468,
-4.85452638e-08,
-0.986777723,
1.03357589e-08,
1,
-4.74980872e-08,
0.986777723,
-2.50063148e-09,
0.162079468
)
)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) == 1 then
_G.Level = false
local _0xFDD3 = GetConnectionEnemies(string.char(74,101,114,101,109,121))
if _0xFDD3 then
while true do
task.wait()
Attack.Kill(_0xFDD3, _G.Bartilo_Quest)
if _G.Bartilo_Quest == false then
break
elseif
not _0xFDD3.Parent
or _0xFDD3.Humanoid.Health <= 0
or not (_0x7CC5.Visible ~= false and _0xFDD3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
then
break
end
end
else
_tp(
CFrame.new(
2158.97412,
449.056244,
705.411682,
-0.754199564,
-4.17389057e-09,
-0.656645238,
-4.47752875e-08,
1,
4.50709301e-08,
0.656645238,
6.3393955e-08,
-0.754199564
)
)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(66,97,114,116,105,108,111,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(66,97,114,116,105,108,111)) == 2 then
while true do
wait()
_tp(
CFrame.new(
-1830.83972,
10.5578213,
1680.60229,
0.979988456,
-2.02152783e-08,
-0.199054286,
2.20792113e-08,
1,
7.1442483e-09,
0.199054286,
-1.13962431e-08,
0.979988456
)
)
if
(CFrame.new(
-1830.83972,
10.5578213,
1680.60229,
0.979988456,
-2.02152783e-08,
-0.199054286,
2.20792113e-08,
1,
7.1442483e-09,
0.199054286,
-1.13962431e-08,
0.979988456
).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 1
then
break
elseif _G.Bartilo_Quest == false then
break
end
end
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
wait(0.5)
plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
wait(2.5)
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.CitizenQuest then
local _0xA290 = not (Lv >= 1800)
if not _0xA290 then
_0xA290 = replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115)).KilledBandits ~= false
end
if _0xA290 then
local _0x78C0 = not (Lv >= 1800)
if not _0x78C0 then
_0x78C0 = replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115)).KilledBoss ~= false
end
if not _0x78C0 then
local _0x7B43 = GetConnectionEnemies(string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
if
not plr.PlayerGui.Main.Quest.Visible
or not string.find(
plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116))
or plr.PlayerGui.Main.Quest.Visible ~= true
then
_tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if
(
CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position
- plr.Character.HumanoidRootPart.Position
).Magnitude <= 4
then
wait(1.5)
replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,105,116,105,122,101,110))
end
elseif _0x7B43 then
while true do
task.wait()
Attack.Kill(_0x7B43, _G.CitizenQuest)
if _G.CitizenQuest == false then
break
elseif
_0x7B43.Humanoid.Health <= 0
or not _0x7B43.Parent
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
_tp(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
end
elseif Lv >= 1800 then
if replicated.Remotes.CommF_:InvokeServer(string.char(67,105,116,105,122,101,110,81,117,101,115,116,80,114,111,103,114,101,115,115),string.char(67,105,116,105,122,101,110)) == 2 then
_tp(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
end
end
elseif
string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(70,111,114,101,115,116,32,80,105,114,97,116,101))
and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,string.char(53,48))
and plr.PlayerGui.Main.Quest.Visible == true
then
local _0x584E = GetConnectionEnemies(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101))
if _0x584E then
while true do
task.wait()
Attack.Kill(_0x584E, _G.CitizenQuest)
if _G.CitizenQuest == false then
break
elseif
not _0x584E.Parent
or _0x584E.Humanoid.Health <= 0
or plr.PlayerGui.Main.Quest.Visible == false
then
break
end
end
else
_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
end
else
_tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if
(
Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125)
- plr.Character.HumanoidRootPart.Position
).Magnitude <= 30
then
wait(1.5)
replicated.Remotes.CommF_:InvokeServer(string.char(83,116,97,114,116,81,117,101,115,116),string.char(67,105,116,105,122,101,110,81,117,101,115,116), 1)
end
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
if _G.DummyMan then
pcall(function()
if plr.PlayerGui.Main.Quest.Visible == false then
replicated:WaitForChild(string.char(82,101,109,111,116,101,115)):WaitForChild(string.char(67,111,109,109,70,95)):InvokeServer(unpack({string.char(65,114,101,110,97,84,114,97,105,110,101,114)}))
else
local _0xC5B0 = GetConnectionEnemies(string.char(84,114,97,105,110,105,110,103,32,68,117,109,109,121))
if _0xC5B0 then
while true do
wait()
Attack.Kill(_0xC5B0, _G.DummyMan)
if not _G.DummyMan then
break
elseif not _0xC5B0.Parent or _0xC5B0.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(3688.005126953125, 12.746943473815918, 170.20953369140625))
end
end
end)
end
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_SuperHuman then
local _0xDA8F = plr.Data.Beli.Value
local _0x5FB7 = plr.Data.Fragments.Value
if plr:FindFirstChild(string.char(87,101,97,112,111,110,65,115,115,101,116,67,97,99,104,101)) and not GetBP(string.char(83,117,112,101,114,104,117,109,97,110)) then
if GetBP(string.char(66,108,97,99,107,32,76,101,103)) then
if GetBP(string.char(66,108,97,99,107,32,76,101,103)) and GetBP(string.char(66,108,97,99,107,32,76,101,103)).Level.Value < 299 then
_G.Level = true
elseif GetBP(string.char(66,108,97,99,107,32,76,101,103)) and GetBP(string.char(66,108,97,99,107,32,76,101,103)).Level.Value >= 300 then
_G.Level = false
end
elseif _0xDA8F >= 150000 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,108,97,99,107,76,101,103))
end
if GetBP(string.char(69,108,101,99,116,114,111)) then
if GetBP(string.char(69,108,101,99,116,114,111)) and GetBP(string.char(69,108,101,99,116,114,111)).Level.Value < 299 then
_G.Level = true
elseif GetBP(string.char(69,108,101,99,116,114,111)) then
if GetBP(string.char(69,108,101,99,116,114,111)).Level.Value >= 300 then
_G.Level = false
end
end
elseif _0xDA8F >= 500000 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,69,108,101,99,116,114,111))
end
if GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) then
if GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) and GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)).Level.Value < 299 then
_G.Level = true
elseif GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) and GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)).Level.Value >= 300 then
_G.Level = false
end
elseif _0xDA8F >= 750000 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,70,105,115,104,109,97,110,75,97,114,97,116,101))
end
if GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) then
if GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) and GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)).Level.Value < 299 then
_G.Level = true
elseif GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) and GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)).Level.Value >= 300 then
_G.Level = false
end
elseif _0x5FB7 >= 1500 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,108,97,99,107,98,101,97,114,100,82,101,119,97,114,100),string.char(68,114,97,103,111,110,67,108,97,119),string.char(50))
end
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,83,117,112,101,114,104,117,109,97,110))
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
if _G.AutoDeathStep then
local _0xCB1F
repeat
pcall(function()
if plr:FindFirstChild(string.char(87,101,97,112,111,110,65,115,115,101,116,67,97,99,104,101)) and not GetBP(string.char(68,101,97,116,104,32,83,116,101,112)) then
if not GetBP(string.char(66,108,97,99,107,32,76,101,103)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,108,97,99,107,76,101,103))
end
if GetBP(string.char(66,108,97,99,107,32,76,101,103)) and GetBP(string.char(66,108,97,99,107,32,76,101,103)).Level.Value >= 400 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,68,101,97,116,104,83,116,101,112))
_G.Level = false
elseif GetBP(string.char(66,108,97,99,107,32,76,101,103)) and GetBP(string.char(66,108,97,99,107,32,76,101,103)).Level.Value < 399 then
_G.Level = true
end
if
(GetBP(string.char(66,108,97,99,107,32,76,101,103)) or GetBP(string.char(66,108,97,99,107,32,76,101,103)).Level.Value >= 400)
and workspace.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0
then
if GetBP(string.char(76,105,98,114,97,114,121,32,75,101,121)) then
while true do
wait()
_tp(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))
if not _G.AutoDeathStep then
break
elseif
Root.Position
== CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position
then
break
end
end
if
Root.CFrame == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)
then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,68,101,97,116,104,83,116,101,112))
end
elseif not GetBP(string.char(76,105,98,114,97,114,121,32,75,101,121)) then
local _0x2E7A = GetConnectionEnemies(string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108))
if _0x2E7A then
while true do
wait()
Attack.Kill(_0x2E7A, _G.AutoDeathStep)
if not _0x2E7A.Parent then
break
elseif
_0x2E7A.Humanoid.Health <= 0
or _G.AutoDeathStep == false
or GetBP(string.char(76,105,98,114,97,114,121,32,75,101,121))
or GetBP(string.char(68,101,97,116,104,32,83,116,101,112))
then
break
end
end
else
_tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
end
end
end
end
end)
_0xCB1F = nil
while wait(Sec) do
if _G.AutoDeathStep then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
do
spawn(function()
while wait(Sec) do
if _G.Auto_SharkMan_Karate then
pcall(function()
if plr:FindFirstChild(string.char(87,101,97,112,111,110,65,115,115,101,116,67,97,99,104,101)) and not GetBP(string.char(83,104,97,114,107,109,97,110,32,75,97,114,97,116,101)) then
if not GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,70,105,115,104,109,97,110,75,97,114,97,116,101))
end
if GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) and GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)).Level.Value >= 400 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,83,104,97,114,107,109,97,110,75,97,114,97,116,101))
_G.Level = false
elseif GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) and GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)).Level.Value < 399 then
_G.Level = true
end
if GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)) or GetBP(string.char(70,105,115,104,109,97,110,32,75,97,114,97,116,101)).Level.Value >= 400 then
if not GetBP(string.char(87,97,116,101,114,32,75,101,121)) then
if not GetBP(string.char(87,97,116,101,114,32,75,101,121)) then
local _0x6690 = GetConnectionEnemies(string.char(84,105,100,101,32,75,101,101,112,101,114))
if _0x6690 then
while true do
wait()
Attack.Kill(_0x6690, _G.Auto_SharkMan_Karate)
if not _0x6690.Parent then
break
elseif
_0x6690.Humanoid.Health <= 0
or _G.Auto_SharkMan_Karate == false
or GetBP(string.char(87,97,116,101,114,32,75,101,121))
or GetBP(string.char(83,104,97,114,107,109,97,110,32,75,97,114,97,116,101))
then
break
end
end
else
_tp(CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625))
end
end
elseif
string.find(replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,83,104,97,114,107,109,97,110,75,97,114,97,116,101)),string.char(107,101,121,115))
and GetBP(string.char(87,97,116,101,114,32,75,101,121))
then
while true do
wait()
_tp(
CFrame.new(
-2604.6958,
239.432526,
-10315.1982,
0.0425701365,
0,
-0.999093413,
0,
1,
0,
0.999093413,
0,
0.0425701365
)
)
if not _G.Auto_SharkMan_Karate then
break
elseif
Root.Position
== CFrame.new(
-2604.6958,
239.432526,
-10315.1982,
0.0425701365,
0,
-0.999093413,
0,
1,
0,
0.999093413,
0,
0.0425701365
).Position
then
break
end
end
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,83,104,97,114,107,109,97,110,75,97,114,97,116,101))
end
end
end
end)
end
end
end)
end
spawn(function()
while wait(Sec) do
if _G.Auto_Electric_Claw then
pcall(function()
if plr:FindFirstChild(string.char(87,101,97,112,111,110,65,115,115,101,116,67,97,99,104,101)) then
if not GetBP(string.char(69,108,101,99,116,114,111)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,69,108,101,99,116,114,111))
end
if GetBP(string.char(69,108,101,99,116,114,111)) and GetBP(string.char(69,108,101,99,116,114,111)).Level.Value >= 400 then
if replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,69,108,101,99,116,114,105,99,67,108,97,119),string.char(83,116,97,114,116)) == nil then
notween(CFrame.new(-12548, 337, -7481))
end
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,69,108,101,99,116,114,105,99,67,108,97,119))
elseif GetBP(string.char(69,108,101,99,116,114,111)) and GetBP(string.char(69,108,101,99,116,114,111)).Level.Value < 400 then
while true do
_G.AutoFarm_Bone = true
wait()
if not _G.Auto_Electric_Claw then
break
elseif GetBP(string.char(69,108,101,99,116,114,105,99,32,67,108,97,119)) then
break
end
end
_G.AutoFarm_Bone = false
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.AutoDragonTalon then
pcall(function()
if plr:FindFirstChild(string.char(87,101,97,112,111,110,65,115,115,101,116,67,97,99,104,101)) then
if not GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,108,97,99,107,98,101,97,114,100,82,101,119,97,114,100),string.char(68,114,97,103,111,110,67,108,97,119),string.char(50))
end
if GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) and GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)).Level.Value >= 400 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,111,110,101,115),string.char(66,117,121), 1, 1)
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,68,114,97,103,111,110,84,97,108,111,110))
elseif GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)) and GetBP(string.char(68,114,97,103,111,110,32,67,108,97,119)).Level.Value < 400 then
while true do
_G.AutoFarm_Bone = true
wait()
if not _G.AutoDragonTalon then
break
elseif GetBP(string.char(68,114,97,103,111,110,32,84,97,108,111,110)) then
break
end
end
_G.AutoFarm_Bone = false
end
end
end)
end
end
end)
spawn(function()
while wait() do
pcall(function()
if _G.Auto_God_Human then
if
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,71,111,100,104,117,109,97,110), true)
==string.char(66,114,105,110,103,32,109,101,32,50,48,32,70,105,115,104,32,84,97,105,108,115,44,32,50,48,32,77,97,103,109,97,32,79,114,101,44,32,49,48,32,68,114,97,103,111,110,32,83,99,97,108,101,115,32,97,110,100,32,49,48,32,77,121,115,116,105,99,32,68,114,111,112,108,101,116,115,46)then
if GetM(string.char(68,114,97,103,111,110,32,83,99,97,108,101)) == false then
if not World3 then
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
return
end
Lv = 1575
_G.Level = true
elseif GetM(string.char(68,114,97,103,111,110,32,83,99,97,108,101)) < 10 then
if not World3 then
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
return
end
Lv = 1575
_G.Level = true
elseif GetM(string.char(70,105,115,104,32,84,97,105,108)) ~= false then
if GetM(string.char(70,105,115,104,32,84,97,105,108)) < 20 then
if World3 then
Lv = 1775
_G.Level = true
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
end
elseif GetM(string.char(77,121,115,116,105,99,32,68,114,111,112,108,101,116)) ~= false then
if not (GetM(string.char(77,121,115,116,105,99,32,68,114,111,112,108,101,116)) < 10) then
if GetM(string.char(77,97,103,109,97,32,79,114,101)) == false or GetM(string.char(77,97,103,109,97,32,79,114,101)) < 20 then
if World2 then
Lv = 1175
_G.Level = true
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
end
elseif World2 then
Lv = 1425
_G.Level = true
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
elseif World2 then
Lv = 1425
_G.Level = true
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
elseif World3 then
Lv = 1775
_G.Level = true
return
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
end
return
else
if replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,71,111,100,104,117,109,97,110), true) == 3 then
return nil
end
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,71,111,100,104,117,109,97,110))
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
if _G.Snaguine then
local _0xCB1F
repeat
pcall(function()
if not GetBP(string.char(83,97,110,103,117,105,110,101,32,65,114,116)) then
replicated.Remotes.CommF_:InvokeServer(string.char(83,97,110,103,117,105,110,101,32,65,114,116))
end
if GetBP(string.char(83,97,110,103,117,105,110,101,32,65,114,116)) then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,83,97,110,103,117,105,110,101,65,114,116))
else
if GetM(string.char(76,101,118,105,97,116,104,97,110,32,72,101,97,114,116)) >= 1 then
print(string.char(67,111,109,112,108,101,116,101,100,33,33))
elseif World3 then
_G.DangerSc =string.char(76,118,32,73,110,102,105,110,105,116,101)_G.SailBoats = true
else
_G.SailBoats = false
end
if GetM(string.char(86,97,109,112,105,114,101,32,70,97,110,103)) <= 19 then
if World2 then
local _0xF864 = GetConnectionEnemies(string.char(86,97,109,112,105,114,101))
if _0xF864 then
while true do
task.wait()
Attack.Kill(_0xF864, _G.Snaguine)
if not _G.Snaguine then
break
elseif _0xF864.Humanoid.Health <= 0 or not _0xF864.Parent then
break
end
end
else
_tp(CFrame.new(-6041.29248046875, 6.4027109146118164, -1304.63330078125))
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
end
if GetM(string.char(86,97,109,112,105,114,101,32,70,97,110,103)) >= 20 and GetM(string.char(68,101,109,111,110,105,99,32,87,105,115,112)) <= 19 then
if World3 then
local _0xB0DF = GetConnectionEnemies(string.char(68,101,109,111,110,105,99,32,83,111,117,108))
if _0xB0DF then
while true do
task.wait()
Attack.Kill(_0xB0DF, _G.Snaguine)
if not _G.Snaguine then
break
elseif _0xB0DF.Humanoid.Health <= 0 or not _0xB0DF.Parent then
break
end
end
else
_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,90,111,117))
end
end
if
GetM(string.char(86,97,109,112,105,114,101,32,70,97,110,103)) >= 20
and GetM(string.char(68,101,109,111,110,105,99,32,87,105,115,112)) >= 20
and GetM(string.char(68,97,114,107,32,70,114,97,103,109,101,110,116)) <= 1
then
if World2 then
local _0xADC4 = GetConnectionEnemies(string.char(68,97,114,107,98,101,97,114,100))
if _0xADC4 then
while true do
task.wait()
Attack.Kill(_0xADC4, _G.Snaguine)
if not _G.Snaguine then
break
elseif _0xADC4.Humanoid.Health <= 0 or not _0xADC4.Parent then
break
end
end
else
_tp(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
end
else
replicated.Remotes.CommF_:InvokeServer(string.char(84,114,97,118,101,108,68,114,101,115,115,114,111,115,97))
end
end
end
end)
_0xCB1F = nil
while wait(Sec) do
if _G.Snaguine then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
end
do
spawn(function()
while wait() do
if _G.FindMirage then
local _0xCB1F
repeat
pcall(function()
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(77,105,114,97,103,101,32,73,115,108,97,110,100), true) then
_tp(workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100)).Center.CFrame * CFrame.new(0, 300, 0))
else
local _0x9A29 = CheckBoat()
if _0x9A29 then
if plr.Character.Humanoid.Sit == false then
_tp(_0x9A29.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
else
while true do
wait()
local _0x66D1 = CFrame.new(-10000000, 31, 37016.25)
if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
_tp(CFrame.new(-10000000, 150, 37016.25))
else
_tp(CFrame.new(-10000000, 31, 37016.25))
end
if
_G.FindMirage
and not (
(_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude
<= 10
)
then
if
not (
workspace._WorldOrigin.Locations:FindFirstChild(string.char(77,105,114,97,103,101,32,73,115,108,97,110,100))
or plr.Character.Humanoid.Sit == false
)
then
continue
end
end
break
end
plr.Character.Humanoid.Sit = false
end
else
local _0x66D1 = CFrame.new(-16927.451, 9.086, 433.864)
TeleportToTarget(_0x66D1)
if (_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,111,97,116), _G.SelectedBoat)
end
end
end
end)
_0xCB1F = nil
while wait() do
if _G.FindMirage then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
end
spawn(function()
while task.wait(0.1) do
pcall(function()
if _G.AutoMysticIsland then
for _0xFD54, child in pairs(game:GetService(string.char(87,111,114,107,115,112,97,99,101))._WorldOrigin.Locations:GetChildren()) do
if child.Name ==string.char(77,105,114,97,103,101,32,73,115,108,97,110,100)then
topos(child.CFrame * CFrame.new(0, 333, 0))
end
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
if _G.HighestMirage then
pcall(function()
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(77,105,114,97,103,101,32,73,115,108,97,110,100), true) then
_tp(workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100)).Center.CFrame * CFrame.new(0, 400, 0))
end
end)
end
end
end)
end
do
spawn(function()
pcall(function()
while wait(0.1) do
if _G.TPGEAR then
local _0x7490 = pairs
local _0x9835 = workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100))
for _0xFD54, child in _0x7490(_0x9835:GetChildren()) do
if child.Name ==string.char(80,97,114,116)and child.ClassName ==string.char(77,101,115,104,80,97,114,116)then
_tp(child.CFrame)
end
end
end
end
end)
end)
end
do
spawn(function()
pcall(function()
while wait(Sec) do
if _G.can then
local _0x7490 = pairs
local _0x9835 = workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100))
for _0xFD54, child in _0x7490(_0x9835:GetChildren()) do
if child.Name ==string.char(80,97,114,116)then
if child.ClassName ==string.char(77,101,115,104,80,97,114,116)then
child.Transparency = 0
else
child.Transparency = 1
end
end
end
end
end
end)
end)
end
do
spawn(function()
while wait() do
if _G.Addealer then
pcall(function()
for _0xFD54, child in pairs(replicated.NPCs:GetChildren()) do
if child.Name ==string.char(65,100,118,97,110,99,101,100,32,70,114,117,105,116,32,68,101,97,108,101,114)then
_tp(child.HumanoidRootPart.CFrame)
end
end
end)
end
end
end)
end
do
spawn(function()
while wait(0.2) do
if _G.FarmChestM then
pcall(function()
local _0x78C0 = workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100)).Chests:FindFirstChild(string.char(68,105,97,109,111,110,100,67,104,101,115,116))
if not _0x78C0 then
_0x78C0 = workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100)).Chests:FindFirstChild(string.char(70,114,97,103,67,104,101,115,116))
end
if _0x78C0 then
local _0xBFED = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xCDC7 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
local _0xCFDB = _0xCDC7.Character or _0xCDC7.CharacterAdded:Wait()
if not _0xCFDB then
return
end
local _0xA9DD = _0xCFDB:GetPivot().Position
local _0x65F7 = _0xBFED:GetTagged(string.char(95,67,104,101,115,116,84,97,103,103,101,100))
local _0xD727 = math.huge
local _0x1CA8
for i = 1, #_0x65F7 do
local _0x0EDC = _0x65F7[i]
local _0xA95F = (_0x0EDC:GetPivot().Position - _0xA9DD).Magnitude
if
(not SelectedIsland or _0x0EDC:IsDescendantOf(SelectedIsland))
and not _0x0EDC:GetAttribute(string.char(73,115,68,105,115,97,98,108,101,100))
and _0xA95F < _0xD727
then
_0xD727 = _0xA95F
_0x1CA8 = _0x0EDC
end
end
if _0x1CA8 then
_tp(_0x1CA8:GetPivot())
end
end
end)
end
end
end)
end
MoveCamtoMoon = function()
workspace.CurrentCamera.CFrame = CFrame.new(
workspace.CurrentCamera.CFrame.Position,
Lighting:GetMoonDirection() + workspace.CurrentCamera.CFrame.Position
)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(
plr.Character.HumanoidRootPart.Position,
Lighting:GetMoonDirection() + plr.Character.HumanoidRootPart.CFrame.Position
)
end
task.spawn(function()
while task.wait() do
if LookM then
MoveCamtoMoon()
wait(0.1)
replicated.Remotes.CommE:FireServer(string.char(65,99,116,105,118,97,116,101,65,98,105,108,105,116,121))
end
end
end)
do
MoveCamtoMoon = function()
local _0x2364 = Lighting:GetMoonDirection()
workspace.CurrentCamera.CFrame =
CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + _0x2364)
plr.Character.HumanoidRootPart.CFrame =
CFrame.new(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart.Position + _0x2364)
end
end
task.spawn(function()
while task.wait(0.1) do
if LookMV3 then
MoveCamtoMoon()
replicated.Remotes.CommE:FireServer(string.char(65,99,116,105,118,97,116,101,65,98,105,108,105,116,121))
_0x969C:SendKeyEvent(true,string.char(84), false, game)
wait(0.5)
_0x969C:SendKeyEvent(false,string.char(84), false, game)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Mink then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) ~= 2 then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 1 then
local _0xA290 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
if not _0xA290 then
_0xA290 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
end
if _0xA290 then
local _0x78C0 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
if not _0x78C0 then
_0x78C0 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
end
if not _0x78C0 then
_tp(workspace.Flower2.CFrame)
elseif not plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
if not plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
local _0x86EF = GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101))
if _0x86EF then
while true do
wait()
Attack.Kill(_0x86EF, _G.Auto_Mink)
if GetBP(string.char(70,108,111,119,101,114,32,51)) then
break
elseif
not _0x86EF.Parent
or _0x86EF.Humanoid.Health <= 0
or _G.Auto_Mink == false
then
break
end
end
else
_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
end
end
end
else
_tp(workspace.Flower1.CFrame)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 2 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(51))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 1 then
_G.AutoFarmChest = true
else
_G.AutoFarmChest = false
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Human then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) ~= -2 then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 1 then
local _0xA290 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
if not _0xA290 then
_0xA290 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
end
if _0xA290 then
local _0x78C0 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
if not _0x78C0 then
_0x78C0 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
end
if not _0x78C0 then
_tp(workspace.Flower2.CFrame)
elseif not plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
if not plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
local _0xBBE2 = GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101))
if _0xBBE2 then
while true do
wait()
Attack.Kill(_0xBBE2, _G.Auto_Human)
if plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
break
elseif
not _0xBBE2.Parent
or _0xBBE2.Humanoid.Health <= 0
or _G.Auto_Human == false
then
break
end
end
else
_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
end
end
end
else
_tp(workspace.Flower1.CFrame)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 2 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(51))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 1 then
local _0xAD99 = GetConnectionEnemies(Human_v3_Mob[1])
if _0xAD99 then
while true do
wait()
Attack.Kill(_0xAD99, _G.Auto_Human)
if _0xAD99.Humanoid.Health <= 0 then
break
elseif not _0xAD99.Parent or not _G.Auto_Human then
break
end
end
else
_tp(CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625))
end
local _0x15B9 = GetConnectionEnemies(Human_v3_Mob[2])
if _0x15B9 then
while true do
wait()
Attack.Kill(_0x15B9, _G.Auto_Human)
if _0x15B9.Humanoid.Health <= 0 then
break
elseif not _0x15B9.Parent or not _G.Auto_Human then
break
end
end
else
_tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
end
local _0x5EFB = GetConnectionEnemies(Human_v3_Mob[3])
if _0x5EFB then
while true do
wait()
Attack.Kill(_0x5EFB, _G.Auto_Human)
if _0x5EFB.Humanoid.Health <= 0 then
break
elseif not _0x5EFB.Parent or not _G.Auto_Human then
break
end
end
else
_tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
end
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Skypiea then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) ~= -2 then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 1 then
local _0xA290 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
if not _0xA290 then
_0xA290 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
end
if _0xA290 then
local _0x78C0 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
if not _0x78C0 then
_0x78C0 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
end
if not _0x78C0 then
_tp(workspace.Flower2.CFrame)
elseif not plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
if not plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
local _0xA972 = GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101))
if _0xA972 then
while true do
wait()
Attack.Kill(_0xA972, _G.Auto_Skypiea)
if plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
break
elseif
not _0xA972.Parent
or _0xA972.Humanoid.Health <= 0
or _G.Auto_Skypiea == false
then
break
end
end
else
_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
end
end
end
else
_tp(workspace.Flower1.CFrame)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 2 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(51))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 1 then
for _0xFD54, child in pairs(game.Players:GetChildren()) do
if child.Name ~= plr.Name and tostring(child.Data.Race.Value) ==string.char(83,107,121,112,105,101,97)then
while true do
task.wait()
_tp(
child.HumanoidRootPart.CFrame
* CFrame.new(0, 8, 0)
* CFrame.Angles(math.rad(-45), 0, 0)
)
if child.Humanoid.Health <= 0 then
break
elseif _G.Auto_Skypiea == false then
break
end
end
end
end
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Fish then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) ~= -2 then
if replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 1 then
local _0xA290 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
if not _0xA290 then
_0xA290 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,49))
end
if _0xA290 then
local _0x78C0 = plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
if not _0x78C0 then
_0x78C0 = plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,50))
end
if not _0x78C0 then
_tp(workspace.Flower2.CFrame)
elseif not plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
if not plr.Character:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
local _0xA36F = GetConnectionEnemies(string.char(83,119,97,110,32,80,105,114,97,116,101))
if _0xA36F then
while true do
wait()
Attack.Kill(_0xA36F, _G.Auto_Fish)
if plr.Backpack:FindFirstChild(string.char(70,108,111,119,101,114,32,51)) then
break
elseif
not _0xA36F.Parent
or _0xA36F.Humanoid.Health <= 0
or _G.Auto_Fish == false
then
break
end
end
else
_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
end
end
end
else
_tp(workspace.Flower1.CFrame)
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(49)) == 2 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,108,99,104,101,109,105,115,116),string.char(51))
end
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 0 then
replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(50))
elseif replicated.Remotes.CommF_:InvokeServer(string.char(87,101,110,108,111,99,107,116,111,97,100),string.char(49)) == 1 then
warn(string.char(83,101,97,32,66,101,97,115,116,32,83,111,111,110))
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
if _G.Lver then
pcall(function()
for _0xFD54, descendant in pairs(workspace.Map[string.char(84,101,109,112,108,101,32,111,102,32,84,105,109,101)]:GetDescendants()) do
if descendant.Name ==string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)then
fireproximityprompt(descendant, math.huge)
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.AcientOne then
local _0x1390 = {string.char(82,101,98,111,114,110,32,83,107,101,108,101,116,111,110),string.char(76,105,118,105,110,103,32,90,111,109,98,105,101),string.char(68,101,109,111,110,105,99,32,83,111,117,108),string.char(80,111,115,101,115,115,101,100,32,77,117,109,109,121),
}
for i = 1, #_0x1390 do
if plr.Character:FindFirstChild(string.char(82,97,99,101,69,110,101,114,103,121)).Value == 1 then
vim1:SendKeyEvent(true,string.char(89), false, game)
replicated.Remotes.CommF_:InvokeServer(string.char(85,112,103,114,97,100,101,82,97,99,101),string.char(66,117,121))
_tp(CFrame.new(-8987.041015625, 215.862060546875, 5886.71044921875))
elseif plr.Character:FindFirstChild(string.char(82,97,99,101,84,114,97,110,115,102,111,114,109,101,100)).Value == false then
local _0xFE5E = GetConnectionEnemies(_0x1390)
if _0xFE5E then
while true do
wait()
Attack.Kill(_0xFE5E, _G.AcientOne)
if _G.AcientOne == false then
break
elseif _0xFE5E.Humanoid.Health <= 0 or not _0xFE5E.Parent then
break
end
end
else
_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
end
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.TPDoor then
if tostring(plr.Data.Race.Value) ==string.char(77,105,110,107)then
_tp(CFrame.new(29020.66015625, 14889.4267578125, -379.26828002929688))
elseif tostring(plr.Data.Race.Value) ==string.char(70,105,115,104,109,97,110)then
_tp(CFrame.new(28224.056640625, 14889.4267578125, -210.58720397949219))
elseif tostring(plr.Data.Race.Value) ==string.char(67,121,98,111,114,103)then
_tp(CFrame.new(28492.4140625, 14894.4267578125, -422.11001586914062))
elseif tostring(plr.Data.Race.Value) ==string.char(83,107,121,112,105,101,97)then
_tp(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
elseif tostring(plr.Data.Race.Value) ==string.char(71,104,111,117,108)then
_tp(CFrame.new(28672.720703125, 14889.1279296875, 454.59616088867188))
elseif tostring(plr.Data.Race.Value) ==string.char(72,117,109,97,110)then
_tp(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Complete_Trials then
if tostring(plr.Data.Race.Value) ==string.char(77,105,110,107)then
notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -20, 0))
end
end
end)
end
end)
do
GetSeaBeastTrial = function()
if not workspace.Map:FindFirstChild(string.char(70,105,115,104,109,97,110,84,114,105,97,108)) then
return nil
end
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(84,114,105,97,108,32,111,102,32,87,97,116,101,114)) then
FishmanTrial = workspace._WorldOrigin.Locations:FindFirstChild(string.char(84,114,105,97,108,32,111,102,32,87,97,116,101,114))
end
if FishmanTrial then
local _0xF298 = next
local _0x7B7B, _0x670B = workspace.SeaBeasts:GetChildren()
for _0xFD54, v in _0xF298, _0x7B7B, _0x670B do
if
v:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500
and v.Health.Value > 0
then
return v
end
end
end
end
end
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==string.char(70,105,115,104,109,97,110)and GetSeaBeastTrial() then
while true do
task.wait()
spawn(function()
_tp(
CFrame.new(
GetSeaBeastTrial().HumanoidRootPart.Position.X,
game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Map[string.char(87,97,116,101,114,66,97,115,101,45,80,108,97,110,101)].Position.Y + 300,
GetSeaBeastTrial().HumanoidRootPart.Position.Z
)
)
end)
MousePos = GetSeaBeastTrial().HumanoidRootPart.Position
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.1)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.1)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.1)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
if _G.Complete_Trials == false then
break
elseif not GetSeaBeastTrial() then
break
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==string.char(67,121,98,111,114,103)then
_tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0, 500, 0))
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==string.char(83,107,121,112,105,101,97)then
notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
end
end)
end
end)
end
spawn(function()
while wait(0.1) do
pcall(function()
if
_G.Complete_Trials
and (tostring(plr.Data.Race.Value) ==string.char(72,117,109,97,110)or tostring(plr.Data.Race.Value) ==string.char(71,104,111,117,108))
then
local _0x2D1E = GetConnectionEnemies({string.char(65,110,99,105,101,110,116,32,86,97,109,112,105,114,101),string.char(65,110,99,105,101,110,116,32,90,111,109,98,105,101),
})
if _0x2D1E then
while true do
wait()
Attack.Kill(_0x2D1E, _G.Complete_Trials)
if _G.Complete_Trials == false then
break
elseif not _0x2D1E.Parent or _0x2D1E.Humanoid.Health <= 0 then
break
end
end
end
end
end)
end
end)
do
spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.Defeating then
for _0xFD54, child in pairs(workspace.Characters:GetChildren()) do
if
child.Name ~= plr.Name
and child.Humanoid.Health > 0
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child.Parent
and (Root.Position - child.HumanoidRootPart.Position).Magnitude <= 250
then
while true do
task.wait()
EquipWeapon(_G.SelectWeapon)
_tp(child.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
sethiddenproperty(plr,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
if _G.Defeating == false then
break
elseif
child.Humanoid.Health <= 0
or not child.Parent
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
then
break
end
end
end
end
end
end)
end
end)
end
do
printBeltName = function(p86)
if type(p86) ==string.char(116,97,98,108,101)and p86.Quest.BeltName then
return p86.Quest.BeltName
end
end
end
spawn(function()
while wait(Sec) do
if _G.Dojoo then
pcall(function()
local _0xCA2D = { {
NPC =string.char(68,111,106,111,32,84,114,97,105,110,101,114),
Command =string.char(82,101,113,117,101,115,116,81,117,101,115,116),
} }
local _0x21D1 =
replicated.Modules.Net:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)):InvokeServer(unpack(_0xCA2D))
local _0x14AD = printBeltName(_0x21D1)
if not (debug ~= false or _0x21D1 or _0x14AD) then
_tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875))
debug = true
elseif
debug == true
and (
CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875).Position
- plr.Character.HumanoidRootPart.Position
).Magnitude
<= 50
then
if _0x14AD ==string.char(87,104,105,116,101)then
local _0x3183 = GetConnectionEnemies(string.char(83,107,117,108,108,32,83,108,97,121,101,114))
if _0x3183 then
while true do
task.wait()
Attack.Kill(_0x3183, _G.Dojoo)
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _0x21D1 then
break
elseif not _G.Dojoo or not Attack.Alive(_0x3183) then
break
end
end
else
_tp(CFrame.new(-16759.58984375, 71.283767700195312, 1595.3399658203125))
end
elseif _0x14AD ==string.char(89,101,108,108,111,119)then
while true do
task.wait(1)
_G.SeaBeast1 = true
_G.TerrorShark = true
_G.Shark = true
_G.Piranha = true
_G.MobCrew = true
_G.FishBoat = true
_G.SailBoats = true
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo then
break
elseif not _0x21D1 then
break
end
end
_G.SeaBeast1 = false
_G.TerrorShark = false
_G.Shark = false
_G.Piranha = false
_G.MobCrew = false
_G.FishBoat = false
_G.SailBoats = false
elseif _0x14AD ==string.char(71,114,101,101,110)then
while true do
task.wait(1)
_G.SailBoats = true
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo then
break
elseif not _0x21D1 then
break
end
end
_G.SailBoats = false
elseif _0x14AD ==string.char(80,117,114,112,108,101)then
while true do
task.wait(1)
_G.FarmEliteHunt = true
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo then
break
elseif not _0x21D1 then
break
end
end
_G.FarmEliteHunt = false
elseif _0x14AD ==string.char(82,101,100)then
while true do
task.wait(1)
_G.SailBoats = true
_G.FishBoat = true
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo then
break
elseif not _0x21D1 then
break
end
end
_G.SailBoats = false
_G.FishBoat = false
elseif _0x14AD ==string.char(66,108,97,99,107)then
repeat
task.wait(1)
local _0x47EB = workspace.Map:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,73,115,108,97,110,100))
local _0x0118, _0xA5B0
if _0x47EB then
_G.Prehis_Find = true
if _0x47EB and _0x47EB:FindFirstChild(string.char(67,111,114,101)) then
_0x0118 = _0x47EB.Core
if _0x0118:FindFirstChild(string.char(65,99,116,105,118,97,116,105,111,110,80,114,111,109,112,116)) then
_0xA5B0 = _0x47EB.Core.ActivationPrompt
if _0xA5B0:FindFirstChild(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116), true) then
_G.Prehis_Skills = false
_G.Prehis_Find = true
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo or not _0x21D1 then
break
end
end
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo or not _0x21D1 then
break
end
end
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
end
elseif workspace._WorldOrigin.Locations:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100)) then
_G.Prehis_Find = true
if _0x47EB and _0x47EB:FindFirstChild(string.char(67,111,114,101)) then
_0x0118 = _0x47EB.Core
if _0x0118:FindFirstChild(string.char(65,99,116,105,118,97,116,105,111,110,80,114,111,109,112,116)) then
_0xA5B0 = _0x47EB.Core.ActivationPrompt
if _0xA5B0:FindFirstChild(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116), true) then
_G.Prehis_Skills = false
_G.Prehis_Find = true
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo or not _0x21D1 then
break
end
end
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo or not _0x21D1 then
break
end
end
else
_G.Prehis_Skills = true
_G.Prehis_Find = false
end
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
if not _G.Dojoo or not _0x21D1 then
break
end
else
_G.Prehis_Find = true
_G.Prehis_Skills = false
end
_0x21D1 = replicated.Modules.Net
:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116))
:InvokeServer(unpack(_0xCA2D))
until not _G.Dojoo or not _0x21D1
_G.Prehis_Find = PrehisUser.Find
_G.Prehis_Skills = PrehisUser.Skills
elseif _0x14AD ==string.char(79,114,97,110,103,101)or _0x14AD ==string.char(66,108,117,101)then
return nil
end
end
if not _0x21D1 then
debug = false
replicated.Modules.Net:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)):InvokeServer(unpack({
{
NPC =string.char(68,111,106,111,32,84,114,97,105,110,101,114),
Command =string.char(67,108,97,105,109,81,117,101,115,116),
},
}))
end
end)
end
end
end)
checkQuesta = function()
local _0xF35A = { {
Context =string.char(67,104,101,99,107),
} }
local _0x21D1
pcall(function()
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
:WaitForChild(string.char(77,111,100,117,108,101,115))
:WaitForChild(string.char(78,101,116))
:WaitForChild(string.char(82,70,47,68,114,97,103,111,110,72,117,110,116,101,114))
:InvokeServer(unpack({ {
Context =string.char(82,101,113,117,101,115,116,81,117,101,115,116),
} }))
end)
local _0xFD54 = pcall(function()
_0x21D1 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
:WaitForChild(string.char(77,111,100,117,108,101,115))
:WaitForChild(string.char(78,101,116))
:WaitForChild(string.char(82,70,47,68,114,97,103,111,110,72,117,110,116,101,114))
:InvokeServer(unpack(_0xF35A))
end)
local _0x9601 = false
local _0xC057
local _0x3587
local _0x13D7
if _0x21D1 and _0x21D1.Text then
_0x9601 = true
local _0x9E8C = _0x21D1.Text
if string.find(tostring(_0x9E8C),string.char(68,101,102,101,97,116)) then
_0x13D7 = 1
_0xC057 = tonumber(string.sub(tostring(_0x9E8C), 8, 9))
for _0xFD54, v in pairs({string.char(72,121,100,114,97,32,69,110,102,111,114,99,101,114),string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116),
}) do
if string.find(_0x9E8C, v) then
_0x3587 = v
break
end
end
elseif string.find(tostring(_0x9E8C),string.char(68,101,115,116,114,111,121)) then
_0xC057 = 10
_0x13D7 = 2
_0x3587 = nil
end
end
return _0x9601, _0x3587, _0xC057, _0x13D7
end
BackTODoJo = function()
for _0xFD54, child in pairs(game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
if
child.Name ==string.char(78,111,116,105,102,105,99,97,116,105,111,110,84,101,109,112,108,97,116,101)and string.find(child.Text,string.char(72,101,97,100,32,98,97,99,107,32,116,111,32,116,104,101,32,68,111,106,111,32,116,111,32,99,111,109,112,108,101,116,101,32,109,111,114,101,32,116,97,115,107,115))
then
return true
end
end
return false
end
DragonMobClear = function(p87, p88, p89)
if workspace.Enemies:FindFirstChild(p88) then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child.Name == p88 and Attack.Alive(child) and p87 then
Attack.Kill(child, p87)
end
end
else
_tp(p89)
end
end
do
GetQuestDracoLevel = function()
return replicated.Modules.Net:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)):InvokeServer(unpack({
{
NPC =string.char(68,114,97,103,111,110,32,87,105,122,97,114,100),
Command =string.char(85,112,103,114,97,100,101),
},
}))
end
end
spawn(function()
while wait() do
if _G.FarmBlazeEM then
pcall(function()
local _0x8477, _0xAE5D, _0xFD54, _0x6608 = checkQuesta()
if _0x8477 ~= true or BackTODoJo() then
_tp(CFrame.new(5813, 1208, 884))
DragonMobClear(false, nil, nil)
elseif _0x6608 ~= 1 then
if _0x6608 == 2 then
if workspace.Map.Waterfall.IslandModel:FindFirstChild(string.char(77,101,115,104,101,115,47,98,97,109,98,111,111,116,114,101,101), true) then
repeat
wait()
spawn(function()
_tp(
workspace.Map.Waterfall.IslandModel:FindFirstChild(string.char(77,101,115,104,101,115,47,98,97,109,98,111,111,116,114,101,101), true).CFrame
* CFrame.new(4, 0, 0)
)
end)
if
(
workspace.Map.Waterfall.IslandModel:FindFirstChild(string.char(77,101,115,104,101,115,47,98,97,109,98,111,111,116,114,101,101), true).Position
- Root.Position
).Magnitude <= 200
then
MousePos = workspace.Map.Waterfall.IslandModel:FindFirstChild(string.char(77,101,115,104,101,115,47,98,97,109,98,111,111,116,114,101,101),
true
).Position
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.5)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.5)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.5)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
end
until not _G.FarmBlazeEM or BackTODoJo()
end
end
elseif _0xAE5D ==string.char(72,121,100,114,97,32,69,110,102,111,114,99,101,114)or _0xAE5D ==string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116)then
while true do
wait()
DragonMobClear(true, _0xAE5D, CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
if not _G.FarmBlazeEM then
break
elseif BackTODoJo() then
break
end
end
end
end)
end
end
end)
spawn(function()
while wait(0.1) do
if _G.FarmBlazeEM then
pcall(function()
if workspace.EmberTemplate:FindFirstChild(string.char(80,97,114,116)) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.UPGDrago then
if GetQuestDracoLevel() == false then
return nil
end
if GetQuestDracoLevel() == true then
if
(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375).Position - Root.Position).Magnitude
>= 300
then
_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
else
_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
replicated.Modules.Net:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)):InvokeServer(unpack({
{
NPC =string.char(68,114,97,103,111,110,32,87,105,122,97,114,100),
Command =string.char(85,112,103,114,97,100,101),
},
}))
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.DragoV1 and GetM(string.char(68,114,97,103,111,110,32,69,103,103)) <= 0 then
while true do
wait()
_G.Prehis_Find = true
_G.Prehis_Skills = true
_G.Prehis_DE = true
if not _G.DragoV1 then
break
elseif GetM(string.char(68,114,97,103,111,110,32,69,103,103)) >= 1 then
break
end
end
_G.Prehis_Find = PrehisUser.Find
_G.Prehis_Skills = PrehisUser.Skills
_G.Prehis_DE = PrehisUser.DE
end
end)
end
end)
do
spawn(function()
local _0xA9DD
while wait(Sec) do
if _G.AutoFireFlowers then
local _0xB6A2 = workspace:FindFirstChild(string.char(70,105,114,101,70,108,111,119,101,114,115))
local _0x1A12 = GetConnectionEnemies(string.char(70,111,114,101,115,116,32,80,105,114,97,116,101))
if _0x1A12 then
while true do
wait()
Attack.Kill(_0x1A12, _G.AutoFireFlowers)
if not _G.AutoFireFlowers then
break
elseif not _0x1A12.Parent or _0x1A12.Humanoid.Health <= 0 or _0xB6A2 then
break
end
end
else
_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
end
if _0xB6A2 then
local _0xEEB2, _0x1825, _0xECBD = pairs(_0xB6A2:GetChildren())
local _0xA9AE = _0xB921(_0xEEB2, _0x1825, _0xECBD)
local _0xCB1F
while true do
local _0xABF3 = table.pack(_0xA9AE())
if not _0xABF3[1] then
break
end
local _0x4FAE = _0xABF3[3]
if _0x4FAE:IsA(string.char(77,111,100,101,108)) and _0x4FAE.PrimaryPart then
_0xA9DD = _0x4FAE.PrimaryPart.Position
if
(_0xA9DD - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
<= 100
then
vim1:SendKeyEvent(true,string.char(69), false, game)
wait(1.5)
vim1:SendKeyEvent(false,string.char(69), false, game)
else
_0xCB1F = 1
break
end
end
end
if _0xCB1F == 1 then
local _0x704A
repeat
_tp(CFrame.new(_0xA9DD))
_0x704A = nil
while true do
local _0xA11E = table.pack(_0xA9AE())
if not _0xA11E[1] then
break
end
local _0xA63C = _0xA11E[3]
if _0xA63C:IsA(string.char(77,111,100,101,108)) and _0xA63C.PrimaryPart then
_0xA9DD = _0xA63C.PrimaryPart.Position
if
(_0xA9DD - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
<= 100
then
vim1:SendKeyEvent(true,string.char(69), false, game)
wait(1.5)
vim1:SendKeyEvent(false,string.char(69), false, game)
else
_0x704A = 1
break
end
end
end
until _0x704A ~= 1
end
end
end
end
end)
end
spawn(function()
while wait(Sec) do
pcall(function()
if _G.DragoV3 then
repeat
wait()
_G.DangerSc =string.char(76,118,32,73,110,102,105,110,105,116,101)_G.SailBoats = true
_G.TerrorShark = true
until not _G.DragoV3
_G.DangerSc =string.char(76,118,32,49)_G.SailBoats = false
_G.TerrorShark = false
end
end)
end
end)
spawn(function()
while wait(Sec) do
if _G.Relic123 then
pcall(function()
if workspace.Map:FindFirstChild(string.char(68,114,97,99,111,84,114,105,97,108)) then
replicated.Remotes.DracoTrial:InvokeServer()
wait(0.5)
while true do
wait()
_tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375))
if not _G.Relic123 then
break
elseif Root.Position == CFrame.new(-39934.9765625, 10685.359375, 22999.34375).Position then
break
end
end
while true do
wait()
_tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625))
if not _G.Relic123 then
break
elseif
Root.Position == CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625).Position
then
break
end
end
wait(2.5)
while true do
wait()
_tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375))
if not _G.Relic123 then
break
elseif Root.Position == CFrame.new(-39914.65625, 10685.384765625, 23000.177734375).Position then
break
end
end
while true do
wait()
_tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375))
if not _G.Relic123 then
break
elseif Root.Position == CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375).Position then
break
end
end
wait(2.5)
while true do
wait()
_tp(CFrame.new(-39908.5, 10685.4052734375, 22990.04296875))
if not _G.Relic123 then
break
elseif Root.Position == CFrame.new(-39908.5, 10685.4052734375, 22990.04296875).Position then
break
end
end
while true do
wait()
_tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975))
if not _G.Relic123 then
break
elseif Root.Position == CFrame.new(-39609.5, 9376.400390625, 23472.94335975).Position then
break
end
end
else
local _0x49F5 = workspace.Map.PrehistoricIsland:FindFirstChild(string.char(84,114,105,97,108,84,101,108,101,112,111,114,116))
if _0x49F5 and _0x49F5:IsA(string.char(80,97,114,116)) then
_tp(CFrame.new(_0x49F5.Position))
end
end
end)
end
end
end)
do
spawn(function()
while wait(Sec) do
pcall(function()
if _G.TrainDrago then
local _0xF738 = {string.char(86,101,110,111,109,111,117,115,32,65,115,115,97,105,108,97,110,116),string.char(72,121,100,114,97,32,69,110,102,111,114,99,101,114),
}
for i = 1, #_0xF738 do
if plr.Character:FindFirstChild(string.char(82,97,99,101,69,110,101,114,103,121)).Value == 1 then
vim1:SendKeyEvent(true,string.char(89), false, game)
replicated.Remotes.CommF_:InvokeServer(string.char(85,112,103,114,97,100,101,82,97,99,101),string.char(66,117,121), 2)
_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
elseif plr.Character:FindFirstChild(string.char(82,97,99,101,84,114,97,110,115,102,111,114,109,101,100)).Value == false then
local _0x9F44 = GetConnectionEnemies(_0xF738)
if _0x9F44 then
while true do
wait()
Attack.Kill(_0x9F44, _G.TrainDrago)
if _G.TrainDrago == false then
break
elseif _0x9F44.Humanoid.Health <= 0 or not _0x9F44.Parent then
break
end
end
else
_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
end
end
end
end
end)
end
end)
end
spawn(function()
while wait(Sec) do
if _G.TpDrago_Prehis then
local _0xCB1F
repeat
local _0x49F5 = workspace.Map.PrehistoricIsland:FindFirstChild(string.char(84,114,105,97,108,84,101,108,101,112,111,114,116))
if _0x49F5 and _0x49F5:IsA(string.char(80,97,114,116)) then
_tp(CFrame.new(_0x49F5.Position))
end
_0xCB1F = nil
while wait(Sec) do
if _G.TpDrago_Prehis then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
do
spawn(function()
while wait(Sec) do
if _G.BuyDrago then
pcall(function()
if
(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375).Position - Root.Position).Magnitude
>= 300
then
_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
else
_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
replicated.Modules.Net:FindFirstChild(string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)):InvokeServer(unpack({
{
NPC =string.char(68,114,97,103,111,110,32,87,105,122,97,114,100),
Command =string.char(68,114,97,103,111,110,82,97,99,101),
},
}))
end
end)
end
end
end)
end
spawn(function()
while wait(Sec) do
if _G.DT_Uzoth then
local _0x66D1 = CFrame.new(
5661.89014,
1211.31909,
864.836731,
0.811413169,
-1.36805838e-08,
-0.584473014,
4.75227395e-08,
1,
4.25682458e-08,
0.584473014,
-6.23161966e-08,
0.811413169
)
_tp(_0x66D1)
if (_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 25 then
replicated.Modules.Net[string.char(82,70,47,73,110,116,101,114,97,99,116,68,114,97,103,111,110,81,117,101,115,116)]:InvokeServer({
NPC =string.char(85,122,111,116,104),
Command =string.char(85,112,103,114,97,100,101),
})
end
end
end
end)
task.spawn(function()
local _0xDF8E = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Modules.Net[string.char(82,70,47,67,114,97,102,116)]
while task.wait(0.3) do
if getgenv().AutoCraftVolcanic then
pcall(function()
_0xDF8E:InvokeServer(string.char(80,111,115,115,105,98,108,101,72,97,114,100,99,111,100,101),string.char(86,111,108,99,97,110,105,99,32,77,97,103,110,101,116))
end)
getgenv().AutoCraftVolcanic = false
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Prehis_Find then
local _0xCFDB = plr.Character
if not _0xCFDB then
return
end
local _0x1327 = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xEABC = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if not _0x1327 or not _0xEABC or _0xEABC.Health <= 0 then
return
end
local _0x47EB = workspace._WorldOrigin.Locations:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100), true)
if _0x47EB then
local _0xEA9D = _0x47EB:FindFirstChild(string.char(72,101,97,100,84,101,108,101,112,111,114,116), true)
or _0x47EB:FindFirstChild(string.char(84,101,108,101,112,111,114,116,95,72,101,97,100), true)
or _0x47EB:FindFirstChild(string.char(72,101,97,100), true)
if _0xEA9D then
local _0x2418 = _0xEA9D.CFrame
local _0xAB65 = _0x2418.Position - _0x2418.LookVector * 40 + Vector3.new(0, 20, 0)
if (_0xAB65 - _0x1327.Position).Magnitude > 30 then
_tp(CFrame.new(_0xAB65))
end
else
local _0xA9DD = _0x47EB.CFrame.Position
_tp(
CFrame.new(
_0xA9DD - (_0xA9DD - _0x1327.Position).Unit * 250 + Vector3.new(0, 60, 0)
)
)
end
else
local _0x94E7 = CheckBoat()
if not _0x94E7 then
local _0x66D1 = CFrame.new(-16927.451, 9.086, 433.864)
TeleportToTarget(_0x66D1)
if (_0x66D1.Position - _0x1327.Position).Magnitude <= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,111,97,116), _G.SelectedBoat orstring.char(71,117,97,114,100,105,97,110))
end
return
end
if _0xEABC.Sit == false then
_tp(_0x94E7.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
return
end
local _0x66D1 = CFrame.new(-10000000, 31, 37016.25)
targetDestination = _0x66D1
if CheckEnemiesBoat() then
_tp(CFrame.new(-10000000, 150, 37016.25))
else
if CheckTerrorShark() or CheckPirateGrandBrigade() then
_tp(CFrame.new(-10000000, 150, 37016.25))
return
end
_tp(_0x66D1)
end
end
end
end)
end
end)
spawn(function()
while wait() do
if _G.AutoStartPrehistoric then
pcall(function()
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100), true) then
local _0x47EB = workspace.Map:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,73,115,108,97,110,100), true)
if _0x47EB and _0x47EB:FindFirstChild(string.char(67,111,114,101)) then
local _0xA5B0 = _0x47EB.Core:FindFirstChild(string.char(65,99,116,105,118,97,116,105,111,110,80,114,111,109,112,116), true)
if _0xA5B0 and _0xA5B0:FindFirstChild(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
if plr:DistanceFromCharacter(_0xA5B0.CFrame.Position) <= 150 then
fireproximityprompt(_0xA5B0.ProximityPrompt, math.huge)
vim1:SendKeyEvent(true,string.char(69), false, game)
wait(1.5)
vim1:SendKeyEvent(false,string.char(69), false, game)
end
_tp(_0xA5B0.CFrame)
end
end
end
end)
end
end
end)
spawn(function()
while wait(0.3) do
if _G.Prehis_Skills then
pcall(function()
local _0x47EB = workspace.Map:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,73,115,108,97,110,100))
if not _0x47EB then
return
end
for _0xFD54, descendant in pairs(_0x47EB:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) or descendant:IsA(string.char(77,101,115,104,80,97,114,116)) then
if descendant.Name:lower():find(string.char(108,97,118,97)) then
descendant:Destroy()
end
end
end
local _0x0118 = _0x47EB:FindFirstChild(string.char(67,111,114,101))
if _0x0118 then
local _0xBFCB = _0x0118:FindFirstChild(string.char(73,110,116,101,114,105,111,114,76,97,118,97))
if _0xBFCB then
_0xBFCB:Destroy()
end
end
local _0x49F5 = _0x47EB:FindFirstChild(string.char(84,114,105,97,108,84,101,108,101,112,111,114,116))
for _0xFD54, descendant in pairs(_0x47EB:GetDescendants()) do
if
descendant.Name ==string.char(84,111,117,99,104,73,110,116,101,114,101,115,116)and (not _0x49F5 or not descendant:IsDescendantOf(_0x49F5))
then
descendant.Parent:Destroy()
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.Prehis_Skills then
pcall(function()
local _0x260B = GetConnectionEnemies(string.char(76,97,118,97,32,71,111,108,101,109))
if _0x260B and _0x260B:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) then
while true do
wait(0.1)
Attack.Kill(_0x260B, true)
_0x260B.Humanoid:ChangeState(15)
if not _G.Prehis_Skills then
break
elseif not _0x260B.Parent or _0x260B.Humanoid.Health <= 0 then
break
end
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.Prehis_Skills then
pcall(function()
local _0x47EB = workspace.Map:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,73,115,108,97,110,100))
if not _0x47EB then
return
end
local _0x0118 = _0x47EB:FindFirstChild(string.char(67,111,114,101))
if not _0x0118 then
return
end
local _0x6B99 = _0x0118:FindFirstChild(string.char(86,111,108,99,97,110,111,82,111,99,107,115))
if not _0x6B99 then
return
end
for _0xFD54, child in pairs(_0x6B99:GetChildren()) do
local _0xE479 = child:FindFirstChild(string.char(86,70,88,76,97,121,101,114))
local _0x7946 = _0xE479 and _0xE479:FindFirstChild(string.char(65,116,48))
local _0xB718 = _0x7946 and _0x7946:FindFirstChild(string.char(71,108,111,119))
if _0xB718 and _0xB718.Enabled then
repeat
wait(0.1)
_tp(_0xE479.CFrame)
if plr:DistanceFromCharacter(_0xE479.CFrame.Position) <= 150 then
MousePos = _0xE479.CFrame.Position
Useskills(string.char(77,101,108,101,101),string.char(90))
wait(0.4)
Useskills(string.char(77,101,108,101,101),string.char(88))
wait(0.4)
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.4)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
wait(0.4)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
wait(0.4)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
end
until not _G.Prehis_Skills or not _0xB718.Enabled
end
end
end)
end
end
end)
spawn(function()
while task.wait(Sec or 0.1) do
if _G.KillAuraFull then
pcall(function()
local _0xCDC7 = game.Players.LocalPlayer
local _0xCFDB = _0xCDC7.Character
local _0x1327 = _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
sethiddenproperty(_0xCDC7,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
if
(child.HumanoidRootPart.Position - _0x1327.Position).Magnitude
<= (Range or 100)
and child.Humanoid.Health > 0
then
child.Humanoid.Health = 0
child.HumanoidRootPart.CanCollide = false
child:BreakJoints()
end
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Prehis_DB then
if workspace:FindFirstChild(string.char(68,105,110,111,66,111,110,101)) then
for _0xFD54, child in pairs(workspace:GetChildren()) do
if child.Name ==string.char(68,105,110,111,66,111,110,101)then
_tp(child.CFrame)
end
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Prehis_DE then
local _0x47EB = workspace.Map:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,73,115,108,97,110,100))
if _0x47EB and _0x47EB:FindFirstChild(string.char(67,111,114,101)) then
if _0x47EB.Core:FindFirstChild(string.char(83,112,97,119,110,101,100,68,114,97,103,111,110,69,103,103,115)) then
local _0x9AFB = _0x47EB.Core.SpawnedDragonEggs:FindFirstChild(string.char(68,114,97,103,111,110,69,103,103))
if _0x9AFB and _0x9AFB:FindFirstChild(string.char(77,111,108,116,101,110)) then
if _0x9AFB.Molten:FindFirstChild(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) then
_tp(_0x9AFB.Molten.CFrame)
fireproximityprompt(_0x9AFB.Molten.ProximityPrompt, 30)
end
end
end
end
end
end)
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
if _G.ResetPH then
local _0x49F5 = workspace.Map.PrehistoricIsland:FindFirstChild(string.char(84,114,105,97,108,84,101,108,101,112,111,114,116))
if not _0x49F5 or not _0x49F5:FindFirstChild(string.char(84,111,117,99,104,73,110,116,101,114,101,115,116)) then
if workspace:FindFirstChild(string.char(68,105,110,111,66,111,110,101)) then
for _0xFD54, child in pairs(workspace:GetChildren()) do
if child.Name ==string.char(68,105,110,111,66,111,110,101)then
_tp(child.CFrame)
end
end
end
elseif tick() - (getgenv().LastPHReset or 0) > 10 then
getgenv().LastPHReset = tick()
plr.Character.Humanoid.Health = 0
end
end
end)
end
end)
ListSeaBoat = {string.char(71,117,97,114,100,105,97,110),string.char(80,105,114,97,116,101,71,114,97,110,100,66,114,105,103,97,100,101),string.char(77,97,114,105,110,101,71,114,97,110,100,66,114,105,103,97,100,101),string.char(80,105,114,97,116,101,66,114,105,103,97,100,101),string.char(77,97,114,105,110,101,66,114,105,103,97,100,101),string.char(80,105,114,97,116,101,83,108,111,111,112),string.char(77,97,114,105,110,101,83,108,111,111,112),string.char(66,101,97,115,116,32,72,117,110,116,101,114),
}
ListSeaZone = {string.char(76,118,32,49),string.char(76,118,32,50),string.char(76,118,32,51),string.char(76,118,32,52),string.char(76,118,32,53),string.char(76,118,32,54),string.char(76,118,32,73,110,102,105,110,105,116,101),
}
spawn(function()
while wait() do
pcall(function()
if getgenv().AutoPressW then
if game.Players.LocalPlayer.Character:WaitForChild(string.char(72,117,109,97,110,111,105,100)).Sit == true then
game:GetService(string.char(86,105,114,116,117,97,108,73,110,112,117,116,77,97,110,97,103,101,114)):SendKeyEvent(true,string.char(87), false, game)
end
end
end)
end
end)
do
spawn(function()
while wait() do
pcall(function()
for _0xFD54, child in pairs(game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Boats:GetChildren()) do
for _0xFD54, descendant in pairs(child:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
if getgenv().NoClipShip or getgenv().FindPrehistoric then
descendant.CanCollide = false
else
descendant.CanCollide = true
end
end
end
end
end)
end
end)
end
spawn(function()
while wait() do
if _G.SailBoats then
pcall(function()
local _0x8832 = CheckBoat()
if
not _0x8832
and (not CheckShark() or not _G.Shark)
and (not CheckTerrorShark() or not _G.TerrorShark)
and (not CheckFishCrew() or not _G.MobCrew)
and (not CheckPiranha() or not _G.Piranha)
and (not CheckEnemiesBoat() or not _G.FishBoat)
and (not CheckSeaBeast() or not _G.SeaBeast1)
and (not _G.PGB or not CheckPirateGrandBrigade())
and (not _G.HCM or not CheckHauntedCrew())
and (not _G.Leviathan1 or not CheckLeviathan())
then
local _0x66D1 = CFrame.new(-16927.451, 9.086, 433.864)
TeleportToTarget(_0x66D1)
if (_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,111,97,116), _G.SelectedBoat)
end
elseif
_0x8832
and (not CheckShark() or not _G.Shark)
and (not CheckTerrorShark() or not _G.TerrorShark)
and (not CheckFishCrew() or not _G.MobCrew)
then
if
(not CheckPiranha() or not _G.Piranha)
and (not CheckEnemiesBoat() or not _G.FishBoat)
and (not CheckSeaBeast() or not _G.SeaBeast1)
and (not _G.PGB or not CheckPirateGrandBrigade())
and (not _G.HCM or not CheckHauntedCrew())
and (not _G.Leviathan1 or not CheckLeviathan())
then
if plr.Character.Humanoid.Sit == false then
_tp(_0x8832.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
else
if _G.DangerSc ==string.char(76,118,32,49)then
CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143)
elseif _G.DangerSc ==string.char(76,118,32,50)then
CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032)
elseif _G.DangerSc ==string.char(76,118,32,51)then
CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774)
elseif _G.DangerSc ==string.char(76,118,32,52)then
CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
elseif _G.DangerSc ==string.char(76,118,32,53)then
CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
elseif _G.DangerSc ==string.char(76,118,32,54)then
CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
elseif _G.DangerSc ==string.char(76,118,32,73,110,102,105,110,105,116,101)then
CFrameSelectedZone = CFrame.new(-10000000, 31, 37016.25)
end
while true do
wait()
if
(_G.FishBoat or not CheckEnemiesBoat())
and (_G.PGB or not CheckPirateGrandBrigade())
and (_G.TerrorShark or not CheckTerrorShark())
then
_tp(CFrameSelectedZone)
else
_tp(CFrameSelectedZone * CFrame.new(0, 150, 0))
end
if
_G.SailBoats ~= false
and (not CheckShark() or not _G.Shark)
and (not CheckTerrorShark() or not _G.TerrorShark)
and (not CheckFishCrew() or not _G.MobCrew)
and (not CheckPiranha() or not _G.Piranha)
and (not CheckSeaBeast() or not _G.SeaBeast1)
and (not CheckEnemiesBoat() or not _G.FishBoat)
and (not _G.Leviathan1 or not CheckLeviathan())
and (not _G.HCM or not CheckHauntedCrew())
and (not _G.PGB or not CheckPirateGrandBrigade())
then
if plr.Character:WaitForChild(string.char(72,117,109,97,110,111,105,100)).Sit ~= false then
continue
end
end
break
end
plr.Character.Humanoid.Sit = false
end
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
pcall(function()
for _0xFD54, child in pairs(workspace.Boats:GetChildren()) do
for _0xFD54, descendant in pairs(workspace.Boats[child.Name]:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
if _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.SailBoat_Hydra or _G.AutofindKitIs then
descendant.CanCollide = false
else
descendant.CanCollide = true
end
end
end
end
end)
end
end)
spawn(function()
while wait() do
pcall(function()
if _G.Shark then
local _0x52A0 = {string.char(83,104,97,114,107)}
if CheckShark() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if table.find(_0x52A0, child.Name) and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.Shark)
if _G.Shark == false then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
if _G.TerrorShark then
local _0x38D4 = {string.char(84,101,114,114,111,114,115,104,97,114,107)}
if CheckTerrorShark() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if table.find(_0x38D4, child.Name) and Attack.Alive(child) then
while true do
task.wait()
Attack.KillSea(child, _G.TerrorShark)
if _G.TerrorShark == false then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
if _G.Piranha then
local _0x07F5 = {string.char(80,105,114,97,110,104,97)}
if CheckPiranha() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if table.find(_0x07F5, child.Name) and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.Piranha)
if _G.Piranha == false then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
if _G.MobCrew then
local _0x966C = {string.char(70,105,115,104,32,67,114,101,119,32,77,101,109,98,101,114)}
if CheckFishCrew() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if table.find(_0x966C, child.Name) and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.MobCrew)
if _G.MobCrew == false then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
if _G.HCM then
local _0x5181 = {string.char(72,97,117,110,116,101,100,32,67,114,101,119,32,77,101,109,98,101,114)}
if CheckHauntedCrew() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if table.find(_0x5181, child.Name) and Attack.Alive(child) then
while true do
task.wait()
Attack.Kill(child, _G.HCM)
if _G.HCM == false then
break
elseif not child.Parent or child.Humanoid.Health <= 0 then
break
end
end
end
end
end
end
if _G.SeaBeast1 then
if workspace.SeaBeasts:FindFirstChild(string.char(83,101,97,66,101,97,115,116,49)) then
for _0xFD54, child in pairs(workspace.SeaBeasts:GetChildren()) do
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(72,101,97,108,116,104))
and child.Health.Value > 0
then
repeat
task.wait()
spawn(function()
_tp(
CFrame.new(
child.HumanoidRootPart.Position.X,
game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Map[string.char(87,97,116,101,114,66,97,115,101,45,80,108,97,110,101)].Position.Y + 200,
child.HumanoidRootPart.Position.Z
)
)
end)
if plr:DistanceFromCharacter(child.HumanoidRootPart.CFrame.Position) <= 500 then
AitSeaSkill_Custom = child.HumanoidRootPart.CFrame
MousePos = AitSeaSkill_Custom.Position
if CheckF() then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
else
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.1)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.1)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.1)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
end
end
until _G.SeaBeast1 == false
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or not child.Parent
or child.Health.Value <= 0
end
end
end
end
if _G.Leviathan1 then
if workspace.SeaBeasts:FindFirstChild(string.char(76,101,118,105,97,116,104,97,110)) then
for _0xFD54, child in pairs(workspace.SeaBeasts:GetChildren()) do
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and child:FindFirstChild(string.char(76,101,118,105,97,116,104,97,110,32,83,101,103,109,101,110,116))
and child:FindFirstChild(string.char(72,101,97,108,116,104))
and child.Health.Value > 0
then
repeat
task.wait()
spawn(function()
_tp(
CFrame.new(
child.HumanoidRootPart.Position.X,
game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Map[string.char(87,97,116,101,114,66,97,115,101,45,80,108,97,110,101)].Position.Y + 200,
child.HumanoidRootPart.Position.Z
)
)
end)
if plr:DistanceFromCharacter(child.HumanoidRootPart.CFrame.Position) <= 500 then
MousePos = child:FindFirstChild(string.char(76,101,118,105,97,116,104,97,110,32,83,101,103,109,101,110,116)).Position
if CheckF() then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
else
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.1)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.1)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.1)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
end
end
until _G.Leviathan1 == false
or not child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or not child.Parent
or child.Health.Value <= 0
end
end
end
end
if _G.FishBoat and CheckEnemiesBoat() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
child:FindFirstChild(string.char(72,101,97,108,116,104))
and child.Health.Value > 0
and child:FindFirstChild(string.char(86,101,104,105,99,108,101,83,101,97,116))
then
repeat
task.wait()
spawn(function()
if child.Name ==string.char(70,105,115,104,66,111,97,116)then
_tp(child.Engine.CFrame * CFrame.new(0, -50, -25))
end
end)
if plr:DistanceFromCharacter(child.Engine.CFrame.Position) <= 150 then
AitSeaSkill_Custom = child.Engine.CFrame
MousePos = AitSeaSkill_Custom.Position
if CheckF() then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
else
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.1)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.1)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.1)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
end
end
until _G.FishBoat == false or not child:FindFirstChild(string.char(86,101,104,105,99,108,101,83,101,97,116)) or child.Health.Value <= 0
end
end
end
if _G.PGB and CheckPirateGrandBrigade() then
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if
child:FindFirstChild(string.char(72,101,97,108,116,104))
and child.Health.Value > 0
and child:FindFirstChild(string.char(86,101,104,105,99,108,101,83,101,97,116))
then
repeat
task.wait()
spawn(function()
if child.Name ==string.char(80,105,114,97,116,101,66,114,105,103,97,100,101)then
_tp(child.Engine.CFrame * CFrame.new(0, -30, -10))
elseif child.Name ==string.char(80,105,114,97,116,101,71,114,97,110,100,66,114,105,103,97,100,101)then
_tp(child.Engine.CFrame * CFrame.new(0, -50, -50))
end
end)
if plr:DistanceFromCharacter(child.Engine.CFrame.Position) <= 150 then
AitSeaSkill_Custom = child.Engine.CFrame
MousePos = AitSeaSkill_Custom.Position
if CheckF() then
weaponSc(string.char(66,108,111,120,32,70,114,117,105,116))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
else
Useskills(string.char(77,101,108,101,101),string.char(90))
Useskills(string.char(77,101,108,101,101),string.char(88))
Useskills(string.char(77,101,108,101,101),string.char(67))
wait(0.1)
Useskills(string.char(83,119,111,114,100),string.char(90))
Useskills(string.char(83,119,111,114,100),string.char(88))
wait(0.1)
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(90))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(88))
Useskills(string.char(66,108,111,120,32,70,114,117,105,116),string.char(67))
wait(0.1)
Useskills(string.char(71,117,110),string.char(90))
Useskills(string.char(71,117,110),string.char(88))
end
end
until _G.PGB == false or not child:FindFirstChild(string.char(86,101,104,105,99,108,101,83,101,97,116)) or child.Health.Value <= 0
end
end
end
end)
end
end)
do
spawn(function()
while wait() do
if _G.AutofindKitIs then
pcall(function()
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100), true) then
_tp(
workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100)).CFrame
* CFrame.new(0, 500, 0)
)
else
local _0xDA35 = CheckBoat()
if _0xDA35 then
if plr.Character.Humanoid.Sit == false then
_tp(_0xDA35.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
else
local _0x66D1 = CFrame.new(-10000000, 31, 37016.25)
while true do
wait()
if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
_tp(CFrame.new(-10000000, 150, 37016.25))
else
_tp(CFrame.new(-10000000, 31, 37016.25))
end
if
_G.AutofindKitIs
and not (
(_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
)
then
if
not (
workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100))
or plr.Character.Humanoid.Sit == false
)
then
continue
end
end
break
end
plr.Character.Humanoid.Sit = false
end
else
local _0x66D1 = CFrame.new(-16927.451, 9.086, 433.864)
TeleportToTarget(_0x66D1)
if (_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,111,97,116), _G.SelectedBoat)
end
end
end
end)
end
end
end)
end
spawn(function()
while wait(0.1) do
if _G.tweenShrine then
pcall(function()
local _0x1A67 = workspace.Map:FindFirstChild(string.char(75,105,116,115,117,110,101,73,115,108,97,110,100))
or game.Workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100))
local _0x6F13 = _0x1A67:FindFirstChild(string.char(83,104,114,105,110,101,65,99,116,105,118,101))
if _0x6F13 then
local _0xF298 = next
local _0x5C63, _0xB93B = _0x6F13:GetDescendants()
for _0xFD54, v in _0xF298, _0x5C63, _0xB93B do
if v:IsA(string.char(66,97,115,101,80,97,114,116)) then
if v.Name:find(string.char(78,101,111,110,83,104,114,105,110,101,80,97,114,116)) then
replicated.Modules.Net:FindFirstChild(string.char(82,69,47,84,111,117,99,104,75,105,116,115,117,110,101,83,116,97,116,117,101)):FireServer()
while true do
wait()
_tp(v.CFrame * CFrame.new(0, 2, 0))
if _G.tweenShrine == false then
break
elseif not _0x1A67 then
break
end
end
end
end
end
else
_tp(
workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100)).CFrame * CFrame.new(0, 500, 0)
)
end
end)
end
end
end)
spawn(function()
while wait(0.1) do
if _G.Collect_Ember then
pcall(function()
if workspace:WaitForChild(string.char(65,116,116,97,99,104,101,100,65,122,117,114,101,69,109,98,101,114)) then
notween(workspace:WaitForChild(string.char(69,109,98,101,114,84,101,109,112,108,97,116,101)):FindFirstChild(string.char(80,97,114,116)).CFrame)
elseif workspace:WaitForChild(string.char(69,109,98,101,114,84,101,109,112,108,97,116,101)) then
notween(workspace:WaitForChild(string.char(69,109,98,101,114,84,101,109,112,108,97,116,101)):FindFirstChild(string.char(80,97,114,116)).CFrame)
return
else
_tp(
workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100)).CFrame * CFrame.new(0, 500, 0)
)
replicated.Modules.Net[string.char(82,70,47,75,105,116,115,117,110,101,83,116,97,116,117,101,80,114,97,121)]:InvokeServer()
end
end)
end
end
end)
do
spawn(function()
while wait(0.1) do
if _G.Trade_Ember then
pcall(function()
if workspace._WorldOrigin.Locations:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100), true) then
replicated.Modules.Net:FindFirstChild(string.char(82,70,47,75,105,116,115,117,110,101,83,116,97,116,117,101,80,114,97,121)):InvokeServer()
end
end)
end
end
end)
end
spawn(function()
while wait(0.1) do
if _G.FrozenTP then
local _0xCB1F
repeat
pcall(function()
if workspace.Map:FindFirstChild(string.char(76,101,118,105,97,116,104,97,110,71,97,116,101)) then
_tp(workspace.Map.LeviathanGate.CFrame)
replicated:WaitForChild(string.char(82,101,109,111,116,101,115)):WaitForChild(string.char(67,111,109,109,70,95)):InvokeServer(string.char(79,112,101,110,76,101,118,105,97,116,104,97,110,71,97,116,101))
end
end)
_0xCB1F = nil
while wait(0.1) do
if _G.FrozenTP then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
do
spawn(function()
while wait() do
if _G.SailBoat_Hydra then
pcall(function()
local _0x67E1 = CheckBoat()
if _0x67E1 then
if plr.Character.Humanoid.Sit == false then
_tp(_0x67E1.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
else
while true do
wait()
if CheckEnemiesBoat() or CheckPirateGrandBrigade() or CheckTerrorShark() then
_tp(CFrame.new(5433, 150, 290))
else
_tp(CFrame.new(5433, 35, 290))
end
if _G.SailBoat_Hydra ~= false then
if plr.Character:WaitForChild(string.char(72,117,109,97,110,111,105,100)).Sit ~= false then
continue
end
end
break
end
plr.Character.Humanoid.Sit = false
end
else
local _0x66D1 = CFrame.new(-16927.451, 9.086, 433.864)
TeleportToTarget(_0x66D1)
if (_0x66D1.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
replicated.Remotes.CommF_:InvokeServer(string.char(66,117,121,66,111,97,116), _G.SelectedBoat)
end
end
end)
end
end
end)
end
do
isnil = function(p90)
return p90 == nil
end
end
do
round = function(p91)
return math.floor(tonumber(p91) + 0.5)
end
end
do
formatNumber = function(p92)
local _0xC9DD = tostring(p92)
local _0x3AC3
repeat
_0xC9DD, _0x3AC3 = _0xC9DD:gsub(string.char(94,40,45,63,37,100,43,41,40,37,100,37,100,37,100,41),string.char(37,49,44,37,50))
until _0x3AC3 == 0
return _0xC9DD
end
end
do
getFruitStock = function()
local _0x4646 =string.char(65,100,118,97,110,99,101,32,70,114,117,105,116,32,83,116,111,99,107,10)local _0x78C0, _0x22CD = pcall(function()
return game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115), true)
end)
if _0x78C0 and _0x22CD then
local _0x3849 = false
for _0xFD54, v in pairs(_0x22CD) do
if v.OnSale then
_0x3849 = true
_0x4646 ..= v.Name ..string.char(32,45,32,36).. formatNumber(v.Price) ..string.char(10)end
end
if not _0x3849 then
_0x4646 ..=string.char(45,32,78,111,32,102,114,117,105,116,46,10)end
else
_0x4646 ..=string.char(45,32,69,114,114,111,114,32,119,104,105,108,101,32,114,101,116,114,105,101,118,105,110,103,32,100,97,116,97,46,10)end
local _0xE6D2 = _0x4646 ..string.char(10,78,111,114,109,97,108,32,70,114,117,105,116,32,83,116,111,99,107,10)local _0xA290, _0xFD47 = pcall(function()
return game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115))
end)
if _0xA290 and _0xFD47 then
local _0xC6CA = false
for _0xFD54, v in pairs(_0xFD47) do
if v.OnSale then
_0xC6CA = true
_0xE6D2 ..= v.Name ..string.char(32,45,32,36).. formatNumber(v.Price) ..string.char(10)end
end
if not _0xC6CA then
_0xE6D2 ..=string.char(45,32,78,111,32,102,114,117,105,116,46,10)end
else
_0xE6D2 ..=string.char(45,32,69,114,114,111,114,32,119,104,105,108,101,32,114,101,116,114,105,101,118,105,110,103,32,100,97,116,97,46,10)end
return _0xE6D2
end
end
spawn(function()
while wait(5) do
pcall(function()
if not _G.Random_Auto then
return
end
local _0x7CCA = plr.PlayerGui:FindFirstChild(string.char(83,112,105,110,110,101,114,87,105,110,100,111,119))
if _0x7CCA then
local _0xFF54 = _0x7CCA:FindFirstChild(string.char(65,98,111,118,101,83,112,105,110,110,101,114))
and _0x7CCA.AboveSpinner:FindFirstChild(string.char(78,97,118,105,103,97,116,105,111,110))
and _0x7CCA.AboveSpinner.Navigation:FindFirstChild(string.char(67,108,111,115,101,66,117,116,116,111,110))
if _0xFF54 and _0xFF54.Visible then
pcall(function()
for _0xFD54, v in pairs(getconnections(_0xFF54.Activated)) do
if v.Function then
v.Function()
elseif v.Fire then
v:Fire()
end
end
end)
end
end
if plr.Data.Level.Value < 50 then
return
end
if RandomFruitCooldown and tick() < RandomFruitCooldown then
return
end
local _0xD772 = require(replicated.Controllers.GachaClient)
local _0x78C0, _0x22CD, _0xFD47 = pcall(function()
return _0xD772.PurchaseGachaAsync(string.char(90,105,111,108,101,115,71,97,99,104,97))
end)
if _0x78C0 and type(_0xFD47) ==string.char(116,97,98,108,101)then
if _0xFD47.Cooldown and _0xFD47.Cooldown.TimeEnds then
local _0x96DF = _0xFD47.Cooldown.TimeEnds - os.time()
if _0x96DF > 0 then
RandomFruitCooldown = tick() + _0x96DF
return
end
end
if _0xFD47.RequirementsMet == false then
RandomFruitCooldown = tick() + 600
return
end
if _0x22CD == true then
RandomFruitCooldown = tick() + 7200
end
end
end)
end
end)
do
spawn(function()
while wait(Sec) do
if _G.DropFruit then
pcall(function()
DropFruits()
end)
end
end
end)
end
spawn(function()
while wait(Sec) do
if _G.StoreF then
pcall(function()
UpdStFruit()
end)
end
end
end)
do
spawn(function()
while wait(Sec) do
if _G.TwFruits then
pcall(function()
local _0xAB82 = GetNearestFruit()
if _0xAB82 then
_tp(_0xAB82.CFrame)
end
end)
end
end
end)
end
spawn(function()
while wait(Sec) do
if _G.InstanceF then
pcall(function()
collectFruits(_G.InstanceF)
end)
end
end
end)
spawn(function()
pcall(function()
while wait() do
if getgenv().AutoBuyFruitSniper then
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115))
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_
:InvokeServer(string.char(80,117,114,99,104,97,115,101,82,97,119,70,114,117,105,116), getgenv().SelectFruit)
end
end
end)
end)
do
spawn(function()
while wait() do
pcall(function()
if getgenv().AutoGetFruit then
for _0xFD54, v in ipairs({string.char(82,111,99,107,101,116,45,82,111,99,107,101,116),string.char(83,112,105,110,45,83,112,105,110),string.char(67,104,111,112,45,67,104,111,112),string.char(83,112,114,105,110,103,45,83,112,114,105,110,103),string.char(66,111,109,98,45,66,111,109,98),string.char(83,109,111,107,101,45,83,109,111,107,101),string.char(83,112,105,107,101,45,83,112,105,107,101),string.char(70,108,97,109,101,45,70,108,97,109,101),string.char(70,97,108,99,111,110,45,70,97,108,99,111,110),string.char(73,99,101,45,73,99,101),string.char(83,97,110,100,45,83,97,110,100),string.char(68,97,114,107,45,68,97,114,107),string.char(71,104,111,115,116,45,71,104,111,115,116),string.char(68,105,97,109,111,110,100,45,68,105,97,109,111,110,100),string.char(76,105,103,104,116,45,76,105,103,104,116),string.char(82,117,98,98,101,114,45,82,117,98,98,101,114),string.char(66,97,114,114,105,101,114,45,66,97,114,114,105,101,114),
}) do
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(unpack({string.char(76,111,97,100,70,114,117,105,116),
v,
}))
end
end
end)
end
end)
end
task.spawn(function()
while task.wait(1) do
if _G.AutoChipBeli then
local _0xCB1F
repeat
pcall(function()
if not GetBP(string.char(83,112,101,99,105,97,108,32,77,105,99,114,111,99,104,105,112)) then
replicated.Remotes.CommF_:InvokeServer(string.char(82,97,105,100,115,78,112,99),string.char(83,101,108,101,99,116), _G.SelectChip)
end
end)
_0xCB1F = nil
while task.wait(1) do
if _G.AutoChipBeli then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
task.spawn(function()
while task.wait(1) do
if _G.AutoChipFruit then
pcall(function()
if not GetBP(string.char(83,112,101,99,105,97,108,32,77,105,99,114,111,99,104,105,112)) then
local _0x21D1 = replicated.Remotes.CommF_:InvokeServer(string.char(71,101,116,70,114,117,105,116,115))
local _0xF1D9
for _0xFD54, v in pairs(_0x21D1) do
if v.Price <= 490000 then
_0xF1D9 = v.Name
break
end
end
if _0xF1D9 then
replicated.Remotes.CommF_:InvokeServer(string.char(76,111,97,100,70,114,117,105,116), tostring(_0xF1D9))
replicated.Remotes.CommF_:InvokeServer(string.char(82,97,105,100,115,78,112,99),string.char(83,101,108,101,99,116), _G.SelectChip)
end
end
end)
end
end
end)
IsRaidActive = function()
local _0x78C0, _0x22CD = pcall(function()
if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
return true
end
local _0x1A76 = plr:GetAttribute(string.char(73,115,108,97,110,100,82,97,105,100,105,110,103))
return _0x1A76 ~= nil and _0x1A76 ~= false and _0x1A76 ~=""end)
local _0xCA78 = _0x78C0 and _0x22CD == true
return _0xCA78
end
do
task.spawn(function()
local _0x1CAD = 0
while task.wait(0.5) do
if _G.Auto_StartRaid then
pcall(function()
if IsRaidActive() or tick() - _0x1CAD < 25 then
return
end
if not GetBP(string.char(83,112,101,99,105,97,108,32,77,105,99,114,111,99,104,105,112)) then
return
end
local _0x66D1
if World2 then
_0x66D1 = CFrame.new(-6438.73535, 250.645355, -4501.50684)
elseif World3 then
_0x66D1 = CFrame.new(-5046, 314, -2960)
end
if not _0x66D1 then
return
end
local _0x1327 = plr.Character and plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
if (_0x1327.Position - _0x66D1.Position).Magnitude > 30 then
_tp(_0x66D1)
return
end
if World2 then
fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
else
local _0xB24B = workspace.Map[string.char(66,111,97,116,32,67,97,115,116,108,101)].RaidSummon2.Button.Main
if _0xB24B and _0xB24B:FindFirstChild(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) then
fireclickdetector(_0xB24B.ClickDetector)
end
end
_0x1CAD = tick()
end)
end
end
end)
end
spawn(function()
local _0x473B = workspace._WorldOrigin.Locations
local _0x3BBC = 1
local _0x7B46 = false
local _0x2BEA = 0
local _0xA9DD
findIsland = function(p93, p94)
local _0x7ADC
local _0x22B9
for _0xFD54, child in ipairs(_0x473B:GetChildren()) do
if child.Name ==string.char(73,115,108,97,110,100,32).. p93 then
local _0xA95F = (child.Position - p94).Magnitude
if not _0x22B9 or _0xA95F < _0x22B9 then
_0x7ADC = child
_0x22B9 = _0xA95F
end
end
end
return _0x7ADC
end
while task.wait(0.3) do
if _G.Raiding then
pcall(function()
if not IsRaidActive() then
_0x7B46 = false
_0xA9DD = nil
_0x2BEA = 0
return
end
local _0xCFDB = plr.Character
local _0x38E7, _0xB651, _0xB69E, _0xA95F, _0xEFCF, _0x082E, _0xC9D8, _0x2562, _0x12DB, _0xEABC, _0x1327, _0xCCA1, _0x37E3, _0x5173, _0x15AE, _0x4392
if _0xCFDB then
_0xCFDB = plr.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
_0x38E7 = plr.Character
if _0x38E7 then
_0x38E7 = plr.Character:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xCFDB and _0x38E7 and not (_0x38E7.Health <= 0) then
if _0x38E7.Sit or _0x38E7.PlatformStand or _0xCFDB.Anchored then
return
end
if not _0x7B46 then
_0x7B46 = true
_0xA9DD = nil
_0x2BEA = 0
_0x3BBC = 1
_0xB651 = 1500
for i = 1, 5 do
_0xB69E = findIsland(i, _0xCFDB.Position)
if _0xB69E then
_0xA95F = (_0xCFDB.Position - _0xB69E.Position).Magnitude
if _0xA95F < _0xB651 then
_0xB651 = _0xA95F
_0x3BBC = i
end
end
end
end
_0x2562 = findIsland(_0x3BBC, _0xA9DD or _0xCFDB.Position)
if not _0x2562 then
return
end
if not _0xA9DD and (_0xCFDB.Position - _0x2562.Position).Magnitude <= 600 then
_0xA9DD = _0x2562.Position
end
if _G.KillAuraRaid and (_0x3BBC == 4 or _0x3BBC == 5) then
sethiddenproperty(plr,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and (child.HumanoidRootPart.Position - _0xCFDB.Position).Magnitude <= 500
and child.Humanoid.Health > 0
then
child.Humanoid.Health = 0
child.HumanoidRootPart.CanCollide = false
child:BreakJoints()
end
end
end
if (_0xCFDB.Position - _0x2562.Position).Magnitude > 600 then
_0x2BEA = 0
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
return
end
_0x12DB = false
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
_0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
_0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
not _0xEABC
or not _0x1327
or not (_0xEABC.Health > 0)
or not ((_0x1327.Position - _0x2562.Position).Magnitude < 800)
then
continue
end
_0x12DB = true
_0xCCA1 = tick() + 25
while true do
task.wait()
Attack.Kill(child, _G.Raiding)
if not _G.Raiding then
break
elseif
not child.Parent
or _0xEABC.Health <= 0
or not IsRaidActive()
or _0xCCA1 < tick()
then
break
end
end
if not _G.Raiding or not IsRaidActive() then
return
end
end
if _0x12DB then
_0x2BEA = 0
else
_0x2BEA += 1
if _0x2BEA > 15 then
_0x4392 = findIsland(_0x3BBC + 1, _0xA9DD or _0x2562.Position)
if _0x4392 then
_0x3BBC += 1
_0x2BEA = 0
_tp(_0x4392.CFrame * CFrame.new(0, 60, 0))
else
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
end
end
end
return
end
elseif _0xCFDB and _0x38E7 and not (_0x38E7.Health <= 0) then
if _0x38E7.Sit or _0x38E7.PlatformStand or _0xCFDB.Anchored then
return
end
if not _0x7B46 then
_0x7B46 = true
_0xA9DD = nil
_0x2BEA = 0
_0x3BBC = 1
_0xB651 = 1500
for i = 1, 5 do
_0xB69E = findIsland(i, _0xCFDB.Position)
if _0xB69E then
_0xA95F = (_0xCFDB.Position - _0xB69E.Position).Magnitude
if _0xA95F < _0xB651 then
_0xB651 = _0xA95F
_0x3BBC = i
end
end
end
end
_0xEFCF = findIsland
_0x082E = _0x3BBC
_0xC9D8 = _0xA9DD or _0xCFDB.Position
_0x2562 = _0xEFCF(_0x082E, _0xC9D8)
if not _0x2562 then
return
end
if not _0xA9DD and (_0xCFDB.Position - _0x2562.Position).Magnitude <= 600 then
_0xA9DD = _0x2562.Position
end
if _G.KillAuraRaid and (_0x3BBC == 4 or _0x3BBC == 5) then
sethiddenproperty(plr,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and (child.HumanoidRootPart.Position - _0xCFDB.Position).Magnitude <= 500
and child.Humanoid.Health > 0
then
child.Humanoid.Health = 0
child.HumanoidRootPart.CanCollide = false
child:BreakJoints()
end
end
end
if (_0xCFDB.Position - _0x2562.Position).Magnitude > 600 then
_0x2BEA = 0
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
return
end
_0x12DB = false
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
_0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
_0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
not _0xEABC
or not _0x1327
or not (_0xEABC.Health > 0)
or not ((_0x1327.Position - _0x2562.Position).Magnitude < 800)
then
continue
end
_0x12DB = true
_0xCCA1 = tick() + 25
while true do
task.wait()
Attack.Kill(child, _G.Raiding)
if not _G.Raiding then
break
elseif
not child.Parent
or _0xEABC.Health <= 0
or not IsRaidActive()
or _0xCCA1 < tick()
then
break
end
end
if not _G.Raiding or not IsRaidActive() then
return
end
end
if _0x12DB then
_0x2BEA = 0
else
_0x2BEA += 1
if _0x2BEA > 15 then
_0x37E3 = findIsland
_0x5173 = _0x3BBC + 1
_0x15AE = _0xA9DD or _0x2562.Position
_0x4392 = _0x37E3(_0x5173, _0x15AE)
if _0x4392 then
_0x3BBC += 1
_0x2BEA = 0
_tp(_0x4392.CFrame * CFrame.new(0, 60, 0))
else
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
end
end
end
return
end
elseif plr.Character then
_0x38E7 = plr.Character:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xCFDB and _0x38E7 and not (_0x38E7.Health <= 0) then
if _0x38E7.Sit or _0x38E7.PlatformStand or _0xCFDB.Anchored then
return
end
if not _0x7B46 then
_0x7B46 = true
_0xA9DD = nil
_0x2BEA = 0
_0x3BBC = 1
_0xB651 = 1500
for i = 1, 5 do
_0xB69E = findIsland(i, _0xCFDB.Position)
if _0xB69E then
_0xA95F = (_0xCFDB.Position - _0xB69E.Position).Magnitude
if _0xA95F < _0xB651 then
_0xB651 = _0xA95F
_0x3BBC = i
end
end
end
end
_0xEFCF = findIsland
_0x082E = _0x3BBC
_0xC9D8 = _0xA9DD or _0xCFDB.Position
_0x2562 = _0xEFCF(_0x082E, _0xC9D8)
if not _0x2562 then
return
end
if not _0xA9DD and (_0xCFDB.Position - _0x2562.Position).Magnitude <= 600 then
_0xA9DD = _0x2562.Position
end
if _G.KillAuraRaid and (_0x3BBC == 4 or _0x3BBC == 5) then
sethiddenproperty(plr,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
and (child.HumanoidRootPart.Position - _0xCFDB.Position).Magnitude <= 500
and child.Humanoid.Health > 0
then
child.Humanoid.Health = 0
child.HumanoidRootPart.CanCollide = false
child:BreakJoints()
end
end
end
if (_0xCFDB.Position - _0x2562.Position).Magnitude > 600 then
_0x2BEA = 0
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
return
end
_0x12DB = false
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
_0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
_0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
not _0xEABC
or not _0x1327
or not (_0xEABC.Health > 0)
or not ((_0x1327.Position - _0x2562.Position).Magnitude < 800)
then
continue
end
_0x12DB = true
_0xCCA1 = tick() + 25
while true do
task.wait()
Attack.Kill(child, _G.Raiding)
if not _G.Raiding then
break
elseif
not child.Parent
or _0xEABC.Health <= 0
or not IsRaidActive()
or _0xCCA1 < tick()
then
break
end
end
if not _G.Raiding or not IsRaidActive() then
return
end
end
if _0x12DB then
_0x2BEA = 0
else
_0x2BEA += 1
if _0x2BEA > 15 then
_0x37E3 = findIsland
_0x5173 = _0x3BBC + 1
_0x15AE = _0xA9DD or _0x2562.Position
_0x4392 = _0x37E3(_0x5173, _0x15AE)
if _0x4392 then
_0x3BBC += 1
_0x2BEA = 0
_tp(_0x4392.CFrame * CFrame.new(0, 60, 0))
else
_tp(_0x2562.CFrame * CFrame.new(0, 60, 0))
end
end
end
return
end
end
end)
else
_0x7B46 = false
_0xA9DD = nil
end
end
end)
spawn(function()
while task.wait() do
if _G.TpPly and _G.PlayersList then
pcall(function()
local _0x993F = game:GetService(string.char(80,108,97,121,101,114,115)):FindFirstChild(_G.PlayersList)
if _0x993F and _0x993F.Character then
if _0x993F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_tp(_0x993F.Character.HumanoidRootPart.CFrame)
end
end
end)
end
end
end)
do
spawn(function()
while task.wait(0.1) do
if SpectatePlys and _G.PlayersList then
local _0xCB1F
repeat
pcall(function()
local _0x993F = game:GetService(string.char(80,108,97,121,101,114,115)):FindFirstChild(_G.PlayersList)
if _0x993F and _0x993F.Character then
if _0x993F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) then
workspace.Camera.CameraSubject = _0x993F.Character.Humanoid
end
end
end)
_0xCB1F = nil
while task.wait(0.1) do
if SpectatePlys and _G.PlayersList then
_0xCB1F = 1
break
end
end
until _0xCB1F ~= 1
return
end
end
end)
end
ListServers = function(p95)
local _0xF376 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x2B65 =string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47).. tostring(game.PlaceId)
..string.char(47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,65,115,99,38,108,105,109,105,116,61,49,48,48).. (p95 andstring.char(38,99,117,114,115,111,114,61).. p95 or"")
local _0x78C0, _0x22CD = pcall(function()
return game:HttpGet(_0x2B65)
end)
if _0x78C0 and _0x22CD then
local _0xA290, _0xFD47 = pcall(function()
return _0xF376:JSONDecode(_0x22CD)
end)
if _0xA290 then
return _0xFD47
end
end
return {
_0x185E = {},
}
end
fetchServersData = function(p96, p97)
local _0x6064 = string.format(string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47,37,100,47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,108,105,109,105,116,61,37,100), p96, p97 or 100)
local _0x78C0, _0x22CD = pcall(function()
return game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101)):JSONDecode(game:HttpGet(_0x6064))
end)
if not _0x78C0 or not _0x22CD or not _0x22CD.data then
return nil
end
return _0x22CD.data
end
IsEntityAlive = function(p98)
if not p98 then
return false
end
local _0xEABC = p98:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
return _0xEABC and _0xEABC.Health > 0
end
GetEnemiesInRange = function(p99, p100)
local _0xD36A = {}
local _0xA9DD = p99:GetPivot().Position
local _0x5AEC = game:GetService(string.char(80,108,97,121,101,114,115)):GetPlayers()
local _0x7B7B = game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Enemies:GetChildren()
for _0xFD54, child in ipairs(_0x7B7B) do
local _0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x1327 and IsEntityAlive(child) and (_0x1327.Position - _0xA9DD).Magnitude <= p100 then
table.insert(_0xD36A, child)
end
end
for _0xFD54, player in ipairs(_0x5AEC) do
if player ~= plr and player.Character then
local _0x1327 = player.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0x1327
and IsEntityAlive(player.Character)
and (_0x1327.Position - _0xA9DD).Magnitude <= p100
then
table.insert(_0xD36A, player.Character)
end
end
end
return _0xD36A
end
do
AttackNoCoolDown = function()
if not plr.Character then
return
end
local _0x8887
local _0x205E, _0x990D, _0x338A = ipairs(plr.Character:GetChildren())
local _0x1504 = _0xB921(_0x205E, _0x990D, _0x338A)
while true do
local _0xD7BC = table.pack(_0x1504())
if not _0xD7BC[1] then
break
end
local _0x7ACA = _0xD7BC[3]
if _0x7ACA:IsA(string.char(84,111,111,108)) then
_0x8887 = _0x7ACA
break
end
end
if not _0x8887 then
return
end
local _0x86F8 = GetEnemiesInRange(plr.Character, 60)
if #_0x86F8 == 0 then
return
end
local _0x5076 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
local _0x7E35 = _0x5076:FindFirstChild(string.char(77,111,100,117,108,101,115))
if not _0x7E35 then
return
end
local _0x1047 =
_0x5076:WaitForChild(string.char(77,111,100,117,108,101,115)):WaitForChild(string.char(78,101,116)):WaitForChild(string.char(82,69,47,82,101,103,105,115,116,101,114,65,116,116,97,99,107))
local _0x8C7A =
_0x5076:WaitForChild(string.char(77,111,100,117,108,101,115)):WaitForChild(string.char(78,101,116)):WaitForChild(string.char(82,69,47,82,101,103,105,115,116,101,114,72,105,116))
if not _0x1047 or not _0x8C7A then
return
end
local _0x0CA4 = {}
local _0x0598
local _0xD25E, _0x67A7, _0x0588 = ipairs(_0x86F8)
for _0xFD54, v in _0xD25E, _0x67A7, _0x0588 do
if not v:GetAttribute(string.char(73,115,66,111,97,116)) then
local _0x5E79 = {string.char(82,105,103,104,116,76,111,119,101,114,65,114,109),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,76,111,119,101,114,65,114,109),string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,72,97,110,100),string.char(76,101,102,116,72,97,110,100),
}
local _0x4EBF = v:FindFirstChild(_0x5E79[math.random(#_0x5E79)]) or v.PrimaryPart
if _0x4EBF then
table.insert(_0x0CA4, {
v,
_0x4EBF,
})
_0x0598 = _0x4EBF
end
end
end
if not _0x0598 then
return
end
_0x1047:FireServer(0)
local _0x55E2 = plr:FindFirstChild(string.char(80,108,97,121,101,114,83,99,114,105,112,116,115))
if not _0x55E2 then
return
end
local _0xDA7E = _0x55E2:FindFirstChildOfClass(string.char(76,111,99,97,108,83,99,114,105,112,116))
while not _0xDA7E do
_0x55E2.ChildAdded:Wait()
_0xDA7E = _0x55E2:FindFirstChildOfClass(string.char(76,111,99,97,108,83,99,114,105,112,116))
end
local _0xB012
if getsenv then
local _0x78C0, _0x22CD = pcall(getsenv, _0xDA7E)
if _0x78C0 and _0x22CD then
_0xB012 = _0x22CD._G.SendHitsToServer
end
end
local _0x78C0, _0x22CD = pcall(function()
return require(_0x7E35.Flags).COMBAT_REMOTE_THREAD or false
end)
if _0x78C0 and _0x22CD and _0xB012 then
_0xB012(_0x0598, _0x0CA4)
elseif _0x78C0 and not _0x22CD then
_0x8C7A:FireServer(_0x0598, _0x0CA4)
end
end
end
CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()
get_Monster = function()
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
local _0x8A58 = child:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or child:FindFirstChild(string.char(72,101,97,100))
if
child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), true)
and _0x8A58
and (child.Head.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 50
then
return true, _0x8A58.Position
end
end
for _0xFD54, child in pairs(workspace.SeaBeasts:GetChildren()) do
if child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) and child:FindFirstChild(string.char(72,101,97,108,116,104)) and child.Health.Value > 0 then
return true, child.HumanoidRootPart.Position
end
end
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if not child:FindFirstChild(string.char(72,101,97,108,116,104)) or not (child.Health.Value > 0) then
continue
end
if child:FindFirstChild(string.char(86,101,104,105,99,108,101,83,101,97,116)) then
return true, child.Engine.Position
end
end
end
Actived = function()
local _0xDE5F = game.Players.LocalPlayer.Character:FindFirstChildOfClass(string.char(84,111,111,108))
local _0xF11D, _0x8DC5 = getconnections(_0xDE5F.Activated)
for _0xFD54, v in next, _0xF11D, _0x8DC5 do
if typeof(v.Function) ==string.char(102,117,110,99,116,105,111,110)then
getupvalues(v.Function)
end
end
end
do
task.spawn(function()
RunSer.Heartbeat:Connect(function()
pcall(function()
if not _G.Seriality then
return
end
AttackNoCoolDown()
local _0xDE5F = game.Players.LocalPlayer.Character:FindFirstChildOfClass(string.char(84,111,111,108))
local _0x7C52 = _0xDE5F.ToolTip
local _0x6181 = get_Monster()
if _0x7C52 ==string.char(66,108,111,120,32,70,114,117,105,116)and _0x6181 then
local _0xC3EB = _0xDE5F:FindFirstChild(string.char(76,101,102,116,67,108,105,99,107,82,101,109,111,116,101))
if _0xC3EB then
Actived()
_0xC3EB:FireServer(Vector3.new(0.01, -500, 0.01), 1, true)
_0xC3EB:FireServer(false)
end
end
end)
end)
end)
end
local _0xE4B3 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x64BF = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x5076 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
local _0x0306 = game:GetService(string.char(87,111,114,107,115,112,97,99,101))
local _0xCDC7 = _0xE4B3.LocalPlayer
if not _0xCDC7.Character then
_0xCDC7.CharacterAdded:Wait()
end
SafeWaitForChild = function(p101, p102)
local _0xFD54, _0x22CD = pcall(function()
return p101:WaitForChild(p102)
end)
return _0x22CD
end
local _0xA1F6 = SafeWaitForChild(_0x0306,string.char(69,110,101,109,105,101,115))
local _0x5A63 = SafeWaitForChild(_0x0306,string.char(67,104,97,114,97,99,116,101,114,115))
local _0x4291 = SafeWaitForChild(_0x5076,string.char(77,111,100,117,108,101,115))
local _0x693A = SafeWaitForChild(_0x4291,string.char(78,101,116))
local _0x3775 = {
Rate = 2e-09,
Enabled = true,
IsAlive = function(p103)
local _0xEABC = p103:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if _0xEABC then
if _0xEABC.Health > 0 then
return true
end
end
return false
end,
GetNearbyTargets = function(p104, p105)
local _0xF957 = {}
local _0xA9DD = p104:GetPivot().Position
local _0x7B7B = p105:GetChildren()
for i = 1, #_0x7B7B do
local _0x863C = _0x7B7B[i]
local _0xEABC = _0x863C:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0x1327 = _0x863C:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0xEABC
and _0x1327
and _0xEABC.Health > 0
and (_0x1327.Position - _0xA9DD).Magnitude <= 60
then
table.insert(_0xF957, _0x863C)
end
end
return _0xF957
end,
GetTargetParts = function(p106)
local _0x9082 = {}
for i = 1, #p106 do
local _0xB8BD = p106[i]
local _0xF726 = _0xB8BD:FindFirstChild(string.char(72,101,97,100)) or _0xB8BD.PrimaryPart
if _0xF726 then
table.insert(_0x9082, {
_0xB8BD,
_0xF726,
})
end
end
return _0x9082
end,
}
_0x3775.GetAllTargets = function(p107)
local _0x1FE1 = {}
local _0x2D03 = _0x3775.GetNearbyTargets(p107, _0xA1F6)
local _0x1456 = _0x3775.GetNearbyTargets(p107, _0x5A63)
for i = 1, #_0x2D03 do
table.insert(_0x1FE1, _0x2D03[i])
end
for i = 1, #_0x1456 do
table.insert(_0x1FE1, _0x1456[i])
end
return _0x1FE1
end
_0x3775.ExecuteFastAttack = function()
local _0xCFDB = _0xCDC7.Character
if not _0xCFDB then
return
end
if not _0xCFDB:FindFirstChildOfClass(string.char(84,111,111,108)) then
return
end
local _0xED07 = _0x3775.GetAllTargets(_0xCFDB)
if #_0xED07 < 1 then
return
end
local _0x2980 = _0x3775.GetTargetParts(_0xED07)
if #_0x2980 < 1 then
return
end
local _0x8A14 = _0x693A[string.char(82,69,47,82,101,103,105,115,116,101,114,72,105,116)]
_0x693A[string.char(82,69,47,82,101,103,105,115,116,101,114,65,116,116,97,99,107)]:FireServer(_0x3775.Rate)
_0x8A14:FireServer(_0x2980[1][2], _0x2980)
end
local _0xC7B2
local _0x1A76
InitializeHitRegistration = function()
for _0xFD54, v in ipairs({
_0x5076.Util,
_0x5076.Common,
_0x5076.Remotes,
_0x5076.Assets,
_0x5076.FX,
}) do
local _0x7B7B = v:GetChildren()
for _0xFD54, child in ipairs(_0x7B7B) do
if child:IsA(string.char(82,101,109,111,116,101,69,118,101,110,116)) and child:GetAttribute(string.char(73,100)) then
_0xC7B2 = child
_0x1A76 = child:GetAttribute(string.char(73,100))
end
end
v.ChildAdded:Connect(function(child)
if child:IsA(string.char(82,101,109,111,116,101,69,118,101,110,116)) and child:GetAttribute(string.char(73,100)) then
_0xC7B2 = child
_0x1A76 = child:GetAttribute(string.char(73,100))
end
end)
end
end
InitializeHitRegistration()
local _0x67D1 = {
Execute = function()
local _0xCFDB = _0xCDC7.Character
if not _0xCFDB then
return
end
local _0x1327 = _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
local _0x0249 = {}
ScanFolder = function(p108)
local _0x7B7B = p108:GetChildren()
for i = 1, #_0x7B7B do
local _0x0DEF = _0x7B7B[i]
local _0xEABC = _0x0DEF:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0xC1F1 = _0x0DEF:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0xEABC
and _0xC1F1
and _0xEABC.Health > 0
and _0x0DEF ~= _0xCFDB
and (_0xC1F1.Position - _0x1327.Position).Magnitude <= 60
then
local _0x4F23 = _0x0DEF:GetChildren()
for _0xFD54, v in ipairs(_0x4F23) do
if v:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0x0249, {
_0x0DEF,
v,
})
end
end
end
end
end
ScanFolder(_0xA1F6)
ScanFolder(_0x5A63)
local _0xDE5F = _0xCFDB:FindFirstChildOfClass(string.char(84,111,111,108))
if
#_0x0249 > 0
and _0xDE5F
and (_0xDE5F:GetAttribute(string.char(87,101,97,112,111,110,84,121,112,101)) ==string.char(77,101,108,101,101)or _0xDE5F:GetAttribute(string.char(87,101,97,112,111,110,84,121,112,101)) ==string.char(83,119,111,114,100))
then
local _0x21D1 = _0x4291.Net.seed:InvokeServer()
local _0x8A14 = _0x693A[string.char(82,69,47,82,101,103,105,115,116,101,114,72,105,116)]
_0x693A[string.char(82,69,47,82,101,103,105,115,116,101,114,65,116,116,97,99,107)]:FireServer()
local _0xF726 = _0x0249[1][1]:FindFirstChild(string.char(72,101,97,100))
if not _0xF726 then
return
end
_0x8A14:FireServer(_0xF726, _0x0249, {})
if _0xC7B2 then
local _0x5502 = math.floor(_0x0306:GetServerTimeNow() / 10 % 10) + 1
local _0x83FD = string.gsub(string.char(82,69,47,82,101,103,105,115,116,101,114,72,105,116),string.char(46), function(p109)
return string.char(bit32.bxor(string.byte(p109), _0x5502))
end)
local _0x233C = bit32.bxor(_0x1A76 + 909090, _0x21D1 * 2)
cloneref(_0xC7B2):FireServer(_0x83FD, _0x233C, _0xF726, _0x0249)
end
end
end,
}
DisableCameraShake = function()
require(_0x5076.Util.CameraShaker):Stop()
end
StartMainLoops = function()
task.spawn(function()
while task.wait(_0x3775.Rate) do
_0x3775.ExecuteFastAttack()
end
end)
_0x64BF.Heartbeat:Connect(function()
pcall(_0x67D1.Execute)
end)
end
StartMainLoops()
task.spawn(function()
while task.wait(Sec) do
if _G.Level then
pcall(function()
local _0x1327 = (plr.Character or plr.CharacterAdded:Wait()):WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x1327 then
return
end
local _0xDA8F = plr.Data.Level.Value
local _0xD89E = IsInSubmergedIsland()
GuiShown(string.char(81,117,101,115,116))
QuestText()
if World3 and _0xDA8F >= 2600 and not _0xD89E then
local _0x66D1 = _0x0F42 or CFrame.new(-16269.7041, 25.2288494, 1373.65955)
if (_0x1327.Position - _0x66D1.Position).Magnitude > 15 then
_tp(_0x66D1)
return
end
pcall(function()
local _0x0F66 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Modules.Net
_0x0F66:FindFirstChild(string.char(82,70,47,83,117,98,109,97,114,105,110,101,87,111,114,107,101,114,83,112,101,97,107)):InvokeServer(string.char(65,115,107,75,105,108,108,101,100,84,105,107,105,66,111,115,115))
task.wait(0.5)
_0x0F66:FindFirstChild(string.char(82,70,47,83,117,98,109,97,114,105,110,101,87,111,114,107,101,114,83,112,101,97,107)):InvokeServer(string.char(84,114,97,118,101,108,84,111,83,117,98,109,101,114,103,101,100,73,115,108,97,110,100))
end)
local _0x3738 = tick()
while true do
task.wait(0.5)
if not _G.Level then
break
elseif IsInSubmergedIsland() or tick() - _0x3738 > 10 then
break
end
end
return
end
local _0x9A5F = QuestNeta()
if not _0x9A5F or not _0x9A5F[1] then
task.wait(1)
return
end
local _0x7CC5 = GuiShown(string.char(81,117,101,115,116))
if _0x7CC5 then
_0x7CC5 = CheckHasQuest(_0x9A5F[5] or _0x9A5F[1])
end
if GuiShown(string.char(81,117,101,115,116)) and not _0x7CC5 then
replicated.Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
task.wait(0.2)
return
end
if not _0x7CC5 then
local _0xAC37 = _0x9A5F[6]
if _0xAC37 then
_tp(_0xAC37)
task.wait(2)
if (_0x1327.Position - _0xAC37.Position).Magnitude <= 10 then
BFAcceptQuest(_0x9A5F[3], _0x9A5F[2], _0x9A5F[5] or _0x9A5F[1])
end
else
BFAcceptQuest(_0x9A5F[3], _0x9A5F[2], _0x9A5F[5] or _0x9A5F[1])
end
return
end
local _0x47FF = _0x9A5F[1]
local _0x286B = false
local _0x02F1, _0x9383, _0x47EC = pairs(workspace.Enemies:GetChildren())
local _0xFC35 = _0xB921(_0x02F1, _0x9383, _0x47EC)
local _0xCB1F
local _0x6909, _0xC1F1
while true do
local _0x74CE = table.pack(_0xFC35())
if not _0x74CE[1] then
_0xCB1F = 1
break
end
_0x6909 = _0x74CE[3]
if not string.find(_0x6909.Name, _0x47FF, 1, true) or not Attack.Alive(_0x6909) then
continue
end
_0xC1F1 = _0x6909:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xC1F1 then
break
end
end
local _0x09FC, _0x0CC2, _0xA449, _0x76FA, _0xB82B, _0xC98B
if _0xCB1F == 1 then
if not _0x286B then
_0x09FC, _0x0CC2, _0xA449 = pairs(replicated:GetChildren())
_0x76FA = _0xB921(_0x09FC, _0x0CC2, _0xA449)
while true do
local _0xF3EB = table.pack(_0x76FA())
if not _0xF3EB[1] then
break
end
_0xB82B = _0xF3EB[3]
if string.find(_0xB82B.Name, _0x47FF, 1, true) and Attack.Alive(_0xB82B) then
_0xC98B = _0xB82B:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xC98B then
_0x286B = true
_tp(_0xC98B.CFrame * CFrame.new(0, 20, 0))
break
end
end
end
end
else
_0x286B = true
local _0x78C0
repeat
task.wait(Sec)
_0x78C0 = not Attack.Alive(_0x6909) or not _0xC1F1.Parent
if not _0x78C0 then
_tp(_0xC1F1.CFrame * CFrame.new(0, 20, 0))
Attack.Kill(_0x6909, _G.Level)
_0x78C0 = not GuiShown(string.char(81,117,101,115,116))
end
until _0x78C0 or not _G.Level or not _0x6909.Parent or not Attack.Alive(_0x6909)
if not _0x286B then
_0x09FC, _0x0CC2, _0xA449 = pairs(replicated:GetChildren())
_0x76FA = _0xB921(_0x09FC, _0x0CC2, _0xA449)
while true do
local _0x894D = table.pack(_0x76FA())
if not _0x894D[1] then
break
end
_0xB82B = _0x894D[3]
if string.find(_0xB82B.Name, _0x47FF, 1, true) and Attack.Alive(_0xB82B) then
_0xC98B = _0xB82B:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xC98B then
_0x286B = true
_tp(_0xC98B.CFrame * CFrame.new(0, 20, 0))
break
end
end
end
end
end
if not _0x286B then
local _0xF651, _0xDE15, _0xA580 = pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())
for _0xFD54, v in _0xF651, _0xDE15, _0xA580 do
if string.find(v.Name, _0x47FF, 1, true) then
_tp(v.CFrame * CFrame.new(0, 20, 0))
_0x286B = true
break
end
end
end
if not _0x286B and PosMon then
_tp(CFrame.new(PosMon) * CFrame.new(0, 20, 0))
end
end)
else
teleporting = false
alreadyTeleported = false
end
end
end)
local _0x53E9 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
local _0x637A = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
spawn(function()
while wait(Sec) do
pcall(function()
if _G.Auto_Awakener then
_0x637A.Remotes.CommF_:InvokeServer(string.char(65,119,97,107,101,110,101,114),string.char(67,104,101,99,107))
_0x637A.Remotes.CommF_:InvokeServer(string.char(65,119,97,107,101,110,101,114),string.char(65,119,97,107,101,110))
end
end)
end
end)
spawn(function()
while task.wait(1) do
if getgenv().AutoBuyMicrochipLaw then
pcall(function()
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(66,108,97,99,107,98,101,97,114,100,82,101,119,97,114,100),string.char(77,105,99,114,111,99,104,105,112),string.char(50))
end)
end
end
end)
spawn(function()
while task.wait(1) do
if getgenv().AutoStartLawRaids then
pcall(function()
fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.AutoLawKak then
pcall(function()
local _0x866E = GetConnectionEnemies(string.char(79,114,100,101,114))
if _0x866E then
while true do
task.wait()
Attack.Kill(_0x866E, _G.AutoLawKak)
if _G.AutoLawKak == false then
break
elseif not _0x866E.Parent or _0x866E.Humanoid.Health <= 0 then
break
end
end
else
_tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
end
end)
end
end
end)
local _0x6CD1 = game.Players.LocalPlayer
GetHRP = function()
local _0xCFDB = _0x6CD1.Character
return _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
end
spawn(function()
while task.wait(0.15) do
if _G.AutoFarmDungeon then
pcall(function()
local _0xCFDB = game.Players.LocalPlayer.Character
local _0x1327 = _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xEABC = _0xCFDB and _0xCFDB:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x1327 or not _0xEABC or _0xEABC.Health <= 0 then
return
end
for _0xFD54, child in pairs(workspace.Enemies:GetChildren()) do
if not _G.AutoFarmDungeon then
break
end
local _0xAF5E = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
local _0xC1F1 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if
_0xAF5E
and _0xC1F1
and _0xAF5E.Health > 0
and (_0xC1F1.Position - _0x1327.Position).Magnitude <= FARM_RANGE
then
while true do
task.wait()
Attack.Kill(child, true)
if not _G.AutoFarmDungeon then
break
elseif not child.Parent or _0xAF5E.Health <= 0 then
break
end
end
end
end
end)
end
end
end)
GetCurrentFloor = function()
local _0x83A9 = GetHRP()
if not _0x83A9 then
return
end
for _0xFD54, child in pairs(workspace.Map.Dungeon:GetChildren()) do
local _0x9BCF = child:FindFirstChild(string.char(69,120,105,116,84,101,108,101,112,111,114,116,101,114))
if
_0x9BCF
and _0x9BCF:FindFirstChild(string.char(82,111,111,116))
and (_0x83A9.Position - _0x9BCF.Root.Position).Magnitude < 200
then
return _0x9BCF.Root
end
end
end
task.spawn(function()
while task.wait(0.3) do
if _G.TPFloor1 then
if not tp1Done then
local _0xC44B = GetCurrentFloor()
if _0xC44B then
local _0x66D1 = _0xC44B.CFrame * CFrame.new(0, 3, 0)
GetHRP().CFrame = _0x66D1
tp1Done = true
end
end
else
tp1Done = false
end
end
end)
task.spawn(function()
while task.wait(0.3) do
if _G.TPFloor2 then
if not tp2Done then
local _0x1D54 = GetHRP()
if _0x1D54 then
for _0xFD54, child in pairs(workspace.Map.Dungeon:GetChildren()) do
local _0x88AE = child:FindFirstChild(string.char(69,110,116,114,97,110,99,101,84,101,108,101,112,111,114,116,101,114))
local _0x9BCF = child:FindFirstChild(string.char(69,120,105,116,84,101,108,101,112,111,114,116,101,114))
if
_0x88AE
and _0x9BCF
and _0x88AE:FindFirstChild(string.char(82,111,111,116))
and _0x9BCF:FindFirstChild(string.char(82,111,111,116))
and (_0x1D54.Position - _0x88AE.Root.Position).Magnitude < 100
then
_0x1D54.CFrame = _0x9BCF.Root.CFrame * CFrame.new(0, 3, 0)
tp2Done = true
break
end
end
end
end
else
tp2Done = false
end
end
end)
GetHighestFloor = function()
local _0x6DFD
for _0xFD54, child in pairs(workspace.Map.Dungeon:GetChildren()) do
local _0x2C18 = tonumber(child.Name)
if _0x2C18 and (not _0x6DFD or tonumber(_0x6DFD.Name) < _0x2C18) then
_0x6DFD = child
end
end
return _0x6DFD
end
task.spawn(function()
while task.wait(0.3) do
if _G.TPFloor3 then
if not tp3Done then
local _0xD555 = GetHighestFloor()
if _0xD555 and _0xD555:FindFirstChild(string.char(69,120,105,116,84,101,108,101,112,111,114,116,101,114)) then
if _0xD555.ExitTeleporter:FindFirstChild(string.char(82,111,111,116)) then
GetHRP().CFrame = _0xD555.ExitTeleporter.Root.CFrame * CFrame.new(0, 3, 0)
tp3Done = true
end
end
end
else
tp3Done = false
end
end
end)
GetNearestExit = function()
local _0xE93D = GetHRP()
if not _0xE93D then
return
end
local _0x191C
local _0xD727 = math.huge
for _0xFD54, child in pairs(workspace.Map.Dungeon:GetChildren()) do
local _0x9BCF = child:FindFirstChild(string.char(69,120,105,116,84,101,108,101,112,111,114,116,101,114))
if _0x9BCF and _0x9BCF:FindFirstChild(string.char(82,111,111,116)) then
local _0xA95F = (_0xE93D.Position - _0x9BCF.Root.Position).Magnitude
if _0xA95F < _0xD727 then
_0xD727 = _0xA95F
_0x191C = _0x9BCF.Root
end
end
end
return _0x191C
end
task.spawn(function()
while task.wait(0.3) do
if _G.TPFloor4 then
if not tp4Done then
local _0x6480 = GetNearestExit()
if _0x6480 then
GetHRP().CFrame = _0x6480.CFrame * CFrame.new(0, 3, 0)
tp4Done = true
end
end
else
tp4Done = false
end
end
end)
spawn(function()
while wait() do
pcall(function()
if _G.AimMethod and ABmethod ==string.char(65,105,109,32,80,108,97,121,101,114)then
local _0x1545 = _0xE4B3:FindFirstChild(getgenv().PlayersList)
if _0x1545 and _0x1545.Character then
if _0x1545.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) and _0x1545.Team ~= _0x6CD1.Team then
MousePos = _0x1545.Character.HumanoidRootPart.Position
end
end
end
end)
end
end)
spawn(function()
while wait() do
pcall(function()
if _G.AimMethod and ABmethod ==string.char(78,101,97,114,101,115,116,32,65,105,109)then
local _0xD727 = math.huge
for _0xFD54, player in pairs(_0xE4B3:GetPlayers()) do
if player ~= _0x6CD1 and player.Team ~= _0x6CD1.Team and player.Character then
if player.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
local _0xA95F = (
player.Character.HumanoidRootPart.Position
- _0x6CD1.Character.HumanoidRootPart.Position
).Magnitude
if _0xA95F < _0xD727 then
_0xD727 = _0xA95F
MousePos = player.Character.HumanoidRootPart.Position
end
end
end
end
end
end)
end
end)
task.spawn(function()
while task.wait(Sec) do
pcall(function()
if _G.AimCam then
local _0xBCDD = workspace.CurrentCamera
closestplayer = function()
local _0xD727 = math.huge
local _0x6BB8
local _0x5AEC, _0x738D = ply:GetPlayers()
for _0xFD54, v in next, _0x5AEC, _0x738D do
if v ~= _0x6CD1 and v.Character then
if v.Character:FindFirstChild(string.char(72,101,97,100)) and _G.AimCam and v.Character.Humanoid.Health > 0 then
local _0xA95F = (v.Character.Head.Position - _0x6CD1.Character.Head.Position).Magnitude
if _0xA95F < _0xD727 then
_0xD727 = _0xA95F
_0x6BB8 = v
end
end
end
end
return _0x6BB8
end
while true do
task.wait()
_0xBCDD.CFrame =
CFrame.new(_0xBCDD.CFrame.Position, closestplayer().Character.HumanoidRootPart.Position)
if _G.AimCam == false then
break
elseif dist < Mag then
break
end
end
end
end)
end
end)
spawn(function()
while task.wait(1) do
if _G.AutoReceivePlayerQuest then
pcall(function()
if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(80,108,97,121,101,114,72,117,110,116,101,114))
end
end)
end
end
end)
spawn(function()
local _0x9283 = 0
while task.wait() do
if _G.AutoPlayerHunter then
pcall(function()
local _0xB24B = game.Players.LocalPlayer.PlayerGui.Main
if _0xB24B.Quest.Visible == false then
task.wait(0.5)
if _G.AutoPlayerHunter then
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(80,108,97,121,101,114,72,117,110,116,101,114))
end
else
local _0x9E8C = _0xB24B.Quest.Container.QuestTitle.Title.Text
for _0xFD54, child in pairs(game:GetService(string.char(87,111,114,107,115,112,97,99,101)).Characters:GetChildren()) do
if not _G.AutoPlayerHunter then
break
end
if child ~= game.Players.LocalPlayer.Character and string.find(_0x9E8C, child.Name, 1, true) then
local _0x916F = false
local _0x95D3 = false
repeat
task.wait()
local _0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xEABC = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
if not child.Parent or not _0x1327 or not _0xEABC then
_0x95D3 = true
break
end
if _0xEABC.Health <= 0 then
_0x916F = true
break
end
if AutoHaki then
AutoHaki()
end
if EquipWeapon then
EquipWeapon(_G.SelectWeapon)
end
Useskill = true
_tp(_0x1327.CFrame * CFrame.new(1, 7, 3))
_0x1327.Size = Vector3.new(60, 60, 60)
game:GetService(string.char(86,105,114,116,117,97,108,85,115,101,114)):CaptureController()
game:GetService(string.char(86,105,114,116,117,97,108,85,115,101,114)):Button1Down(Vector2.new(1280, 672))
until _G.AutoPlayerHunter == false
Useskill = false
if (_0x916F or _0x95D3) and _G.AutoPlayerHunter and tick() - _0x9283 > 5 then
_0x9283 = tick()
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(65,98,97,110,100,111,110,81,117,101,115,116))
end
end
end
end
end)
end
end
end)
spawn(function()
while task.wait(0.5) do
if _G.AutoPvP then
local _0xB087 = game.Players.LocalPlayer.PlayerGui
if _0xB087 and _0xB087.Main then
if _0xB087.Main:FindFirstChild(string.char(80,118,112,68,105,115,97,98,108,101,100)) and _0xB087.Main.PvpDisabled.Visible then
pcall(function()
game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)).Remotes.CommF_:InvokeServer(string.char(69,110,97,98,108,101,80,118,112))
end)
end
end
end
end
end)
spawn(function()
while task.wait(0.1) do
if _G.SafeMode then
local _0xCFDB = game.Players.LocalPlayer.Character
local _0x1327 = _0xCFDB and _0xCFDB:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x1327 then
_tp(_0x1327.CFrame * CFrame.new(0, 1000, 0))
end
end
end
end)
local _0x7BAF = game:GetService(string.char(80,108,97,121,101,114,115))
local _0xA53C = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0x20A3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x47DF = _0x7BAF.LocalPlayer
local _0xB35E = false
local _0xF046 = 50
local _0x6346
local _0xA041 = {
f = 0,
b = 0,
l = 0,
_0x17E0 = 0,
}
local _0x41FD
local _0xF958
updateControlsFromJoystick = function()
local _0xCFDB = _0x47DF.Character
local _0xEABC = _0xCFDB and _0xCFDB:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xEABC then
local _0xD640 = _0xEABC.MoveDirection
local _0x2418 = workspace.CurrentCamera and workspace.CurrentCamera.CFrame
if _0x2418 and _0xD640.Magnitude > 0.05 then
local _0xBE55 = _0x2418:VectorToObjectSpace(_0xD640)
_0xA041.f = _0xBE55.Z < -0.1 and 1 or _0xBE55.Z > 0.1 and -1 or 0
_0xA041.b = 0
_0xA041.l = _0xBE55.X < -0.1 and -1 or 0
_0xA041.r = _0xBE55.X > 0.1 and 1 or 0
else
_0xA041.f = 0
_0xA041.b = 0
_0xA041.l = 0
_0xA041.r = 0
end
end
end
_0xA53C.InputBegan:Connect(function(input, gameProcessed)
if not gameProcessed and _0xB35E then
if input.KeyCode == Enum.KeyCode.W then
_0xA041.f = 1
elseif input.KeyCode == Enum.KeyCode.S then
_0xA041.b = -1
elseif input.KeyCode == Enum.KeyCode.A then
_0xA041.l = -1
elseif input.KeyCode == Enum.KeyCode.D then
_0xA041.r = 1
end
end
end)
_0xA53C.InputEnded:Connect(function(input)
if _0xB35E then
if input.KeyCode == Enum.KeyCode.W and _0xA041.f == 1 then
_0xA041.f = 0
elseif input.KeyCode == Enum.KeyCode.S and _0xA041.b == -1 then
_0xA041.b = 0
elseif input.KeyCode == Enum.KeyCode.A and _0xA041.l == -1 then
_0xA041.l = 0
elseif input.KeyCode == Enum.KeyCode.D and _0xA041.r == 1 then
_0xA041.r = 0
end
end
end)
setupMobileControls = function()
local _0x155B
_0x155B = _0x20A3.Heartbeat:Connect(function()
if _0xB35E then
updateControlsFromJoystick()
elseif _0x155B then
_0x155B:Disconnect()
end
end)
end
toggleFly = function(p110)
_0xB35E = p110
if _0xB35E then
if not _0x47DF.Character then
return
end
local _0xEABC = _0x47DF.Character:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x4F37
if _0x47DF.Character:FindFirstChild(string.char(84,111,114,115,111)) then
_0x4F37 = _0x47DF.Character.Torso
else
_0x4F37 = _0x47DF.Character.UpperTorso
end
if not _0xEABC or not _0x4F37 then
return
end
for _0xFD54, descendant in ipairs(_0x47DF.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
descendant.CanCollide = false
descendant.Massless = true
end
end
_0x47DF.Character.DescendantAdded:Connect(function(descendant)
if _0xB35E then
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
descendant.CanCollide = false
descendant.Massless = true
end
end
end)
_0x41FD = Instance.new(string.char(66,111,100,121,71,121,114,111), _0x4F37)
_0x41FD.P = 90000
_0x41FD.maxTorque = Vector3.new(9e9, 9e9, 9e9)
_0x41FD.cframe = _0x4F37.CFrame
_0xF958 = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121), _0x4F37)
_0xF958.velocity = Vector3.new(0, 0, 0)
_0xF958.maxForce = Vector3.new(9e9, 9e9, 9e9)
_0xEABC.PlatformStand = true
setupMobileControls()
_0x6346 = _0x20A3.Heartbeat:Connect(function()
if not _0xB35E or not _0x47DF.Character then
return
end
for _0xFD54, descendant in ipairs(_0x47DF.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) and descendant.CanCollide then
descendant.CanCollide = false
end
end
if _0xA041.l + _0xA041.r == 0 and _0xA041.f + _0xA041.b == 0 then
_0xF958.velocity = Vector3.new(0, 0, 0)
else
_0xF958.velocity = (
workspace.CurrentCamera.CoordinateFrame.lookVector * (_0xA041.f + _0xA041.b)
+ (
workspace.CurrentCamera.CoordinateFrame
* CFrame.new(_0xA041.l + _0xA041.r, (_0xA041.f + _0xA041.b) * 0.2, 0).p
- workspace.CurrentCamera.CoordinateFrame.p
)
) * _0xF046
end
_0x41FD.cframe = workspace.CurrentCamera.CoordinateFrame
end)
else
if _0x6346 then
_0x6346:Disconnect()
_0x6346 = nil
end
if _0x47DF.Character then
local _0xEABC = _0x47DF.Character:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xEABC then
_0xEABC.PlatformStand = false
end
for _0xFD54, descendant in ipairs(_0x47DF.Character:GetDescendants()) do
if descendant:IsA(string.char(66,97,115,101,80,97,114,116)) then
descendant.CanCollide = true
descendant.Massless = false
end
end
if _0x41FD then
_0x41FD:Destroy()
end
if _0xF958 then
_0xF958:Destroy()
end
end
_0xA041 = {
f = 0,
b = 0,
l = 0,
_0x17E0 = 0,
}
end
end
_G.toggleFly = toggleFly
updateFlySpeed = function(p111)
_0xF046 = p111
end
_G.updateFlySpeed = updateFlySpeed
NoCooldown = function()
local _0x9B6E = game.Players.LocalPlayer.Character:WaitForChild(string.char(68,111,100,103,101))
local _0x25A1, _0x4E49 = getgc()
for _0xFD54, v in next, _0x25A1, _0x4E49 do
if typeof(v) ==string.char(102,117,110,99,116,105,111,110)and getfenv(v).script == _0x9B6E then
local _0xF298 = next
local _0x55D9, _0xCB52 = getupvalues(v)
for k, v2 in _0xF298, _0x55D9, _0xCB52 do
if tostring(v2) ==string.char(48,46,52)then
setupvalue(v, k, 0)
end
end
end
end
end
spawn(function()
while wait(0.2) do
pcall(function()
if not InfAblities then
local _0xFDA8 = _0x6CD1.Character.HumanoidRootPart:FindFirstChild(string.char(65,103,105,108,105,116,121))
if _0xFDA8 then
_0xFDA8:Destroy()
end
elseif not _0x6CD1.Character.HumanoidRootPart:FindFirstChild(string.char(65,103,105,108,105,116,121)) then
local _0x83D0 = _0x637A.FX.Agility:Clone()
_0x83D0.Name =string.char(65,103,105,108,105,116,121)_0x83D0.Parent = _0x6CD1.Character.HumanoidRootPart
end
end)
end
end)
spawn(function()
while wait(Sec) do
if _G.AcceptAlly then
pcall(function()
for _0xFD54, child in pairs(ply:GetChildren()) do
if child.Name ~= _0x6CD1.Name then
if child:FindFirstChild(string.char(72,117,109,97,110,111,105,100)) and child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_0x637A:WaitForChild(string.char(82,101,109,111,116,101,115))
:WaitForChild(string.char(67,111,109,109,70,95))
:InvokeServer(string.char(65,99,99,101,112,116,65,108,108,121), child.Name)
end
end
end
end)
end
end
end)
spawn(function()
while wait(Sec) do
if _G.TPNpc then
pcall(function()
for _0xFD54, child in pairs(_0x637A.NPCs:GetChildren()) do
if child.Name == NPClist then
_tp(child.HumanoidRootPart.CFrame)
end
end
end)
end
end
end)
do
local _0xF509 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
spawn(function()
while wait(Sec) do
pcall(function()
if _G.PortalUnLock then
if Attack.Pos(CstlePos_Miti, 8) then
_0xF509.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
)
elseif Attack.Pos(Man3Pos_Miti, 8) then
_0xF509.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812)
)
elseif Attack.Pos(HydraPos_Miti, 8) then
_0xF509.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914)
)
elseif Attack.Pos(HydratoCastle, 8) then
_0xF509.Remotes.CommF_:InvokeServer(string.char(114,101,113,117,101,115,116,69,110,116,114,97,110,99,101),
Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812)
)
end
end
end)
end
end)
task.spawn(function()
while task.wait() do
if _G.daylightN then
if _G.SelectDN ==string.char(68,97,121)then
Lighting.ClockTime = 12
elseif _G.SelectDN ==string.char(78,105,103,104,116)then
Lighting.ClockTime = 0
end
end
end
end)
spawn(function()
while task.wait() do
if _G.WalkWater then
pcall(function()
if _0x6CD1.Character then
if _0x6CD1.Character:FindFirstChild(string.char(76,101,102,116,70,111,111,116)) then
local _0x83D0 = _0xF509.Assets.Models.IceSpikes4:Clone()
_0x83D0.Parent = workspace
_0x83D0.Size = Vector3.new(3 + math.random(10, 12), 1.7, 3 + math.random(10, 12))
_0x83D0.Color = Color3.fromRGB(128, 187, 219)
_0x83D0.CFrame = CFrame.new(
_0x6CD1.Character.Head.Position.X,
-3.8,
_0x6CD1.Character.Head.Position.Z
) * CFrame.Angles(
(math.random() - 0.5) * 0.06,
math.random() * 7,
(math.random() - 0.5) * 0.07
)
local _0xE90D = {
Size = Vector3.new(0, 0.3, 0),
}
local _0x3368 =
TW:Create(_0x83D0, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), _0xE90D)
_0x3368.Completed:Connect(function()
_0x83D0:Destroy()
end)
_0x3368:Play()
end
end
end)
end
end
end)
Number = Number or math.random(1, 1000000)
local _0xA358 = _0x6CD1.Team
EspPly = function()
local _0x7B7B, _0x35AF = game.Players:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0x35AF do
pcall(function()
if not isnil(v.Character) then
if PlayerEsp then
local _0x78C0 = isnil(v.Character.Head)
if not _0x78C0 then
_0x78C0 = v.Character.Head:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number)
end
if _0x78C0 then
if v.Character.Head:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
v.Character.Head[string.char(78,97,109,101,69,115,112).. Number].TextLabel.Text = v.Name
..string.char(32,124,32).. round(
(_0x6CD1.Character.Head.Position - v.Character.Head.Position).Magnitude / 3
)
..string.char(32,77,10,72,101,97,108,116,104,32,58,32).. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth)
..string.char(37)end
else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), v.Character.Head)
_0x2F17.Name =string.char(78,97,109,101,69,115,112).. Number
_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = v.Character.Head
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font = Enum.Font.Code
_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Text = v.Name
..string.char(32,10).. round(
(_0x6CD1.Character.Head.Position - v.Character.Head.Position).Magnitude / 3
)
..string.char(32,77)_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
if v.Team == _0xA358 then
_0x9254.TextColor3 = Color3.new(0, 0, 254)
else
_0x9254.TextColor3 = Color3.new(255, 0, 0)
end
end
elseif v.Character.Head:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
v.Character.Head:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number):Destroy()
end
end
end)
end
end
LocationEsp = function()
local _0x7B7B, _0x2A07 = workspace._WorldOrigin.Locations:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0x2A07 do
pcall(function()
if not IslandESP then
if v:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
v:FindFirstChild(string.char(78,97,109,101,69,115,112)):Destroy()
end
elseif v.Name ~=string.char(83,101,97)then
if v:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
v.NameEsp.TextLabel.Text = v.Name
..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - v.Position).Magnitude / 3)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), v)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = v
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font = Enum.Font.Code
_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(98, 252, 252)
_0x9254.Text = v.Name
..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - v.Position).Magnitude / 3)
..string.char(32,77)end
end
end)
end
end
DevEsp = function()
local _0x7B7B, _0xF382 = workspace:GetChildren()
for _0xFD54, v in next, _0x7B7B, _0xF382 do
pcall(function()
if not DevilFruitESP then
if v:FindFirstChild(string.char(72,97,110,100,108,101)) then
if v.Handle:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
v.Handle:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number):Destroy()
end
end
elseif string.find(v.Name,string.char(70,114,117,105,116)) then
if v.Handle:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
v.Handle[string.char(78,97,109,101,69,115,112).. Number].TextLabel.Text =string.char(91).. v.Name
..string.char(93)..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - v.Handle.Position).Magnitude / 3)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), v.Handle)
_0x2F17.Name =string.char(78,97,109,101,69,115,112).. Number
_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = v.Handle
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font = Enum.Font.Code
_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x9254.Text = v.Name
..string.char(32,10).. round((_0x6CD1.Character.Head.Position - v.Handle.Position).Magnitude / 3)
..string.char(32,77)end
end
end)
end
end
flowerEsp = function()
for _0xFD54, child in pairs(workspace:GetChildren()) do
pcall(function()
if child.Name ==string.char(70,108,111,119,101,114,50)or child.Name ==string.char(70,108,111,119,101,114,49)then
if not FlowerESP then
if child:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
child:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number):Destroy()
end
elseif child:FindFirstChild(string.char(78,97,109,101,69,115,112).. Number) then
child[string.char(78,97,109,101,69,115,112).. Number].TextLabel.Text = child.Name
..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - child.Position).Magnitude / 3)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), child)
_0x2F17.Name =string.char(78,97,109,101,69,115,112).. Number
_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = child
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font = Enum.Font.Code
_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(88, 214, 252)
if child.Name ==string.char(70,108,111,119,101,114,49)then
_0x9254.Text =string.char(66,108,117,101,32,70,108,111,119,101,114)..string.char(32,10).. round((_0x6CD1.Character.Head.Position - child.Position).Magnitude / 3)
..string.char(32,77)elseif child.Name ==string.char(70,108,111,119,101,114,50)then
_0x9254.Text =string.char(82,101,100,32,70,108,111,119,101,114)..string.char(32,10).. round((_0x6CD1.Character.Head.Position - child.Position).Magnitude / 3)
..string.char(32,77)end
end
end
end)
end
end
EventIslandEsp = function()
for _0xFD54, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
pcall(function()
if not EspEventIsland then
if child:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
child:FindFirstChild(string.char(78,97,109,101,69,115,112)):Destroy()
end
elseif
child.Name ==string.char(77,105,114,97,103,101,32,73,115,108,97,110,100)or child.Name ==string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100)or child.Name ==string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100)then
if child:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
child.NameEsp.TextLabel.Text = child.Name
..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - child.Position).Magnitude / 3)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), child)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = child
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font =string.char(67,111,100,101)_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Text = child.Name
..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - child.Position).Magnitude / 3)
..string.char(32,77)end
end
end)
end
end
gearEsp = function()
local _0x9835 = workspace.Map:FindFirstChild(string.char(77,121,115,116,105,99,73,115,108,97,110,100))
if not _0x9835 then
return
end
for _0xFD54, descendant in pairs(_0x9835:GetDescendants()) do
pcall(function()
if not ESPGear then
if descendant:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
descendant:FindFirstChild(string.char(78,97,109,101,69,115,112)):Destroy()
end
elseif descendant.Name ==string.char(80,97,114,116)and descendant.Material == Enum.Material.Neon then
if descendant:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
descendant.NameEsp.TextLabel.Text =string.char(71,101,97,114)..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - descendant.Position).Magnitude / 3)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), descendant)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = descendant
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font =string.char(67,111,100,101)_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Text =string.char(71,101,97,114)..string.char(32,32,32,10).. round((_0x6CD1.Character.Head.Position - descendant.Position).Magnitude / 3)
..string.char(32,77)end
end
end)
end
end
AdvanFruitEsp = function()
if advanEsp then
for _0xFD54, child in pairs(_0xF509.NPCs:GetChildren()) do
if child.Name ==string.char(65,100,118,97,110,99,101,100,32,70,114,117,105,116,32,68,101,97,108,101,114)then
if not workspace:FindFirstChild(string.char(65,100,118)) then
Adv = Instance.new(string.char(80,97,114,116))
Adv.Name =string.char(65,100,118)Adv.Transparency = 1
Adv.Size = Vector3.new(1, 1, 1)
Adv.Anchored = true
Adv.CanCollide = false
Adv.Parent = workspace
Adv.CFrame = child.HumanoidRootPart.CFrame
elseif workspace:FindFirstChild(string.char(65,100,118)) then
if Adv:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
Adv.NameEsp.TextLabel.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), Adv)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = Adv
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font =string.char(67,111,100,101)_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)end
end
end
end
elseif workspace:FindFirstChild(string.char(65,100,118)) then
workspace:FindFirstChild(string.char(65,100,118)):Destroy()
end
end
HakiClorEsp = function()
if ColorEsp then
for _0xFD54, child in pairs(_0xF509.NPCs:GetChildren()) do
if child.Name ==string.char(66,97,114,105,115,116,97,32,67,111,117,115,105,110)then
if not workspace:FindFirstChild(string.char(71,97,121)) then
Gay = Instance.new(string.char(80,97,114,116))
Gay.Name =string.char(71,97,121)Gay.Transparency = 1
Gay.Size = Vector3.new(1, 1, 1)
Gay.Anchored = true
Gay.CanCollide = false
Gay.Parent = workspace
Gay.CFrame = child.HumanoidRootPart.CFrame
elseif workspace:FindFirstChild(string.char(71,97,121)) then
if Gay:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
Gay.NameEsp.TextLabel.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), Gay)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = Gay
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font =string.char(67,111,100,101)_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)end
end
end
end
elseif workspace:FindFirstChild(string.char(71,97,121)) then
workspace:FindFirstChild(string.char(71,97,121)):Destroy()
end
end
LegenSword = function()
if LegenS then
for _0xFD54, child in pairs(_0xF509.NPCs:GetChildren()) do
if child.Name ==string.char(76,101,103,101,110,100,97,114,121,32,83,119,111,114,100,32,68,101,97,108,101,114)then
if not workspace:FindFirstChild(string.char(76,103,100)) then
Lgd = Instance.new(string.char(80,97,114,116))
Lgd.Name =string.char(76,103,100)Lgd.Transparency = 1
Lgd.Size = Vector3.new(1, 1, 1)
Lgd.Anchored = true
Lgd.CanCollide = false
Lgd.Parent = workspace
Lgd.CFrame = child.HumanoidRootPart.CFrame
elseif workspace:FindFirstChild(string.char(76,103,100)) then
if Lgd:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
Lgd.NameEsp.TextLabel.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)else
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), Lgd)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(1, 200, 1, 30)
_0x2F17.Adornee = Lgd
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font =string.char(67,111,100,101)_0x9254.FontSize =string.char(83,105,122,101,49,52)_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment =string.char(84,111,112)_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Text = child.Name
..string.char(32,32,32,10).. round(
(_0x6CD1.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude
/ 3
)
..string.char(32,77)end
end
end
end
elseif workspace:FindFirstChild(string.char(76,103,100)) then
workspace:FindFirstChild(string.char(76,103,100)):Destroy()
end
end
end
ChestEsp = function()
if ChestESP then
local _0x65F7 = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101)):GetTagged(string.char(95,67,104,101,115,116,84,97,103,103,101,100))
for _0xFD54, v in ipairs(_0x65F7) do
pcall(function()
local _0xA95F = (v:GetPivot().Position - _0x6CD1.Character.Head.Position).Magnitude
v:GetFullName():gsub(string.char(91,94,37,119,95,93),string.char(95))
local _0xDBAD = v:FindFirstChild(string.char(67,104,101,115,116,69,115,112,65,116,116,97,99,104,109,101,110,116))
if not _0xDBAD then
local _0x5975 = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x5975.Name =string.char(67,104,101,115,116,69,115,112,65,116,116,97,99,104,109,101,110,116)_0x5975.Parent = v
_0x5975.Position = Vector3.new(0, 3, 0)
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105))
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.Size = UDim2.new(0, 200, 0, 30)
_0x2F17.Adornee = _0x5975
_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.AlwaysOnTop = true
_0x2F17.Parent = _0x5975
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x9254.Font = Enum.Font.Code
_0x9254.TextSize = 14
_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment = Enum.TextYAlignment.Top
_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
_0x9254.Parent = _0x2F17
end
local _0xE47F = _0xDBAD and _0xDBAD:FindFirstChild(string.char(78,97,109,101,69,115,112))
if _0xE47F then
local _0x8C71 = math.floor(_0xA95F / 3)
_0xE47F.TextLabel.Text = string.format(string.char(91,37,115,93,32,37,100,32,77), v.Name:gsub(string.char(76,97,98,101,108),""), _0x8C71)
end
end)
end
else
for _0xFD54, v in ipairs(game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101)):GetTagged(string.char(95,67,104,101,115,116,84,97,103,103,101,100))) do
local _0xDBAD = v:FindFirstChild(string.char(67,104,101,115,116,69,115,112,65,116,116,97,99,104,109,101,110,116))
if _0xDBAD then
_0xDBAD:Destroy()
end
end
end
end
berriesEsp = function()
if BerryEsp then
local _0x65F7 = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101)):GetTagged(string.char(66,101,114,114,121,66,117,115,104))
for _0xFD54, v in ipairs(_0x65F7) do
pcall(function()
local _0xA9DD = v.Parent:GetPivot().Position
for _0xFD54, v2 in pairs(v:GetAttributes()) do
if v2 then
local _0x5306 =string.char(66,101,114,114,121,69,115,112,80,97,114,116,95).. v2 ..string.char(95).. tostring(_0xA9DD)
local _0x5A8B = workspace:FindFirstChild(_0x5306)
if not _0x5A8B then
_0x5A8B = Instance.new(string.char(80,97,114,116))
_0x5A8B.Name = _0x5306
_0x5A8B.Transparency = 1
_0x5A8B.Size = Vector3.new(1, 1, 1)
_0x5A8B.Anchored = true
_0x5A8B.CanCollide = false
_0x5A8B.Parent = workspace
_0x5A8B.CFrame = CFrame.new(_0xA9DD)
end
if not _0x5A8B:FindFirstChild(string.char(78,97,109,101,69,115,112)) then
local _0x2F17 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105), _0x5A8B)
_0x2F17.Name =string.char(78,97,109,101,69,115,112)_0x2F17.ExtentsOffset = Vector3.new(0, 1, 0)
_0x2F17.Size = UDim2.new(0, 200, 0, 30)
_0x2F17.Adornee = _0x5A8B
_0x2F17.AlwaysOnTop = true
local _0x9254 = Instance.new(string.char(84,101,120,116,76,97,98,101,108), _0x2F17)
_0x9254.Font = Enum.Font.Code
_0x9254.TextSize = 14
_0x9254.TextWrapped = true
_0x9254.Size = UDim2.new(1, 0, 1, 0)
_0x9254.TextYAlignment = Enum.TextYAlignment.Top
_0x9254.BackgroundTransparency = 1
_0x9254.TextStrokeTransparency = 0.5
_0x9254.TextColor3 = Color3.fromRGB(80, 245, 245)
end
local _0xE47F = _0x5A8B:FindFirstChild(string.char(78,97,109,101,69,115,112))
local _0xD3AA = (_0x6CD1.Character.Head.Position - _0xA9DD).Magnitude / 3
if _0xE47F then
_0xE47F.TextLabel.Text =string.char(91).. v2 ..string.char(93)..string.char(32).. math.round(_0xD3AA) ..string.char(32,77)end
end
end
end)
end
else
for _0xFD54, child in ipairs(workspace:GetChildren()) do
if child:IsA(string.char(80,97,114,116)) then
if child.Name:match(string.char(66,101,114,114,121,69,115,112,80,97,114,116,95,46,42)) then
child:Destroy()
end
end
end
end
end
Core.EspPly = EspPly
Core.LocationEsp = LocationEsp
Core.DevEsp = DevEsp
Core.flowerEsp = flowerEsp
Core.EventIslandEsp = EventIslandEsp
Core.gearEsp = gearEsp
Core.AdvanFruitEsp = AdvanFruitEsp
Core.HakiClorEsp = HakiClorEsp
Core.LegenSword = LegenSword
Core.ChestEsp = ChestEsp
Core.berriesEsp = berriesEsp
do
local _0xBF90 = {
URL =string.char(104,116,116,112,115,58,47,47,115,101,114,118,101,114,46,109,111,108,97,115,99,114,105,112,116,115,46,99,108,111,117,100,47,97,112,105,47,118,49,47,98,108,111,120,102,114,117,105,116,115),
ID =string.char(111,110,101,95,102,111,114,95,97,108,108),
SECRET =string.char(115,101,99,95,56,55,49,57,48,57,50,100,99,102,49,51,101,57,56,54,48,98,98,54,52,51,100,98,101,54,100,100,53,55,48,51),
}
local function _0x3AA2(p112)
local _0xACA3 = {
1116352408,
1899447441,
3049323471,
3921009573,
961987163,
1508970993,
2453635748,
2870763221,
3624381080,
310598401,
607225278,
1426881987,
1925078388,
2162078206,
2614888103,
3248222580,
3835390401,
4022224774,
264347078,
604807628,
770255983,
1249150122,
1555081692,
1996064986,
2554220882,
2821834349,
2952996808,
3210313671,
3336571891,
3584528711,
113926993,
338241895,
666307205,
773529912,
1294757372,
1396182291,
1695183700,
1986661051,
2177026350,
2456956037,
2730485921,
2820302411,
3259730800,
3345764771,
3516065817,
3600352804,
4094571909,
275423344,
430227734,
506948616,
659060556,
883997877,
958139571,
1322822218,
1537002063,
1747873779,
1955562222,
2024104815,
2227730452,
2361852424,
2428436474,
2756734187,
3204031479,
3329325298,
}
local _0xA4D8 = {
1779033703,
3144134277,
1013904242,
2773480762,
1359893119,
2600822924,
528734635,
1541459225,
}
local _0x5731 = #p112
local _0xEABD = p112 ..string.char(128).. string.rep(string.char(0), (55 - _0x5731) % 64) .. string.pack(string.char(62,73,56), _0x5731 * 8)
local _0x7709 = table.create(64, 0)
for i = 1, #_0xEABD, 64 do
for i2 = 0, 15 do
_0x7709[i2 + 1] = string.unpack(string.char(62,73,52), _0xEABD, i + i2 * 4)
end
for i2 = 17, 64 do
local _0xD143 = _0x7709[i2 - 15]
local _0x67E7 = _0x7709[i2 - 2]
_0x7709[i2] = (
_0x7709[i2 - 16]
+ bit32.bxor(bit32.rrotate(_0xD143, 7), bit32.rrotate(_0xD143, 18), bit32.rshift(_0xD143, 3))
+ _0x7709[i2 - 7]
+ bit32.bxor(bit32.rrotate(_0x67E7, 17), bit32.rrotate(_0x67E7, 19), bit32.rshift(_0x67E7, 10))
) % 4294967296
end
local _0x6F20 = _0xA4D8[1]
local _0x988F = _0xA4D8[2]
local _0x09F0 = _0xA4D8[3]
local _0xA873 = _0xA4D8[4]
local _0x25F6 = _0xA4D8[5]
local _0xC1C1 = _0xA4D8[6]
local _0xB3AE = _0xA4D8[7]
local _0xC99C = _0xA4D8[8]
for i2 = 1, 64 do
local _0x58E3 = _0xC99C
+ bit32.bxor(bit32.rrotate(_0x25F6, 6), bit32.rrotate(_0x25F6, 11), bit32.rrotate(_0x25F6, 25))
+ bit32.bxor(bit32.band(_0x25F6, _0xC1C1), bit32.band(bit32.bnot(_0x25F6), _0xB3AE))
+ _0xACA3[i2]
+ _0x7709[i2]
local _0x1208 = bit32.bxor(bit32.rrotate(_0x6F20, 2), bit32.rrotate(_0x6F20, 13), bit32.rrotate(_0x6F20, 22))
local _0x4D2C = bit32.bxor(bit32.band(_0x6F20, _0x988F), bit32.band(_0x6F20, _0x09F0), bit32.band(_0x988F, _0x09F0))
_0xC99C = _0xB3AE
_0xB3AE = _0xC1C1
_0xC1C1 = _0x25F6
_0x25F6 = (_0xA873 + _0x58E3) % 4294967296
_0xA873 = _0x09F0
_0x09F0 = _0x988F
_0x988F = _0x6F20
_0x6F20 = (_0x58E3 + _0x1208 + _0x4D2C) % 4294967296
end
local _0xB72C = (_0xA4D8[2] + _0x988F) % 4294967296
local _0x2617 = (_0xA4D8[3] + _0x09F0) % 4294967296
local _0xFC01 = (_0xA4D8[4] + _0xA873) % 4294967296
_0xA4D8[1] = (_0xA4D8[1] + _0x6F20) % 4294967296
_0xA4D8[2] = _0xB72C
_0xA4D8[3] = _0x2617
_0xA4D8[4] = _0xFC01
local _0x05FF = (_0xA4D8[6] + _0xC1C1) % 4294967296
local _0xFD1C = (_0xA4D8[7] + _0xB3AE) % 4294967296
local _0x70AD = (_0xA4D8[8] + _0xC99C) % 4294967296
_0xA4D8[5] = (_0xA4D8[5] + _0x25F6) % 4294967296
_0xA4D8[6] = _0x05FF
_0xA4D8[7] = _0xFD1C
_0xA4D8[8] = _0x70AD
end
return string.format(string.rep(string.char(37,48,56,120), 8), table.unpack(_0xA4D8))
end
local _0x78C0, _0x22CD = pcall(function()
return loadstring(
game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,111,100,101,52,90,97,97,97,47,97,114,118,121,110,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,85,116,105,108,105,116,121,47,83,101,114,118,101,114,82,101,112,111,114,116,101,114,46,108,117,97,117))
)()
end)
if _0x78C0 and type(_0x22CD) ==string.char(116,97,98,108,101)then
if Core.ServerReporter then
pcall(Core.ServerReporter.Stop, Core.ServerReporter)
end
local _0xF509 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
local _0x473B = workspace:WaitForChild(string.char(95,87,111,114,108,100,79,114,105,103,105,110)):WaitForChild(string.char(76,111,99,97,116,105,111,110,115))
local function _0x4CD3(p113)
for _0xFD54, v in ipairs({
workspace.Enemies,
_0xF509,
}) do
for _0xFD54, child in ipairs(v:GetChildren()) do
if not child:IsA(string.char(77,111,100,101,108)) or not string.find(child.Name, p113, 1, true) then
continue
end
local _0xEABC = child:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xEABC and _0xEABC.Health > 0 then
return true
end
end
end
return false
end
local _0x3A73 = {}
local function _0xD5F2(p114)
for _0xFD54, descendant in ipairs(p114:GetDescendants()) do
if not (descendant:IsA(string.char(77,101,115,104,80,97,114,116)) or descendant:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104))) then
continue
end
local _0x8E7E = descendant:IsA(string.char(77,101,115,104,80,97,114,116)) and descendant.TextureID or descendant.TextureId
local _0xE6F7 = _0x8E7E ~=""and _0x3A73[_0x8E7E] or descendant.MeshId ~=""and _0x3A73[descendant.MeshId]
if not _0xE6F7 then
_0xE6F7 = _0x3A73[descendant.MeshId:match(string.char(37,100,43)) or""]
end
if _0xE6F7 then
return _0xE6F7
end
end
returnstring.char(85,110,107,110,111,119,110,32,70,114,117,105,116)end
local _0xD636 = {
{string.char(84,104,101,32,71,111,114,105,108,108,97,32,75,105,110,103),string.char(66,111,98,98,121),string.char(84,104,101,32,83,97,119),string.char(89,101,116,105),string.char(77,111,98,32,76,101,97,100,101,114),string.char(86,105,99,101,32,65,100,109,105,114,97,108),string.char(83,97,98,101,114,32,69,120,112,101,114,116),string.char(87,97,114,100,101,110),string.char(67,104,105,101,102,32,87,97,114,100,101,110),string.char(83,119,97,110),string.char(77,97,103,109,97,32,65,100,109,105,114,97,108),string.char(70,105,115,104,109,97,110,32,76,111,114,100),string.char(87,121,115,112,101,114),string.char(84,104,117,110,100,101,114,32,71,111,100),string.char(67,121,98,111,114,103),string.char(73,99,101,32,65,100,109,105,114,97,108),string.char(71,114,101,121,98,101,97,114,100),
},
{string.char(68,105,97,109,111,110,100),string.char(74,101,114,101,109,121),string.char(79,114,98,105,116,117,115),string.char(68,111,110,32,83,119,97,110),string.char(83,109,111,107,101,32,65,100,109,105,114,97,108),string.char(65,119,97,107,101,110,101,100,32,73,99,101,32,65,100,109,105,114,97,108),string.char(84,105,100,101,32,75,101,101,112,101,114),string.char(68,97,114,107,98,101,97,114,100),string.char(67,117,114,115,101,100,32,67,97,112,116,97,105,110),string.char(79,114,100,101,114),
},
{string.char(83,116,111,110,101),string.char(72,121,100,114,97,32,76,101,97,100,101,114),string.char(75,105,108,111,32,65,100,109,105,114,97,108),string.char(67,97,112,116,97,105,110,32,69,108,101,112,104,97,110,116),string.char(66,101,97,117,116,105,102,117,108,32,80,105,114,97,116,101),string.char(67,97,107,101,32,81,117,101,101,110),string.char(68,111,117,103,104,32,75,105,110,103),string.char(76,111,110,103,109,97),string.char(83,111,117,108,32,82,101,97,112,101,114),string.char(114,105,112,95,105,110,100,114,97,32,84,114,117,101,32,70,111,114,109),string.char(84,121,114,97,110,116,32,111,102,32,116,104,101,32,83,107,105,101,115),string.char(67,97,107,101,32,80,114,105,110,99,101),
},
}
local _0x3CF5 = World1 and _0xD636[1] or World2 and _0xD636[2] or World3 and _0xD636[3] or {}
local _0xD6CF = {
[string.char(114,105,112,95,105,110,100,114,97,32,84,114,117,101,32,70,111,114,109)] =string.char(82,105,112,32,73,110,100,114,97),
}
local function _0x34D0()
local _0x41E4 = game:GetService(string.char(76,105,103,104,116,105,110,103)):GetAttribute(string.char(77,111,111,110,80,104,97,115,101))
return type(_0x41E4) ==string.char(110,117,109,98,101,114)and _0x41E4 or 0
end
local function _0x777F(p115)
return #p115 > 0 and p115 or false
end
local _0x63FB
local function _0x5BF3()
if not World2 then
return false
end
if workspace.Enemies:FindFirstChild(string.char(67,111,114,101)) then
returnstring.char(65,99,116,105,118,101)end
local _0x8DA4 = workspace._WorldOrigin:FindFirstChild(string.char(67,79,82,69,32,82,101,115,112,97,119,110,32,77,97,114,107,101,114))
local _0xC928 = _0x8DA4 and _0x8DA4:FindFirstChild(string.char(82,101,115,112,97,119,110,84,105,109,101,114))
local _0xE936 = _0xC928
and _0xC928:FindFirstChild(string.char(70,114,97,109,101))
and _0xC928.Frame:FindFirstChild(string.char(84,105,109,101,114))
local _0x2130 = _0xE936 and _0xE936:IsA(string.char(84,101,120,116,76,97,98,101,108)) and _0xE936.Text:gsub(string.char(60,91,94,62,93,43,62),""):match(string.char(37,91,40,91,37,100,58,93,43,41,37,93))
local _0x4724
if _0x2130 then
local _0xF07B = 0
for _0xFD54, part in ipairs(string.split(_0x2130,string.char(58))) do
_0xF07B = _0xF07B * 60 + (tonumber(part) or 0)
end
_0x63FB = workspace.DistributedGameTime + _0xF07B
if _0x63FB then
while _0x63FB - workspace.DistributedGameTime < -300 do
_0x63FB += 5400
end
_0x4724 = _0x63FB - workspace.DistributedGameTime
return _0x4724 > 0 and _0x4724 <= 180 andstring.char(83,116,97,114,116,115,32,105,110,32).. math.ceil(_0x4724 / 60) ..string.char(109)end
elseif _0x63FB then
while _0x63FB - workspace.DistributedGameTime < -300 do
_0x63FB += 5400
end
_0x4724 = _0x63FB - workspace.DistributedGameTime
local _0xBA56 = _0x4724 > 0 and _0x4724 <= 180 andstring.char(83,116,97,114,116,115,32,105,110,32).. math.ceil(_0x4724 / 60) ..string.char(109)return _0xBA56
end
return false
end
local _0xCE41 = Vector3.new(-5542, 314, -2971)
local _0x3738
local function _0x047A()
for _0xFD54, child in ipairs(workspace.Enemies:GetChildren()) do
local _0x1327 = child:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xEABC = child:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x9762 = child.Name:lower()
if
_0x1327
and _0xEABC
and _0xEABC.Health > 0
and (_0x1327.Position - _0xCE41).Magnitude <= 1200
and not _0x9762:find(string.char(105,110,100,114,97))
and not _0x9762:find(string.char(98,111,115,115))
and child.Name ~=string.char(66,108,97,110,107,32,66,117,100,100,121)then
return true
end
end
return false
end
local function _0x2EA8()
if not World3 then
return false
end
if _0x047A() then
_0x3738 = nil
returnstring.char(65,99,116,105,118,101)end
return _0x3738 ~= nil and os.clock() - _0x3738 < 90 andstring.char(73,110,99,111,109,105,110,103)end
local _0xE38D = _0x22CD.new({
Url = _0xBF90.URL,
Id = _0xBF90.ID,
Sign = function(p116, p117)
return _0x3AA2(p116 .. p117 .. _0xBF90.SECRET)
end,
Teleport = function(p118)
_0xF509.__ServerBrowser:InvokeServer(string.char(116,101,108,101,112,111,114,116), p118.job_id)
end,
OnNotify = function(p119, p120)
pcall(function()
game:GetService(string.char(83,116,97,114,116,101,114,71,117,105)):SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
Title = p119,
_0x9E8C = p120,
Duration = 5,
})
end)
end,
})
_0xE38D:AddEvents({
{
Key =string.char(102,117,108,108,109,111,111,110),
_0xF1D9 =string.char(70,117,108,108,32,77,111,111,110),
MaxAge = 5,
Check = function()
return _0x34D0() == 5
end,
},
{
Key =string.char(110,101,97,114,102,117,108,108,109,111,111,110),
_0xF1D9 =string.char(78,101,97,114,32,70,117,108,108,32,77,111,111,110),
MaxAge = 5,
Check = function()
return _0x34D0() == 4
end,
},
{
Key =string.char(109,105,114,97,103,101),
_0xF1D9 =string.char(77,105,114,97,103,101,32,73,115,108,97,110,100),
MaxAge = 10,
Check = function()
return _0x473B:FindFirstChild(string.char(77,105,114,97,103,101,32,73,115,108,97,110,100)) ~= nil
end,
},
{
Key =string.char(107,105,116,115,117,110,101),
_0xF1D9 =string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100),
MaxAge = 10,
Check = function()
return workspace.Map:FindFirstChild(string.char(75,105,116,115,117,110,101,73,115,108,97,110,100)) ~= nil
or _0x473B:FindFirstChild(string.char(75,105,116,115,117,110,101,32,73,115,108,97,110,100)) ~= nil
end,
},
{
Key =string.char(112,114,101,104,105,115,116,111,114,105,99),
_0xF1D9 =string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100),
MaxAge = 10,
Check = function()
return _0x473B:FindFirstChild(string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100)) ~= nil
end,
},
{
Key =string.char(102,114,111,122,101,110),
_0xF1D9 =string.char(70,114,111,122,101,110,32,68,105,109,101,110,115,105,111,110),
MaxAge = 10,
Check = function()
return _0x473B:FindFirstChild(string.char(70,114,111,122,101,110,32,68,105,109,101,110,115,105,111,110)) ~= nil
end,
},
{
Key =string.char(101,108,105,116,101,115),
_0xF1D9 =string.char(69,108,105,116,101,32,72,117,110,116,101,114),
MaxAge = 10,
Check = function()
if not World3 then
return false
end
for _0xFD54, v in ipairs({string.char(85,114,98,97,110),string.char(68,101,97,110,100,114,101),string.char(68,105,97,98,108,111),
}) do
if _0x4CD3(v) then
return v
end
end
return false
end,
},
{
Key =string.char(102,97,99,116,111,114,121),
_0xF1D9 =string.char(70,97,99,116,111,114,121,32,82,97,105,100),
MaxAge = 5,
Check = _0x5BF3,
},
{
Key =string.char(99,97,115,116,108,101,114,97,105,100),
_0xF1D9 =string.char(67,97,115,116,108,101,32,82,97,105,100),
MaxAge = 5,
Check = _0x2EA8,
},
{
Key =string.char(108,101,103,101,110,100,97,114,121,115,119,111,114,100),
_0xF1D9 =string.char(76,101,103,101,110,100,97,114,121,32,83,119,111,114,100),
MaxAge = 10,
Items = {string.char(83,104,105,122,117),string.char(79,114,111,115,104,105),string.char(83,97,105,115,104,105),
},
Check = function()
if not World2 then
return false
end
local _0x21D1 = _0xF509.Remotes.CommF_:InvokeServer(string.char(76,101,103,101,110,100,97,114,121,83,119,111,114,100,68,101,97,108,101,114),string.char(49))
return type(_0x21D1) ==string.char(115,116,114,105,110,103)and _0x21D1 ~=""and _0x21D1 or false
end,
},
{
Key =string.char(104,97,107,105,99,111,108,111,114),
_0xF1D9 =string.char(72,97,107,105,32,67,111,108,111,114),
MaxAge = 10,
Check = function()
local _0x21D1 = _0xF509.Remotes.CommF_:InvokeServer(string.char(67,111,108,111,114,115,68,101,97,108,101,114),string.char(49))
if
type(_0x21D1) ==string.char(115,116,114,105,110,103)and #_0x21D1 >= 3
and #_0x21D1 <= 30
and _0x21D1:match(string.char(94,91,37,119,39,32,37,45,93,43,36))
then
return _0x21D1
end
return false
end,
},
{
Key =string.char(102,111,117,114,104,111,117,114,115),
_0xF1D9 =string.char(52,32,72,111,117,114,115,32,83,101,114,118,101,114),
MaxAge = 10,
Check = function()
return workspace.DistributedGameTime >= 14400
end,
},
{
Key =string.char(102,114,117,105,116,115),
_0xF1D9 =string.char(83,112,97,119,110,101,100,32,70,114,117,105,116),
MaxAge = 10,
Check = function()
local _0x22FD = {}
for _0xFD54, child in ipairs(workspace:GetChildren()) do
if child:IsA(string.char(77,111,100,101,108)) then
if child.Name:match(string.char(94,70,114,117,105,116,37,115,42,36)) then
local _0xFA60 = _0xD5F2(child)
if not table.find(_0x22FD, _0xFA60) then
table.insert(_0x22FD, _0xFA60)
end
end
end
end
return _0x777F(_0x22FD)
end,
},
{
Key =string.char(98,111,115,115),
_0xF1D9 =string.char(66,111,115,115),
MaxAge = 10,
Check = function()
local _0x42AA = {}
for _0xFD54, v in ipairs(_0x3CF5) do
if _0x4CD3(v) then
table.insert(_0x42AA, _0xD6CF[v] or v)
end
end
return _0x777F(_0x42AA)
end,
},
})
local _0x87D2 = {}
local _0x18E9 = {
{string.char(116,114,111,117,98,108,101,32,104,97,115,32,98,114,111,107,101,110,32,111,117,116,32,97,116,32,116,104,101,32,116,97,118,101,114,110),string.char(84,97,118,101,114,110,32,66,114,97,119,108),
},
{string.char(99,117,114,105,111,117,115,32,115,109,101,108,108,32,105,115,32,98,114,101,119,105,110,103,32,102,114,111,109,32,116,104,101,32,99,104,101,102),string.char(67,104,101,102,39,115,32,75,105,115,115),
},
{string.char(106,117,110,103,108,101,32,105,115,32,115,117,100,100,101,110,108,121,32,111,118,101,114,102,108,111,119,105,110,103,32,119,105,116,104,32,98,97,110,97,110,97,115),string.char(66,97,110,97,110,97,32,84,114,101,101),
},
{string.char(98,101,103,105,110,115,32,116,111,32,115,110,111,119,32,104,101,97,118,105,108,121,32,111,118,101,114,32,102,114,111,122,101,110,32,118,105,108,108,97,103,101),string.char(83,110,111,119,109,97,110),
},
{string.char(97,32,100,97,114,107,32,101,110,101,114,103,121,32,97,119,97,107,101,110,115),string.char(70,114,111,122,101,110,32,68,101,102,101,110,115,101),
},
{string.char(112,105,114,97,116,101,32,115,97,105,108,115,32,111,110,32,116,104,101,32,104,111,114,105,122,111,110),string.char(66,97,116,116,108,101,32,80,108,97,110,115),
},
{string.char(109,105,108,105,116,97,114,121,32,119,101,97,112,111,110,114,121,32,104,97,115,32,98,101,101,110,32,117,110,108,111,99,107,101,100),string.char(70,111,114,116,114,101,115,115,32,85,110,100,101,114,32,70,105,114,101),
},
{string.char(114,111,97,114,32,111,102,32,101,120,99,105,116,101,109,101,110,116,32,101,99,104,111,101,115,32,102,114,111,109,32,116,104,101,32,99,111,108,111,115,115,101,117,109),string.char(67,114,111,119,100,32,70,97,118,111,114,105,116,101),
},
{string.char(115,101,99,114,101,116,32,99,108,111,117,100,32,104,97,115,32,97,112,112,101,97,114,101,100,32,111,118,101,114,32,116,104,101,32,115,107,121,108,97,110,100,115),string.char(84,104,101,32,67,108,111,119,110,39,115,32,74,101,119,101,108,115),
},
{string.char(101,110,101,109,105,101,115,32,104,97,118,101,32,105,110,118,97,100,101,100,32,116,104,101,32,115,107,121,108,97,110,100,115,32,99,97,115,116,108,101),string.char(85,110,101,120,112,101,99,116,101,100,32,71,117,101,115,116),
},
{string.char(115,116,111,114,109,32,98,114,101,119,115,32,105,110,32,116,104,101,32,117,112,112,101,114,32,115,107,121,108,97,110,100,115),string.char(84,104,101,32,84,121,114,97,110,116,32,65,119,97,107,101,110,115),
},
{string.char(98,101,108,108,32,115,104,105,109,109,101,114,115,32,105,110,32,117,112,112,101,114,32,115,107,121,108,97,110,100,115),string.char(69,99,104,111,101,115,32,84,104,114,111,117,103,104,32,116,104,101,32,67,108,111,117,100,115),
},
{string.char(97,32,99,101,108,108,32,99,114,101,97,107,115,32,111,112,101,110),string.char(76,101,118,101,114,32,74,97,105,108,98,114,101,97,107),
},
{string.char(108,111,117,100,32,100,114,105,108,108,105,110,103,32,105,115,32,115,104,97,107,105,110,103,32,116,104,101,32,109,97,103,109,97,32,118,105,108,108,97,103,101),string.char(77,97,103,109,97,32,79,114,101,32,69,120,116,114,97,99,116,105,111,110),
},
{string.char(97,32,114,117,109,98,108,105,110,103,32,101,99,104,111,101,115,32,111,117,116,32,116,111,32,116,104,101,32,115,101,97),string.char(79,110,101,32,76,97,115,116,32,69,114,117,112,116,105,111,110),
},
{string.char(116,104,101,32,119,97,116,101,114,32,105,115,32,115,116,105,114,114,105,110,103),string.char(80,101,97,114,108,32,111,102,32,116,104,101,32,68,101,101,112),
},
{string.char(106,117,110,107,121,97,114,100,32,104,97,115,32,98,101,101,110,32,109,97,103,110,101,116,105,122,101,100),string.char(70,111,117,110,116,97,105,110,32,87,105,114,101,32,82,101,112,97,105,114),
},
}
local function _0x77A7(p121)
local _0x9B16 = tostring(p121 or""):gsub(string.char(60,91,94,62,93,45,62),""):lower()
if not World3 then
for _0xFD54, v in ipairs(_0x18E9) do
if not _0x9B16:find(v[1], 1, true) then
continue
end
_0x87D2[v[2]] = os.clock()
return
end
return
end
if _0x9B16:find(string.char(112,105,114,97,116,101,115,32,104,97,118,101,32,98,101,101,110,32,115,112,111,116,116,101,100), 1, true) then
if os.clock() - (_0x3738 or -60) > 60 then
_0x3738 = os.clock()
task.spawn(pcall, _0xE38D.Step, _0xE38D)
end
end
end
if World1 or World3 then
task.spawn(function()
local _0x72DC = game:GetService(string.char(84,101,120,116,67,104,97,116,83,101,114,118,105,99,101)):WaitForChild(string.char(84,101,120,116,67,104,97,110,110,101,108,115), 30)
local _0x5F6D = _0x72DC and _0x72DC:WaitForChild(string.char(82,66,88,71,101,110,101,114,97,108), 30)
if _0x5F6D then
_0x5F6D.MessageReceived:Connect(function(p122)
if p122.TextSource == nil then
_0x77A7(p122.Text)
end
end)
end
end)
task.spawn(function()
local _0xB087 = _0x6CD1:WaitForChild(string.char(80,108,97,121,101,114,71,117,105), 30)
local _0x673C = _0xB087 and _0xB087:WaitForChild(string.char(78,111,116,105,102,105,99,97,116,105,111,110,115), 30)
local _0xA9BA = _0x673C and _0x673C:WaitForChild(string.char(78,111,116,105,102,105,99,97,116,105,111,110,83,116,97,99,107), 30)
if _0xA9BA then
_0xA9BA.DescendantAdded:Connect(function(descendant)
if descendant:IsA(string.char(84,101,120,116,76,97,98,101,108)) then
task.defer(function()
_0x77A7(descendant.Text)
end)
end
end)
end
end)
end
local _0xFBCC = {}
for _0xFD54, v in ipairs(_0x18E9) do
table.insert(_0xFBCC, v[2])
end
_0xE38D:AddEvent({
Key =string.char(115,101,99,114,101,116),
_0xF1D9 =string.char(83,101,99,114,101,116,32,81,117,101,115,116),
MaxAge = 10,
Items = _0xFBCC,
Witness = true,
Check = function()
if not World1 then
return false
end
local _0x3E6E = {}
for k, v in pairs(_0x87D2) do
if os.clock() - v < 600 then
table.insert(_0x3E6E, k)
end
end
return _0x777F(_0x3E6E)
end,
})
task.spawn(function()
local _0x1CA0, _0x73C2 = _0xE38D:Request(string.char(71,69,84),string.char(47,100,105,99,116,105,111,110,97,114,121,47,102,114,117,105,116,115))
if _0x1CA0 and type(_0x73C2) ==string.char(116,97,98,108,101)then
for _0xFD54, v in ipairs(_0x73C2) do
if type(v) ==string.char(116,97,98,108,101)and type(v.mesh_id) ==string.char(115,116,114,105,110,103)and type(v.name) ==string.char(115,116,114,105,110,103)then
_0x3A73[v.mesh_id] = v.name
local _0x2130 = v.mesh_id:match(string.char(37,100,43))
if _0x2130 then
_0x3A73[_0x2130] = v.name
end
end
end
end
end)
_0xE38D.Thread = task.spawn(function()
task.wait(math.random() * 5)
while Core.ServerReporter == _0xE38D do
_0xE38D:SetEnabled(getgenv().ShareServerEvents ~= false)
pcall(_0xE38D.Step, _0xE38D)
task.wait(15)
end
end)
Core.ServerReporter = _0xE38D
Core.ServerEvents = _0xE38D.Events
Core.ListEventServers = function(p123)
return _0xE38D:ListServers(p123 or 10)
end
Core.JoinEventServer = function(p124, p125, p126)
_0xE38D:JoinEvent(p124, p125, p126)
end
Core.JoinServerList = function(p127, p128)
_0xE38D:JoinServerList(p127, p128)
end
else
warn(string.char(91,67,111,114,101,93,32,83,101,114,118,101,114,32,70,105,110,100,101,114,32,117,110,97,118,97,105,108,97,98,108,101,58,32).. tostring(_0x22CD))
end
endtask.spawn(function()
local _0x78C0, _0x0C5E = pcall(function()
local _0x0559 =string.char(104,116,116,112,115,58,47,47,103,105,116,104,117,98,46,99,111,109,47,70,111,111,116,97,103,101,115,117,115,47,87,105,110,100,85,73,47,114,101,108,101,97,115,101,115,47,108,97,116,101,115,116,47,100,111,119,110,108,111,97,100,47,109,97,105,110,46,108,117,97)local _0x2AB0 = loadstring(game:HttpGet(_0x0559))()
pcall(function()
_0x2AB0:AddTheme({
_0xF1D9 =string.char(86,101,121,114,111,110,105,120,71,114,101,101,110),
Accent = Color3.fromRGB(0, 210, 110),
Background = Color3.fromRGB(12, 16, 14),
Outline = Color3.fromRGB(35, 65, 48),
_0x9E8C = Color3.fromRGB(238, 245, 240),
Placeholder = Color3.fromRGB(135, 150, 140),
Button = Color3.fromRGB(0, 145, 75),
Icon = Color3.fromRGB(110, 235, 160),
})
_0x2AB0:SetTheme(string.char(86,101,121,114,111,110,105,120,71,114,101,101,110))
end)
local _0x676D = _0x2AB0:CreateWindow({
Title =string.char(86,101,121,114,111,110,105,120,32,72,117,98),
Author =string.char(66,108,111,120,32,70,114,117,105,116,115),
Icon =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,57,51,50,50,56,54,51,56,54,49,57,55,49),
IconThemed = false,
IconSize = 22,
Folder =string.char(86,101,121,114,111,110,105,120,72,117,98),
Size = UDim2.fromOffset(960, 640),
MinSize = Vector2.new(700, 480),
MaxSize = Vector2.new(1100, 760),
SideBarWidth = 205,
Resizable = true,
HideSearchBar = false,
Theme =string.char(86,101,121,114,111,110,105,120,71,114,101,101,110),
})
pcall(function()
_0x676D:SetToggleKey(Enum.KeyCode.RightShift)
end)
local function _0xA9F6(_0x5908, kind, options)
local _0x019C = _0x5908 and _0x5908[kind]
if type(_0x019C) ~=string.char(102,117,110,99,116,105,111,110)then
warn(string.char(91,86,101,121,114,111,110,105,120,32,85,73,93,32,87,105,110,100,85,73,32,104,97,115,32,110,111,32).. kind)
return nil
end
local _0xE295, _0x87FC = pcall(_0x019C, _0x5908, options)
if not _0xE295 then
warn(string.char(91,86,101,121,114,111,110,105,120,32,85,73,93,32).. kind ..string.char(32,102,97,105,108,101,100,58,32).. tostring(_0x87FC))
return nil
end
return _0x87FC
endlocal function _0x7EBA(_0xE683)
local _0x21F1 = {}
if type(_0xE683) ~=string.char(116,97,98,108,101)then
if _0xE683 ~= nil then
_0x21F1[1] = tostring(_0xE683)
end
return _0x21F1
end
for key, entry in pairs(_0xE683) do
if type(entry) ==string.char(115,116,114,105,110,103)then
_0x21F1[#_0x21F1 + 1] = entry
elseif type(entry) ==string.char(116,97,98,108,101)then
local _0x5306 = entry.Title or entry.Name or entry.Value or entry[1]
if _0x5306 ~= nil then
_0x21F1[#_0x21F1 + 1] = tostring(_0x5306)
end
elseif entry == true and type(key) ==string.char(115,116,114,105,110,103)then
_0x21F1[#_0x21F1 + 1] = key
end
end
table.sort(_0x21F1)
return _0x21F1
end
local function _0x85F4(map)
local _0xBF7F = {}
if type(map) ==string.char(116,97,98,108,101)then
for key in pairs(map) do
_0xBF7F[#_0xBF7F + 1] = tostring(key)
end
end
table.sort(_0xBF7F)
return _0xBF7F
end
local function _0xD6C1(_0xBF7F)
local _0x6F62 = {}
for _0xFD54, _0x5306 in ipairs(type(_0xBF7F) ==string.char(116,97,98,108,101)and _0xBF7F or {}) do
_0x6F62[#_0x6F62 + 1] = _0x5306
end
return _0x6F62
endlocal function _0x589A(_0x5908, title, initial, setter, description)
local _0x6EA7 = false
_0xA9F6(_0x5908,string.char(84,111,103,103,108,101), {
Title = title,
Desc = description,
_0xDA8F = initial == true,
Callback = function(_0xE683)
if _0x6EA7 then
setter(_0xE683 == true)
end
end,
})
_0x6EA7 = true
end
local function _0xC3C1(_0x5908, title, min, max, default, step, setter)
local _0x6EA7 = false
_0xA9F6(_0x5908,string.char(83,108,105,100,101,114), {
Title = title,
Step = step,
_0xDA8F = { Min = min, Max = max, Default = default },
Callback = function(_0xE683)
if _0x6EA7 then
setter(tonumber(_0xE683) or default)
end
end,
})
_0x6EA7 = true
end
local function _0x8055(_0x5908, title, values, default, setter)
local _0x6EA7 = false
local _0x87FC = _0xA9F6(_0x5908,string.char(68,114,111,112,100,111,119,110), {
Title = title,
Values = values,
_0xDA8F = default,
Callback = function(_0xE683)
if type(_0xE683) ==string.char(116,97,98,108,101)then
_0xE683 = _0xE683.Title or _0xE683[1]
end
if _0x6EA7 and _0xE683 ~= nil then
setter(_0xE683)
end
end,
})
_0x6EA7 = true
return _0x87FC
end
local function _0xB1AA(_0x5908, title, placeholder, setter)
local _0x6EA7 = false
_0xA9F6(_0x5908,string.char(73,110,112,117,116), {
Title = title,
Placeholder = placeholder,
_0xDA8F ="",
Callback = function(_0xE683)
if _0x6EA7 then
_0xE683 = tostring(_0xE683 or"")
setter(_0xE683 ~=""and _0xE683 or nil)
end
end,
})
_0x6EA7 = true
end
local _0xD94D = {
[string.char(65,117,116,111,95,70,114,117,105,116,95,77,97,115,116,101,114,121)] =string.char(65,117,116,111,32,70,114,117,105,116,32,77,97,115,116,101,114,121),
[string.char(65,117,116,111,95,71,117,110,95,77,97,115,116,101,114,121)] =string.char(65,117,116,111,32,71,117,110,32,77,97,115,116,101,114,121),
[string.char(65,117,116,111,95,77,97,115,116,101,114,121,95,65,108,108,95,83,119,111,114,100)] =string.char(65,117,116,111,32,77,97,115,116,101,114,121,32,65,108,108,32,83,119,111,114,100),
[string.char(70,97,114,109,77,97,115,116,101,114,121,95,68,101,118)] =string.char(70,97,114,109,32,77,97,115,116,101,114,121,32,68,101,118),
[string.char(70,97,114,109,77,97,115,116,101,114,121,95,71)] =string.char(70,97,114,109,32,77,97,115,116,101,114,121,32,71),
[string.char(70,97,114,109,77,97,115,116,101,114,121,95,83)] =string.char(70,97,114,109,32,77,97,115,116,101,114,121,32,83),
[string.char(65,117,116,111,95,65,119,97,107,101,110,101,114)] =string.char(65,117,116,111,32,65,119,97,107,101,110,101,114),
[string.char(65,117,116,111,67,104,105,112,66,101,108,105)] =string.char(65,117,116,111,32,67,104,105,112,32,66,101,108,105),
[string.char(65,117,116,111,67,104,105,112,70,114,117,105,116)] =string.char(65,117,116,111,32,67,104,105,112,32,70,114,117,105,116),
[string.char(65,117,116,111,70,97,114,109,68,117,110,103,101,111,110)] =string.char(65,117,116,111,32,70,97,114,109,32,68,117,110,103,101,111,110),
[string.char(65,117,116,111,70,97,114,109,82,97,105,100)] =string.char(65,117,116,111,32,70,97,114,109,32,82,97,105,100),
[string.char(65,117,116,111,82,97,105,100,67,97,115,116,108,101)] =string.char(65,117,116,111,32,82,97,105,100,32,67,97,115,116,108,101),
[string.char(65,117,116,111,95,83,116,97,114,116,82,97,105,100)] =string.char(65,117,116,111,32,83,116,97,114,116,32,82,97,105,100),
[string.char(75,105,108,108,65,117,114,97,82,97,105,100)] =string.char(75,105,108,108,32,65,117,114,97,32,82,97,105,100),
[string.char(65,117,116,111,68,114,97,103,111,110,84,97,108,111,110)] =string.char(65,117,116,111,32,68,114,97,103,111,110,32,84,97,108,111,110),
[string.char(65,117,116,111,70,97,99,116,111,114,121)] =string.char(65,117,116,111,32,70,97,99,116,111,114,121),
[string.char(65,117,116,111,77,105,114,111,114)] =string.char(65,117,116,111,32,77,105,114,111,114),
[string.char(65,117,116,111,77,121,115,116,105,99,73,115,108,97,110,100)] =string.char(65,117,116,111,32,77,121,115,116,105,99,32,73,115,108,97,110,100),
[string.char(65,117,116,111,95,83,104,97,114,107,77,97,110,95,75,97,114,97,116,101)] =string.char(65,117,116,111,32,83,104,97,114,107,32,77,97,110,32,75,97,114,97,116,101),
[string.char(65,117,116,111,83,116,97,114,116,80,114,101,104,105,115,116,111,114,105,99)] =string.char(65,117,116,111,32,83,116,97,114,116,32,80,114,101,104,105,115,116,111,114,105,99),
[string.char(65,117,116,111,102,105,110,100,75,105,116,73,115)] =string.char(65,117,116,111,102,105,110,100,32,75,105,116,32,73,115),
[string.char(98,101,97,115,116,104,117,110,116,101,114)] =string.char(66,101,97,115,116,104,117,110,116,101,114),
[string.char(66,117,121,68,114,97,103,111)] =string.char(66,117,121,32,68,114,97,103,111),
[string.char(67,111,108,108,101,99,116,95,69,109,98,101,114)] =string.char(67,111,108,108,101,99,116,32,69,109,98,101,114),
[string.char(67,111,109,112,108,101,116,101,95,84,114,105,97,108,115)] =string.char(67,111,109,112,108,101,116,101,32,84,114,105,97,108,115),
[string.char(68,97,110,103,101,114,76,86)] =string.char(68,97,110,103,101,114,32,76,86),
[string.char(68,101,102,101,97,116,105,110,103)] =string.char(68,101,102,101,97,116,105,110,103),
[string.char(68,114,97,103,111,86,49)] =string.char(68,114,97,103,111,32,86,32,49),
[string.char(68,114,97,103,111,86,51)] =string.char(68,114,97,103,111,32,86,32,51),
[string.char(70,105,110,100,77,105,114,97,103,101)] =string.char(70,105,110,100,32,77,105,114,97,103,101),
[string.char(70,105,115,104,66,111,97,116)] =string.char(70,105,115,104,32,66,111,97,116),
[string.char(70,114,111,122,101,110,84,80)] =string.char(70,114,111,122,101,110,32,84,80),
[string.char(72,67,77)] =string.char(72,67,77),
[string.char(72,105,103,104,101,115,116,77,105,114,97,103,101)] =string.char(72,105,103,104,101,115,116,32,77,105,114,97,103,101),
[string.char(76,101,118,105,97,116,104,97,110,49)] =string.char(76,101,118,105,97,116,104,97,110,32,49),
[string.char(76,118,101,114)] =string.char(76,118,101,114),
[string.char(76,118,116,104,97,110)] =string.char(76,118,116,104,97,110),
[string.char(77,111,98,67,114,101,119)] =string.char(77,111,98,32,67,114,101,119),
[string.char(80,71,66)] =string.char(80,71,66),
[string.char(80,105,114,97,110,104,97)] =string.char(80,105,114,97,110,104,97),
[string.char(80,114,97,121,105,110,103)] =string.char(80,114,97,121,105,110,103),
[string.char(80,114,101,104,105,115,95,68,66)] =string.char(80,114,101,104,105,115,32,68,66),
[string.char(80,114,101,104,105,115,95,68,69)] =string.char(80,114,101,104,105,115,32,68,69),
[string.char(80,114,101,104,105,115,95,70,105,110,100)] =string.char(80,114,101,104,105,115,32,70,105,110,100),
[string.char(80,114,101,104,105,115,95,83,107,105,108,108,115)] =string.char(80,114,101,104,105,115,32,83,107,105,108,108,115),
[string.char(82,101,108,105,99,49,50,51)] =string.char(82,101,108,105,99,32,49,50,51),
[string.char(83,97,105,108,66,111,97,116,95,72,121,100,114,97)] =string.char(83,97,105,108,32,66,111,97,116,32,72,121,100,114,97),
[string.char(83,97,105,108,66,111,97,116,115)] =string.char(83,97,105,108,32,66,111,97,116,115),
[string.char(83,101,97,66,101,97,115,116,49)] =string.char(83,101,97,32,66,101,97,115,116,32,49),
[string.char(83,104,97,114,107)] =string.char(83,104,97,114,107),
[string.char(115,110,97,103,117,105,110,101)] =string.char(83,110,97,103,117,105,110,101,32,40,97,108,116,41),
[string.char(83,110,97,103,117,105,110,101)] =string.char(83,110,97,103,117,105,110,101),
[string.char(84,101,114,114,111,114,83,104,97,114,107)] =string.char(84,101,114,114,111,114,32,83,104,97,114,107),
[string.char(84,112,68,114,97,103,111,95,80,114,101,104,105,115)] =string.char(84,112,32,68,114,97,103,111,32,80,114,101,104,105,115),
[string.char(84,114,97,100,101,95,69,109,98,101,114)] =string.char(84,114,97,100,101,32,69,109,98,101,114),
[string.char(84,114,97,105,110,68,114,97,103,111)] =string.char(84,114,97,105,110,32,68,114,97,103,111),
[string.char(84,114,121,76,117,99,107,121)] =string.char(84,114,121,32,76,117,99,107,121),
[string.char(116,119,101,101,110,75,105,116,83,104,114,105,110,101)] =string.char(84,119,101,101,110,32,75,105,116,32,83,104,114,105,110,101),
[string.char(116,119,101,101,110,75,105,116,115,117,110,101)] =string.char(84,119,101,101,110,32,75,105,116,115,117,110,101),
[string.char(85,80,71,68,114,97,103,111)] =string.char(85,80,71,68,114,97,103,111),
[string.char(87,97,114,100,101,110,66,111,115,115)] =string.char(87,97,114,100,101,110,32,66,111,115,115),
[string.char(65,117,116,111,66,117,121,66,97,105,116)] =string.char(65,117,116,111,32,66,117,121,32,66,97,105,116),
[string.char(65,117,116,111,95,70,105,115,104)] =string.char(65,117,116,111,32,70,105,115,104),
[string.char(65,117,116,111,70,105,115,104,83,108,97,112)] =string.char(65,117,116,111,32,70,105,115,104,32,83,108,97,112),
[string.char(65,117,116,111,70,105,115,104,105,110,103)] =string.char(65,117,116,111,32,70,105,115,104,105,110,103),
[string.char(65,117,116,111,70,105,115,104,105,110,103,81,117,101,115,116)] =string.char(65,117,116,111,32,70,105,115,104,105,110,103,32,81,117,101,115,116),
[string.char(65,117,116,111,83,101,108,108,70,105,115,104)] =string.char(65,117,116,111,32,83,101,108,108,32,70,105,115,104),
[string.char(65,99,99,101,112,116,81,117,101,115,116,66,111,115,115)] =string.char(65,99,99,101,112,116,32,81,117,101,115,116,32,66,111,115,115),
[string.char(65,99,105,101,110,116,79,110,101)] =string.char(65,110,99,105,101,110,116,32,79,110,101),
[string.char(65,117,114,97,66,111,115,115)] =string.char(65,117,114,97,32,66,111,115,115),
[string.char(65,117,116,111,65,116,116,97,99,107,68,111,117,103,104,75,105,110,103)] =string.char(65,117,116,111,32,65,116,116,97,99,107,32,68,111,117,103,104,32,75,105,110,103),
[string.char(65,117,116,111,65,116,116,97,99,107,82,105,112,73,110,100,114,97)] =string.char(65,117,116,111,32,65,116,116,97,99,107,32,82,105,112,32,73,110,100,114,97),
[string.char(65,117,116,111,66,105,103,109,111,109)] =string.char(65,117,116,111,32,66,105,103,32,77,111,109),
[string.char(65,117,116,111,95,67,97,107,101,95,80,114,105,110,99,101)] =string.char(65,117,116,111,32,67,97,107,101,32,80,114,105,110,99,101),
[string.char(65,117,116,111,95,67,97,118,101,110,100,101,114)] =string.char(65,117,116,111,32,67,97,118,101,110,100,101,114),
[string.char(65,117,116,111,68,111,117,103,104,75,105,110,103)] =string.char(65,117,116,111,32,68,111,117,103,104,32,75,105,110,103),
[string.char(65,117,116,111,69,99,66,111,115,115)] =string.char(65,117,116,111,32,69,99,32,66,111,115,115),
[string.char(65,117,116,111,70,97,114,109,65,108,108,66,111,115,115)] =string.char(65,117,116,111,32,70,97,114,109,32,65,108,108,32,66,111,115,115),
[string.char(65,117,116,111,72,111,112,95,68,111,117,103,104)] =string.char(65,117,116,111,32,72,111,112,32,68,111,117,103,104),
[string.char(65,117,116,111,77,97,116,83,111,117,108)] =string.char(65,117,116,111,32,77,97,116,32,83,111,117,108),
[string.char(65,117,116,111,82,105,112,73,110,103,97,121)] =string.char(65,117,116,111,32,82,105,112,32,73,110,100,114,97),
[string.char(65,117,116,111,83,97,98,101,114)] =string.char(65,117,116,111,32,83,97,98,101,114),
[string.char(65,117,116,111,95,83,111,117,108,95,71,117,105,116,97,114)] =string.char(65,117,116,111,32,83,111,117,108,32,71,117,105,116,97,114),
[string.char(65,117,116,111,95,83,119,97,110,71,71)] =string.char(65,117,116,111,32,83,119,97,110,32,71,108,97,115,115,101,115),
[string.char(65,117,116,111,84,114,105,100,101,110,116,87,50)] =string.char(65,117,116,111,32,84,114,105,100,101,110,116,32,87,32,50),
[string.char(65,117,116,111,95,84,117,115,104,105,116,97)] =string.char(65,117,116,111,32,84,117,115,104,105,116,97),
[string.char(65,117,116,111,95,89,97,109,97)] =string.char(65,117,116,111,32,89,97,109,97),
[string.char(67,68,75)] =string.char(67,68,75),
[string.char(67,68,75,95,84,83)] =string.char(67,68,75,32,84,83),
[string.char(67,68,75,95,89,77)] =string.char(67,68,75,32,89,77),
[string.char(68,84,95,85,122,111,116,104)] =string.char(68,84,32,85,122,111,116,104),
[string.char(68,97,114,107,66,108,97,100,101,118,51)] =string.char(68,97,114,107,32,66,108,97,100,101,118,32,51),
[string.char(68,111,117,103,104,118,50)] =string.char(68,111,117,103,104,32,75,105,110,103,32,118,50),
[string.char(70,97,114,109,66,111,115,115)] =string.char(70,97,114,109,32,66,111,115,115),
[string.char(70,97,114,109,69,108,105,116,101,72)] =string.char(70,97,114,109,32,69,108,105,116,101,32,72),
[string.char(70,97,114,109,69,108,105,116,101,72,111,112)] =string.char(70,97,114,109,32,69,108,105,116,101,32,72,111,112),
[string.char(70,97,114,109,69,108,105,116,101,72,117,110,116)] =string.char(70,97,114,109,32,69,108,105,116,101,32,72,117,110,116),
[string.char(70,97,114,109,80,104,97,66,105,110,104)] =string.char(70,97,114,109,32,80,104,97,32,66,105,110,104),
[string.char(70,97,114,109,84,121,114,97,110,116)] =string.char(70,97,114,109,32,84,121,114,97,110,116),
[string.char(70,105,110,100,66,111,115,115)] =string.char(70,105,110,100,32,66,111,115,115),
[string.char(71,114,101,121,98,101,97,114,100)] =string.char(71,114,101,121,98,101,97,114,100),
[string.char(73,99,101,66,111,115,115,82,101,110)] =string.char(73,99,101,32,66,111,115,115,32,82,101,110),
[string.char(83,119,97,110,67,111,97,116)] =string.char(83,119,97,110,32,67,111,97,116),
[string.char(84,80,68,111,111,114)] =string.char(84,80,68,111,111,114),
[string.char(84,80,70,108,111,111,114,49)] =string.char(84,80,70,108,111,111,114,32,49),
[string.char(84,80,70,108,111,111,114,50)] =string.char(84,80,70,108,111,111,114,32,50),
[string.char(84,80,70,108,111,111,114,51)] =string.char(84,80,70,108,111,111,114,32,51),
[string.char(84,80,70,108,111,111,114,52)] =string.char(84,80,70,108,111,111,114,32,52),
[string.char(84,80,71,69,65,82)] =string.char(84,80,71,69,65,82),
[string.char(84,80,78,112,99)] =string.char(84,80,78,112,99),
[string.char(84,101,108,101,112,111,114,116)] =string.char(84,101,108,101,112,111,114,116),
[string.char(84,112,76,97,98)] =string.char(84,112,32,76,97,98),
[string.char(84,112,95,76,103,83)] =string.char(84,112,32,76,103,32,83),
[string.char(84,112,95,77,97,115,116,101,114,65)] =string.char(84,112,32,77,97,115,116,101,114,32,65),
[string.char(84,112,80,108,121)] =string.char(84,112,32,80,108,121),
[string.char(84,119,70,114,117,105,116,115)] =string.char(84,119,32,70,114,117,105,116,115),
[string.char(116,119,101,101,110,83,104,114,105,110,101)] =string.char(84,119,101,101,110,32,83,104,114,105,110,101),
[string.char(84,119,105,110,72,111,111,107)] =string.char(84,119,105,110,32,72,111,111,107),
[string.char(65,117,116,111,66,101,114,114,121)] =string.char(65,117,116,111,32,66,101,114,114,121),
[string.char(65,117,116,111,66,101,114,114,121,72)] =string.char(65,117,116,111,32,66,101,114,114,121,32,72),
[string.char(65,117,116,111,67,104,101,115,116,66,80)] =string.char(65,117,116,111,32,67,104,101,115,116,32,66,80),
[string.char(65,117,116,111,69,99,116,111,112,108,97,115,109)] =string.char(65,117,116,111,32,69,99,116,111,112,108,97,115,109),
[string.char(65,117,116,111,70,97,114,109,95,66,111,110,101)] =string.char(65,117,116,111,32,70,97,114,109,32,66,111,110,101),
[string.char(65,117,116,111,70,97,114,109,67,97,110,100,121)] =string.char(65,117,116,111,32,70,97,114,109,32,67,97,110,100,121),
[string.char(65,117,116,111,70,97,114,109,67,104,101,115,116)] =string.char(65,117,116,111,32,70,97,114,109,32,67,104,101,115,116),
[string.char(65,117,116,111,70,97,114,109,71,111,100,67,104,97,108,105,99,101)] =string.char(65,117,116,111,32,70,97,114,109,32,71,111,100,32,67,104,97,108,105,99,101),
[string.char(65,117,116,111,70,97,114,109,73,115,108,97,110,100)] =string.char(65,117,116,111,32,70,97,114,109,32,73,115,108,97,110,100),
[string.char(65,117,116,111,70,97,114,109,78,101,97,114)] =string.char(65,117,116,111,32,70,97,114,109,32,78,101,97,114),
[string.char(65,117,116,111,75,105,108,108,77,111,98)] =string.char(65,117,116,111,32,75,105,108,108,32,77,111,98),
[string.char(65,117,116,111,77,97,103,110,101,116,84,111,107,101,110)] =string.char(65,117,116,111,32,77,97,103,110,101,116,32,84,111,107,101,110),
[string.char(65,117,116,111,80,108,97,121,101,114,72,117,110,116,101,114)] =string.char(65,117,116,111,32,80,108,97,121,101,114,32,72,117,110,116,101,114),
[string.char(65,117,116,111,80,118,80)] =string.char(65,117,116,111,32,80,118,32,80),
[string.char(65,117,116,111,95,82,97,110,100,111,109,95,66,111,110,101)] =string.char(65,117,116,111,32,82,97,110,100,111,109,32,66,111,110,101),
[string.char(65,117,116,111,82,101,99,101,105,118,101,80,108,97,121,101,114,81,117,101,115,116)] =string.char(65,117,116,111,32,82,101,99,101,105,118,101,32,80,108,97,121,101,114,32,81,117,101,115,116),
[string.char(65,117,116,111,83,107,105,108,108,90)] =string.char(65,117,116,111,32,83,107,105,108,108,32,90),
[string.char(65,117,116,111,84,80,95,71,105,102,116)] =string.char(65,117,116,111,32,84,80,32,71,105,102,116),
[string.char(65,117,116,111,84,80,65,110,100,67,111,108,108,101,99,116)] =string.char(65,117,116,111,32,84,80,65,110,100,32,67,111,108,108,101,99,116),
[string.char(65,117,116,111,84,80,71,105,102,116)] =string.char(65,117,116,111,32,84,80,71,105,102,116),
[string.char(67,111,108,108,101,99,116,80,114,101,115,101,110,116)] =string.char(67,111,108,108,101,99,116,32,80,114,101,115,101,110,116),
[string.char(70,97,114,109,66,108,97,122,101,69,77)] =string.char(70,97,114,109,32,66,108,97,122,101,32,69,77),
[string.char(70,97,114,109,67,104,101,115,116,77)] =string.char(70,97,114,109,32,67,104,101,115,116,32,77),
[string.char(70,97,114,109,71,111,100,67,104,97,108,105,99,101)] =string.char(70,97,114,109,32,71,111,100,32,67,104,97,108,105,99,101),
[string.char(75,105,108,108,65,117,114,97,70,117,108,108)] =string.char(75,105,108,108,32,65,117,114,97,32,70,117,108,108),
[string.char(76,101,118,101,108)] =string.char(65,117,116,111,32,70,97,114,109,32,76,101,118,101,108),
[string.char(77,97,115,116,101,114,65,117,116,111,67,97,110,100,121)] =string.char(77,97,115,116,101,114,32,65,117,116,111,32,67,97,110,100,121),
[string.char(77,97,115,116,101,114,65,117,116,111,76,101,118,101,108)] =string.char(77,97,115,116,101,114,32,65,117,116,111,32,76,101,118,101,108),
[string.char(111,98,115,70,97,114,109)] =string.char(79,98,115,101,114,118,97,116,105,111,110,32,70,97,114,109),
[string.char(65,99,99,101,112,116,65,108,108,121)] =string.char(65,99,99,101,112,116,32,65,108,108,121),
[string.char(65,99,99,101,112,116,81,117,101,115,116,66)] =string.char(65,99,99,101,112,116,32,81,117,101,115,116,32,66),
[string.char(65,99,99,101,112,116,81,117,101,115,116,67)] =string.char(65,99,99,101,112,116,32,81,117,101,115,116,32,67),
[string.char(65,105,109,67,97,109)] =string.char(65,105,109,32,67,97,109),
[string.char(65,117,116,111,72,111,112,83,101,114,118,101,114)] =string.char(65,117,116,111,32,72,111,112,32,83,101,114,118,101,114),
[string.char(65,117,116,111,83,112,97,119,110,67,80)] =string.char(65,117,116,111,32,83,112,97,119,110,32,67,80),
[string.char(99,97,110)] =string.char(67,97,110),
[string.char(100,97,121,108,105,103,104,116,78)] =string.char(68,97,121,108,105,103,104,116,32,78),
[string.char(68,101,115,116,114,111,121,72,105,116)] =string.char(68,101,115,116,114,111,121,32,72,105,116),
[string.char(68,114,111,112,70,114,117,105,116)] =string.char(68,114,111,112,32,70,114,117,105,116),
[string.char(71,101,116,81,70,97,115,116)] =string.char(71,101,116,32,81,70,97,115,116),
[string.char(73,110,115,116,97,110,99,101,70)] =string.char(73,110,115,116,97,110,99,101,32,70),
[string.char(80,111,114,116,97,108,85,110,76,111,99,107)] =string.char(80,111,114,116,97,108,32,85,110,32,76,111,99,107),
[string.char(82,97,110,100,111,109,95,65,117,116,111)] =string.char(82,97,110,100,111,109,32,65,117,116,111),
[string.char(82,101,115,101,116,80,72)] =string.char(82,101,115,101,116,32,80,72),
[string.char(83,97,102,101,77,111,100,101)] =string.char(83,97,102,101,32,77,111,100,101),
[string.char(83,97,102,101,109,111,100,101)] =string.char(83,97,102,101,109,111,100,101),
[string.char(83,101,114,105,97,108,105,116,121)] =string.char(83,101,114,105,97,108,105,116,121),
[string.char(83,116,97,114,116,69,118,101,110,116)] =string.char(83,116,97,114,116,32,69,118,101,110,116),
[string.char(83,116,111,112,87,104,101,110,67,104,97,108,105,99,101)] =string.char(83,116,111,112,32,87,104,101,110,32,67,104,97,108,105,99,101),
[string.char(87,97,108,107,87,97,116,101,114)] =string.char(87,97,108,107,32,87,97,116,101,114),
[string.char(65,100,100,101,97,108,101,114)] =string.char(65,100,100,101,97,108,101,114),
[string.char(65,117,116,111,67,111,108,83,104,97,100)] =string.char(65,117,116,111,32,67,111,108,32,83,104,97,100),
[string.char(65,117,116,111,68,101,97,116,104,83,116,101,112)] =string.char(65,117,116,111,32,68,101,97,116,104,32,83,116,101,112),
[string.char(65,117,116,111,95,68,101,102,95,68,97,114,107,67,111,97,116)] =string.char(65,117,116,111,32,68,101,102,32,68,97,114,107,32,67,111,97,116),
[string.char(65,117,116,111,95,68,101,102,101,110,115,101)] =string.char(65,117,116,111,32,68,101,102,101,110,115,101),
[string.char(65,117,116,111,95,68,101,118,105,108,70,114,117,105,116)] =string.char(65,117,116,111,32,68,101,118,105,108,32,70,114,117,105,116),
[string.char(65,117,116,111,95,68,111,110,65,99,99,101,115)] =string.char(65,117,116,111,32,68,111,110,32,65,99,99,101,115),
[string.char(65,117,116,111,95,69,108,101,99,116,114,105,99,95,67,108,97,119)] =string.char(65,117,116,111,32,69,108,101,99,116,114,105,99,32,67,108,97,119),
[string.char(65,117,116,111,69,118,111,82,97,99,101)] =string.char(65,117,116,111,32,69,118,111,32,82,97,99,101),
[string.char(65,117,116,111,70,77,111,110)] =string.char(65,117,116,111,32,70,77,111,110),
[string.char(65,117,116,111,70,105,114,101,70,108,111,119,101,114,115)] =string.char(65,117,116,111,32,70,105,114,101,32,70,108,111,119,101,114,115),
[string.char(65,117,116,111,70,105,115,116,68,97,114,107,110,101,115,115)] =string.char(65,117,116,111,32,70,105,115,116,32,68,97,114,107,110,101,115,115),
[string.char(65,117,116,111,71,101,116,81,117,101,115,116,66,111,117,110,116,121)] =string.char(65,117,116,111,32,71,101,116,32,81,117,101,115,116,32,66,111,117,110,116,121),
[string.char(65,117,116,111,71,101,116,85,115,111,97,112)] =string.char(65,117,116,111,32,71,101,116,32,85,115,111,97,112),
[string.char(65,117,116,111,95,71,111,100,95,72,117,109,97,110)] =string.char(65,117,116,111,32,71,111,100,32,72,117,109,97,110),
[string.char(65,117,116,111,95,71,117,110)] =string.char(65,117,116,111,32,71,117,110),
[string.char(65,117,116,111,72,111,108,121,84,111,114,99,104)] =string.char(65,117,116,111,32,72,111,108,121,32,84,111,114,99,104),
[string.char(65,117,116,111,95,72,117,109,97,110)] =string.char(65,117,116,111,32,72,117,109,97,110),
[string.char(65,117,116,111,72,121,116,72,97,108,108,111,119)] =string.char(65,117,116,111,32,72,121,116,32,72,97,108,108,111,119),
[string.char(65,117,116,111,75,101,110,86,84,87,79)] =string.char(65,117,116,111,32,75,101,110,32,86,84,87,79),
[string.char(65,117,116,111,75,105,108,111)] =string.char(65,117,116,111,32,75,105,108,111),
[string.char(65,117,116,111,76,97,119,75,97,107)] =string.char(65,117,116,111,32,76,97,119,32,75,97,107),
[string.char(65,117,116,111,95,77,101,108,101,101)] =string.char(65,117,116,111,32,77,101,108,101,101),
[string.char(65,117,116,111,95,77,105,110,107)] =string.char(65,117,116,111,32,77,105,110,107),
[string.char(65,117,116,111,80,104,111,101,110,105,120,70)] =string.char(65,117,116,111,32,80,104,111,101,110,105,120,32,70),
[string.char(65,117,116,111,80,111,108,101)] =string.char(65,117,116,111,32,80,111,108,101),
[string.char(65,117,116,111,80,111,108,101,86,50)] =string.char(65,117,116,111,32,80,111,108,101,32,86,32,50),
[string.char(65,117,116,111,81,117,101,115,116,67,111,109,112,108,101,116,101)] =string.char(65,117,116,111,32,81,117,101,115,116,32,67,111,109,112,108,101,116,101),
[string.char(65,117,116,111,95,82,97,105,110,98,111,119,95,72,97,107,105)] =string.char(65,117,116,111,32,82,97,105,110,98,111,119,32,72,97,107,105),
[string.char(65,117,116,111,83,97,119)] =string.char(65,117,116,111,32,83,97,119),
[string.char(65,117,116,111,83,101,114,112,101,110,116,66,111,119)] =string.char(65,117,116,111,32,83,101,114,112,101,110,116,32,66,111,119),
[string.char(65,117,116,111,95,83,107,121,112,105,101,97)] =string.char(65,117,116,111,32,83,107,121,112,105,101,97),
[string.char(65,117,116,111,95,83,117,112,101,114,72,117,109,97,110)] =string.char(65,117,116,111,32,83,117,112,101,114,32,72,117,109,97,110),
[string.char(65,117,116,111,95,83,119,111,114,100)] =string.char(65,117,116,111,32,83,119,111,114,100),
[string.char(65,117,116,111,85,110,72,97,107,105)] =string.char(65,117,116,111,32,85,110,32,72,97,107,105),
[string.char(65,117,116,111,90,111,117)] =string.char(65,117,116,111,32,90,111,117),
[string.char(66,97,114,116,105,108,111,95,81,117,101,115,116)] =string.char(66,97,114,116,105,108,111,32,81,117,101,115,116),
[string.char(66,108,97,99,107,83,112,105,107,101,121)] =string.char(66,108,97,99,107,32,83,112,105,107,101,121),
[string.char(67,105,116,105,122,101,110,81,117,101,115,116)] =string.char(67,105,116,105,122,101,110,32,81,117,101,115,116),
[string.char(67,114,97,102,116,86,77)] =string.char(67,114,97,102,116,32,86,77),
[string.char(68,111,106,111,111)] =string.char(68,111,106,111),
[string.char(68,117,109,109,121,77,97,110)] =string.char(68,117,109,109,121,32,77,97,110),
[string.char(75,101,121,115,82,101,110)] =string.char(75,101,121,115,32,82,101,110),
[string.char(76,111,110,103,115,87,111,114,100)] =string.char(76,111,110,103,115,32,87,111,114,100),
[string.char(77,97,114,105,110,101,115,67,111,97,116)] =string.char(77,97,114,105,110,101,115,32,67,111,97,116),
[string.char(80,114,101,102,117,108,108,121)] =string.char(80,114,101,102,117,108,108,121),
[string.char(82,97,99,101,67,108,105,99,107,65,117,116,111,118,51)] =string.char(82,97,99,101,32,67,108,105,99,107,32,65,117,116,111,118,32,51),
[string.char(82,97,99,101,67,108,105,99,107,65,117,116,111,118,52)] =string.char(82,97,99,101,32,67,108,105,99,107,32,65,117,116,111,118,32,52),
[string.char(84,114,97,118,101,108,68,114,101,115)] =string.char(84,114,97,118,101,108,32,68,114,101,115)}
local _0x4364 = {
[string.char(76,101,118,101,108)] =string.char(84,97,107,101,115,32,116,104,101,32,113,117,101,115,116,32,102,111,114,32,121,111,117,114,32,108,101,118,101,108,32,97,110,100,32,102,97,114,109,115,32,105,116,115,32,109,111,98,115)}
local _0xF9FE = {}local _0x0608 =string.char(104,116,116,112,115,58,47,47,100,105,115,99,111,114,100,46,103,103,47,89,79,85,82,73,78,86,73,84,69)local _0x824C = true
local _0x0A48 = game:GetService(string.char(80,108,97,121,101,114,115)).LocalPlayer
pcall(function()
_0x676D:OnDestroy(function()
_0x824C = false
end)
end)
local function _0x4BAA(_0x87FC, text)
if _0x87FC and type(_0x87FC.SetDesc) ==string.char(102,117,110,99,116,105,111,110)then
pcall(_0x87FC.SetDesc, _0x87FC, text)
end
end
local function _0x534E(...)
return table.concat({ ... },string.char(10))
end
local function _0x9EAD(text)
pcall(function()
_0x2AB0:Notify({ Title =string.char(86,101,121,114,111,110,105,120,32,72,117,98), Content = text, Duration = 3 })
end)
end
function _0xF9FE.about(_0x5908)
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(86,101,121,114,111,110,105,120,32,72,117,98,32,124,32,66,108,111,120,32,70,114,117,105,116,115),
Desc =string.char(82,105,103,104,116,83,104,105,102,116,32,104,105,100,101,115,32,111,114,32,115,104,111,119,115,32,116,104,105,115,32,109,101,110,117,46,32,69,118,101,114,121,32,115,119,105,116,99,104,32,111,110,108,121,32,116,117,114,110,115,32,116,104,101,32,115,99,114,105,112,116,39,115,32,111,119,110,32,102,108,97,103,115,32,111,110,32,111,114,32,111,102,102,46,32,85,115,101,32,116,104,101,32,115,101,97,114,99,104,32,98,97,114,32,116,111,32,102,105,110,100,32,97,32,102,101,97,116,117,114,101,32,98,121,32,110,97,109,101,46),
})
end
function _0xF9FE.shareEvents(_0x5908)
_0x589A(_0x5908,string.char(83,104,97,114,101,32,115,101,114,118,101,114,32,101,118,101,110,116,115,32,40,83,101,114,118,101,114,32,70,105,110,100,101,114,41), getgenv().ShareServerEvents ~= false, function(_0xE683)
getgenv().ShareServerEvents = _0xE683
end,string.char(82,101,112,111,114,116,115,32,115,101,114,118,101,114,32,101,118,101,110,116,115,32,97,110,100,32,108,105,115,116,115,32,101,118,101,110,116,32,115,101,114,118,101,114,115,46,32,84,117,114,110,32,111,102,102,32,116,111,32,115,116,111,112,32,115,104,97,114,105,110,103,46))
end
function _0xF9FE.destroy(_0x5908)
_0xA9F6(_0x5908,string.char(66,117,116,116,111,110), {
Title =string.char(68,101,115,116,114,111,121,32,85,73),
Callback = function()
_0x824C = false
pcall(function()
_0x676D:Destroy()
end)
end,
})
end
function _0xF9FE.weapon(_0x5908)
_0x8055(_0x5908,string.char(87,101,97,112,111,110,32,116,121,112,101), {string.char(77,101,108,101,101),string.char(83,119,111,114,100),string.char(71,117,110),string.char(66,108,111,120,32,70,114,117,105,116)}, _G.ChooseWP orstring.char(77,101,108,101,101), function(_0xE683)
_G.ChooseWP = _0xE683
end)
end
function _0xF9FE.tweenNear(_0x5908)
_0xC3C1(_0x5908,string.char(84,119,101,101,110,32,115,112,101,101,100,32,40,110,101,97,114,32,116,97,114,103,101,116,41), 50, 400, getgenv().TweenSpeedNear or 180, 5, function(_0xE683)
getgenv().TweenSpeedNear = _0xE683
end)
end
function _0xF9FE.tweenFar(_0x5908)
_0xC3C1(_0x5908,string.char(84,119,101,101,110,32,115,112,101,101,100,32,40,102,97,114,41), 50, 400, getgenv().TweenSpeedFar or 150, 5, function(_0xE683)
getgenv().TweenSpeedFar = _0xE683
end)
end
function _0xF9FE.islandFarm(_0x5908)
_0x8055(_0x5908,string.char(73,115,108,97,110,100,32,40,65,117,116,111,32,70,97,114,109,32,73,115,108,97,110,100,41), _0x85F4(IslandData), _G.SelectIsland, function(_0xE683)
_G.SelectIsland = _0xE683
end)
end
function _0xF9FE.islandMastery(_0x5908)
_0x8055(_0x5908,string.char(73,115,108,97,110,100,32,40,109,97,115,116,101,114,121,32,102,97,114,109,41), _0x85F4(IslandData), _G.SelectIslandMastery, function(_0xE683)
_G.SelectIslandMastery = _0xE683
end)
end
function _0xF9FE.skills(_0x5908)
local _0x2106 = {string.char(90),string.char(88),string.char(67),string.char(86),string.char(70)}
local _0x6EA7 = false
_0xA9F6(_0x5908,string.char(68,114,111,112,100,111,119,110), {
Title =string.char(77,97,115,116,101,114,121,32,115,107,105,108,108,115),
Values = _0x2106,
_0xDA8F = _0x2106,
Multi = true,
AllowNone = true,
Callback = function(_0xE683)
if _0x6EA7 then
_G.SelectedMasterySkills = _0x7EBA(_0xE683)
end
end,
})
_0x6EA7 = true
end
function _0xF9FE.masteryHp(_0x5908)
_0xC3C1(_0x5908,string.char(77,97,115,116,101,114,121,32,104,101,97,108,116,104,32,37,32,40,115,119,105,116,99,104,32,116,111,32,115,107,105,108,108,115,32,98,101,108,111,119,32,116,104,105,115,41), 10, 100, _G.MasteryHealthPct or 70, 1, function(_0xE683)
_G.MasteryHealthPct = _0xE683
end)
end
function _0xF9FE.player(_0x5908)
local _0x1920 = _0x8055(_0x5908,string.char(80,108,97,121,101,114), _0xD6C1(PlrList), _G.PlayersList, function(_0xE683)
_G.PlayersList = _0xE683
end)
_0xA9F6(_0x5908,string.char(66,117,116,116,111,110), {
Title =string.char(82,101,102,114,101,115,104,32,112,108,97,121,101,114,32,108,105,115,116),
Callback = function()
if _0x1920 and type(_0x1920.Refresh) ==string.char(102,117,110,99,116,105,111,110)then
pcall(_0x1920.Refresh, _0x1920, _0xD6C1(PlrList))
end
end,
})
end
function _0xF9FE.boat(_0x5908)
_G.SelectedBoat = _G.SelectedBoat orstring.char(71,117,97,114,100,105,97,110)_0x8055(_0x5908,string.char(66,111,97,116,32,116,111,32,98,117,121), type(AllBoats) ==string.char(116,97,98,108,101)and AllBoats or {string.char(71,117,97,114,100,105,97,110)}, _G.SelectedBoat, function(_0xE683)
_G.SelectedBoat = _0xE683
end)
end
function _0xF9FE.rod(_0x5908)
_0xB1AA(_0x5908,string.char(70,105,115,104,105,110,103,32,114,111,100,32,110,97,109,101),string.char(69,120,97,99,116,32,116,111,111,108,32,110,97,109,101,44,32,101,109,112,116,121,32,61,32,100,101,102,97,117,108,116), function(_0xE683)
_G.SelectedRod = _0xE683
end)
end
function _0xF9FE.bait(_0x5908)
_0xB1AA(_0x5908,string.char(66,97,105,116,32,116,111,32,99,114,97,102,116),string.char(69,120,97,99,116,32,98,97,105,116,32,110,97,109,101), function(_0xE683)
_G.SelectedBait = _0xE683
end)
end
function _0xF9FE.fishDelay(_0x5908)
_0xC3C1(_0x5908,string.char(67,97,116,99,104,32,100,101,108,97,121,32,40,115,41), 0, 10, _G.FishCatchDelay or 4.5, 0.1, function(_0xE683)
_G.FishCatchDelay = _0xE683
end)
end
function _0xF9FE.hopDelay(_0x5908)
_0xC3C1(_0x5908,string.char(83,101,114,118,101,114,32,104,111,112,32,100,101,108,97,121,32,40,115,41), 60, 7200, _G.HopDelay or 1800, 30, function(_0xE683)
_G.HopDelay = _0xE683
end)
end
function _0xF9FE.time(_0x5908)
_0x8055(_0x5908,string.char(84,105,109,101,32,111,102,32,100,97,121), {string.char(68,97,121),string.char(78,105,103,104,116)}, _G.SelectDN, function(_0xE683)
_G.SelectDN = _0xE683
end)
endfunction _0xF9FE.welcome(_0x5908)
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(87,101,108,99,111,109,101,44,32).. _0x0A48.DisplayName,
Desc = _0x534E(string.char(86,101,121,114,111,110,105,120,32,72,117,98,32,124,32,66,108,111,120,32,70,114,117,105,116,115),string.char(83,105,103,110,101,100,32,105,110,32,97,115,32,64).. _0x0A48.Name,string.char(80,105,99,107,32,97,32,116,97,98,32,111,110,32,116,104,101,32,108,101,102,116,46,32,84,104,101,32,115,101,97,114,99,104,32,98,97,114,32,102,105,110,100,115,32,97,110,121,32,115,119,105,116,99,104,32,98,121,32,110,97,109,101,46)),
})
end
function _0xF9FE.stats(_0x5908)
local _0x87FC = _0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), { Title =string.char(76,105,118,101,32,115,116,97,116,115), Desc =string.char(114,101,97,100,105,110,103,46,46,46)})
local _0x35FB = 0
local _0x1A87 = os.clock()
local _0x5AEC = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x6346 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101)).Heartbeat:Connect(function()
_0x35FB = _0x35FB + 1
end)
task.spawn(function()
while _0x824C do
task.wait(1)
local _0xE681 = _0x35FB
_0x35FB = 0
local _0x6021 =string.char(110,47,97)local _0x24DE, _0xE683 = pcall(function()
return game:GetService(string.char(83,116,97,116,115)).Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue()
end)
if _0x24DE and type(_0xE683) ==string.char(110,117,109,98,101,114)then
_0x6021 = string.format(string.char(37,100,32,109,115), math.floor(_0xE683 + 0.5))
end
local _0x07D5 = math.floor(os.clock() - _0x1A87)
_0x4BAA(_0x87FC, _0x534E(string.char(70,80,83,58,32).. _0xE681 ..string.char(32,32,32,32,80,105,110,103,58,32).. _0x6021,string.char(80,108,97,121,101,114,115,58,32).. #_0x5AEC:GetPlayers() ..string.char(47).. _0x5AEC.MaxPlayers,
string.format(string.char(77,101,110,117,32,111,112,101,110,32,102,111,114,58,32,37,48,50,100,58,37,48,50,100,58,37,48,50,100), _0x07D5 // 3600, _0x07D5 // 60 % 60, _0x07D5 % 60)
))
end
_0x6346:Disconnect()
end)
end
function _0xF9FE.copyJob(_0x5908)
_0xA9F6(_0x5908,string.char(66,117,116,116,111,110), {
Title =string.char(67,111,112,121,32,115,101,114,118,101,114,32,74,111,98,32,73,68),
Callback = function()
if setclipboard then
setclipboard(game.JobId)
_0x9EAD(string.char(74,111,98,32,73,68,32,99,111,112,105,101,100))
else
_0x9EAD(string.char(89,111,117,114,32,101,120,101,99,117,116,111,114,32,104,97,115,32,110,111,32,99,108,105,112,98,111,97,114,100,32,97,99,99,101,115,115))
end
end,
})
end
function _0xF9FE.rejoin(_0x5908)
_0xA9F6(_0x5908,string.char(66,117,116,116,111,110), {
Title =string.char(82,101,106,111,105,110,32,116,104,105,115,32,115,101,114,118,101,114),
Callback = function()
pcall(function()
game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101)):TeleportToPlaceInstance(game.PlaceId, game.JobId, _0x0A48)
end)
end,
})
end
function _0xF9FE.changelog(_0x5908)
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(76,97,116,101,115,116,58,32,65,100,100,101,100,32,66,108,111,120,32,70,114,117,105,116,32,83,99,114,105,112,116),
Desc = _0x534E(string.char(43,32,83,105,100,101,98,97,114,32,103,114,111,117,112,115,58,32,77,97,105,110,44,32,67,111,109,98,97,116,44,32,83,101,97,44,32,80,114,111,103,114,101,115,115,44,32,85,116,105,108,105,116,121),string.char(43,32,50,49,55,32,115,119,105,116,99,104,101,115,32,115,111,114,116,101,100,32,105,110,116,111,32,99,111,108,108,97,112,115,105,98,108,101,32,99,97,114,100,115),string.char(43,32,83,101,116,116,105,110,103,115,32,115,105,116,32,105,110,115,105,100,101,32,116,104,101,32,116,97,98,32,116,104,101,121,32,98,101,108,111,110,103,32,116,111),string.char(43,32,74,111,105,110,32,100,105,115,99,111,114,100)),
})
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(69,97,114,108,105,101,114,58,32,70,105,120,32,83,99,114,105,112,116),
Desc = _0x534E(string.char(43,32,87,105,110,100,85,73,32,109,101,110,117,32,102,111,114,32,116,104,101,32,115,99,114,105,112,116,39,115,32,115,119,105,116,99,104,101,115),string.char(43,32,87,101,97,112,111,110,44,32,109,97,115,116,101,114,121,44,32,105,115,108,97,110,100,44,32,112,108,97,121,101,114,32,97,110,100,32,98,111,97,116,32,112,105,99,107,101,114,115),string.char(43,32,83,104,97,114,101,32,115,101,114,118,101,114,32,101,118,101,110,116,115,32,115,119,105,116,99,104)),
})
end
function _0xF9FE.discord(_0x5908)
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(68,105,115,99,111,114,100),
Desc =string.char(85,112,100,97,116,101,115,44,32,115,117,112,112,111,114,116,32,97,110,100,32,115,117,103,103,101,115,116,105,111,110,115,46),
})
_0xA9F6(_0x5908,string.char(66,117,116,116,111,110), {
Title =string.char(67,111,112,121,32,68,105,115,99,111,114,100,32,105,110,118,105,116,101),
Callback = function()
if string.find(_0x0608,string.char(104,116,116,112,115,58,47,47,100,105,115,99,111,114,100,46,103,103,47,67,116,103,119,104,107,66,100,97), 1, true) then
_0x9EAD(string.char(78,111,32,68,105,115,99,111,114,100,32,105,110,118,105,116,101,32,115,101,116,32,121,101,116))
elseif setclipboard then
setclipboard(_0x0608)
_0x9EAD(string.char(73,110,118,105,116,101,32,99,111,112,105,101,100,58,32).. _0x0608)
else
_0x9EAD(_0x0608)
end
end,
})
end
function _0xF9FE.tips(_0x5908)
_0xA9F6(_0x5908,string.char(80,97,114,97,103,114,97,112,104), {
Title =string.char(71,101,116,116,105,110,103,32,115,116,97,114,116,101,100),
Desc = _0x534E(string.char(49,46,32,79,112,101,110,32,70,97,114,109,32,97,110,100,32,115,119,105,116,99,104,32,111,110,32,65,117,116,111,32,70,97,114,109,32,76,101,118,101,108,46),string.char(50,46,32,83,101,116,32,87,101,97,112,111,110,32,116,121,112,101,32,117,110,100,101,114,32,70,97,114,109,32,83,101,116,116,105,110,103,115,32,102,105,114,115,116,46),string.char(51,46,32,77,97,115,116,101,114,121,32,115,107,105,108,108,115,44,32,104,101,97,108,116,104,32,37,32,97,110,100,32,105,115,108,97,110,100,32,97,114,101,32,105,110,32,77,97,115,116,101,114,121,32,62,32,77,97,115,116,101,114,121,32,83,101,116,116,105,110,103,115,46),string.char(52,46,32,82,105,103,104,116,83,104,105,102,116,32,104,105,100,101,115,32,111,114,32,115,104,111,119,115,32,116,104,105,115,32,109,101,110,117,46)),
})
endlocal _0xAD3F = {
{
_0xF1D9 =string.char(77,97,105,110),
Tabs = {
{
_0xF1D9 =string.char(72,111,109,101),
Icon =string.char(104,111,117,115,101),
Cards = {
{ _0xF1D9 =string.char(87,101,108,99,111,109,101), Icon =string.char(115,112,97,114,107,108,101,115), Items = {string.char(64,119,101,108,99,111,109,101)} },
{ _0xF1D9 =string.char(83,101,115,115,105,111,110), Icon =string.char(97,99,116,105,118,105,116,121), Items = {string.char(64,115,116,97,116,115),string.char(64,99,111,112,121,74,111,98),string.char(64,114,101,106,111,105,110)} },
{ _0xF1D9 =string.char(67,104,97,110,103,101,108,111,103), Icon =string.char(115,99,114,111,108,108,45,116,101,120,116), Items = {string.char(64,99,104,97,110,103,101,108,111,103)} },
{ _0xF1D9 =string.char(67,111,109,109,117,110,105,116,121), Icon =string.char(109,101,115,115,97,103,101,45,99,105,114,99,108,101), Items = {string.char(64,100,105,115,99,111,114,100)} },
{ _0xF1D9 =string.char(84,105,112,115), Icon =string.char(108,105,103,104,116,98,117,108,98), Items = {string.char(64,116,105,112,115)} },
{ _0xF1D9 =string.char(86,101,121,114,111,110,105,120,32,72,117,98), Icon =string.char(108,101,97,102), Items = {string.char(64,97,98,111,117,116),string.char(64,115,104,97,114,101,69,118,101,110,116,115),string.char(64,100,101,115,116,114,111,121)} },
},
},
{
_0xF1D9 =string.char(70,97,114,109),
Icon =string.char(115,112,114,111,117,116),
Cards = {
{ _0xF1D9 =string.char(76,101,118,101,108,32,70,97,114,109), Icon =string.char(116,114,101,110,100,105,110,103,45,117,112), Items = {string.char(76,101,118,101,108),string.char(77,97,115,116,101,114,65,117,116,111,76,101,118,101,108),string.char(65,117,116,111,70,97,114,109,78,101,97,114),string.char(65,117,116,111,75,105,108,108,77,111,98),string.char(65,117,116,111,70,97,114,109,73,115,108,97,110,100),string.char(65,117,116,111,70,77,111,110),string.char(65,117,116,111,83,107,105,108,108,90),string.char(65,117,116,111,81,117,101,115,116,67,111,109,112,108,101,116,101)} },
{ _0xF1D9 =string.char(70,97,114,109,32,83,101,116,116,105,110,103,115), Icon =string.char(115,108,105,100,101,114,115,45,104,111,114,105,122,111,110,116,97,108), Items = {string.char(64,119,101,97,112,111,110),string.char(64,116,119,101,101,110,78,101,97,114),string.char(64,116,119,101,101,110,70,97,114),string.char(64,105,115,108,97,110,100,70,97,114,109)} },
{ _0xF1D9 =string.char(77,97,116,101,114,105,97,108,115), Icon =string.char(112,97,99,107,97,103,101), Items = {string.char(65,117,116,111,69,99,116,111,112,108,97,115,109),string.char(65,117,116,111,77,97,116,83,111,117,108),string.char(65,117,116,111,70,97,114,109,95,66,111,110,101),string.char(65,117,116,111,95,82,97,110,100,111,109,95,66,111,110,101),string.char(65,117,116,111,70,105,114,101,70,108,111,119,101,114,115)} },
{ _0xF1D9 =string.char(67,104,101,115,116,115,32,38,32,67,111,108,108,101,99,116,105,110,103), Icon =string.char(103,105,102,116), Items = {string.char(65,117,116,111,70,97,114,109,67,104,101,115,116),string.char(70,97,114,109,67,104,101,115,116,77),string.char(65,117,116,111,67,104,101,115,116,66,80),string.char(83,116,111,112,87,104,101,110,67,104,97,108,105,99,101),string.char(65,117,116,111,70,97,114,109,71,111,100,67,104,97,108,105,99,101),string.char(70,97,114,109,71,111,100,67,104,97,108,105,99,101),string.char(65,117,116,111,66,101,114,114,121),string.char(65,117,116,111,66,101,114,114,121,72),string.char(67,111,108,108,101,99,116,80,114,101,115,101,110,116),string.char(65,117,116,111,77,97,103,110,101,116,84,111,107,101,110),string.char(65,117,116,111,84,80,95,71,105,102,116),string.char(65,117,116,111,84,80,71,105,102,116),string.char(65,117,116,111,84,80,65,110,100,67,111,108,108,101,99,116),string.char(65,117,116,111,70,97,114,109,67,97,110,100,121),string.char(77,97,115,116,101,114,65,117,116,111,67,97,110,100,121),string.char(70,97,114,109,66,108,97,122,101,69,77),string.char(111,98,115,70,97,114,109)} },
},
},
{
_0xF1D9 =string.char(77,97,115,116,101,114,121),
Icon =string.char(115,119,111,114,100,115),
Cards = {
{ _0xF1D9 =string.char(77,97,115,116,101,114,121,32,70,97,114,109), Icon =string.char(116,97,114,103,101,116), Items = {string.char(70,97,114,109,77,97,115,116,101,114,121,95,71),string.char(70,97,114,109,77,97,115,116,101,114,121,95,83),string.char(70,97,114,109,77,97,115,116,101,114,121,95,68,101,118),string.char(65,117,116,111,95,70,114,117,105,116,95,77,97,115,116,101,114,121),string.char(65,117,116,111,95,71,117,110,95,77,97,115,116,101,114,121),string.char(65,117,116,111,95,77,97,115,116,101,114,121,95,65,108,108,95,83,119,111,114,100)} },
{ _0xF1D9 =string.char(77,97,115,116,101,114,121,32,83,101,116,116,105,110,103,115), Icon =string.char(115,108,105,100,101,114,115,45,104,111,114,105,122,111,110,116,97,108), Items = {string.char(64,115,107,105,108,108,115),string.char(64,109,97,115,116,101,114,121,72,112),string.char(64,105,115,108,97,110,100,77,97,115,116,101,114,121)} },
},
},
},
},
{
_0xF1D9 =string.char(67,111,109,98,97,116),
Tabs = {
{
_0xF1D9 =string.char(66,111,115,115,101,115),
Icon =string.char(115,107,117,108,108),
Cards = {
{ _0xF1D9 =string.char(87,111,114,108,100,32,66,111,115,115,101,115), Icon =string.char(115,107,117,108,108), Items = {string.char(70,97,114,109,66,111,115,115),string.char(65,117,116,111,70,97,114,109,65,108,108,66,111,115,115),string.char(70,105,110,100,66,111,115,115),string.char(65,99,99,101,112,116,81,117,101,115,116,66,111,115,115),string.char(65,117,114,97,66,111,115,115),string.char(70,97,114,109,84,121,114,97,110,116),string.char(65,117,116,111,69,99,66,111,115,115),string.char(73,99,101,66,111,115,115,82,101,110),string.char(71,114,101,121,98,101,97,114,100),string.char(65,117,116,111,66,105,103,109,111,109),string.char(87,97,114,100,101,110,66,111,115,115),string.char(65,99,105,101,110,116,79,110,101),string.char(68,84,95,85,122,111,116,104),string.char(70,97,114,109,80,104,97,66,105,110,104)} },
{ _0xF1D9 =string.char(69,108,105,116,101,32,72,117,110,116,101,114), Icon =string.char(99,114,111,115,115,104,97,105,114), Items = {string.char(70,97,114,109,69,108,105,116,101,72,117,110,116),string.char(70,97,114,109,69,108,105,116,101,72,111,112),string.char(70,97,114,109,69,108,105,116,101,72)} },
{ _0xF1D9 =string.char(68,111,117,103,104,32,75,105,110,103), Icon =string.char(99,114,111,119,110), Items = {string.char(65,117,116,111,68,111,117,103,104,75,105,110,103),string.char(65,117,116,111,65,116,116,97,99,107,68,111,117,103,104,75,105,110,103),string.char(68,111,117,103,104,118,50),string.char(65,117,116,111,72,111,112,95,68,111,117,103,104)} },
{ _0xF1D9 =string.char(67,97,107,101,32,80,114,105,110,99,101,32,38,32,82,105,112,32,73,110,100,114,97), Icon =string.char(99,97,107,101), Items = {string.char(65,117,116,111,95,67,97,107,101,95,80,114,105,110,99,101),string.char(65,117,116,111,82,105,112,73,110,103,97,121),string.char(65,117,116,111,65,116,116,97,99,107,82,105,112,73,110,100,114,97),string.char(68,97,114,107,66,108,97,100,101,118,51)} },
},
},
{
_0xF1D9 =string.char(82,97,105,100),
Icon =string.char(99,97,115,116,108,101),
Cards = {
{ _0xF1D9 =string.char(82,97,105,100), Icon =string.char(99,97,115,116,108,101), Items = {string.char(65,117,116,111,95,83,116,97,114,116,82,97,105,100),string.char(65,117,116,111,82,97,105,100,67,97,115,116,108,101),string.char(65,117,116,111,70,97,114,109,82,97,105,100),string.char(75,105,108,108,65,117,114,97,82,97,105,100),string.char(65,117,116,111,67,104,105,112,66,101,108,105),string.char(65,117,116,111,67,104,105,112,70,114,117,105,116),string.char(65,117,116,111,70,97,114,109,68,117,110,103,101,111,110),string.char(65,117,116,111,95,65,119,97,107,101,110,101,114)} },
},
},
{
_0xF1D9 =string.char(80,108,97,121,101,114,115),
Icon =string.char(117,115,101,114,115),
Cards = {
{ _0xF1D9 =string.char(80,118,80), Icon =string.char(115,119,111,114,100,115), Items = {string.char(65,117,116,111,80,108,97,121,101,114,72,117,110,116,101,114),string.char(65,117,116,111,80,118,80),string.char(75,105,108,108,65,117,114,97,70,117,108,108),string.char(65,117,116,111,71,101,116,81,117,101,115,116,66,111,117,110,116,121),string.char(65,117,116,111,82,101,99,101,105,118,101,80,108,97,121,101,114,81,117,101,115,116),string.char(65,99,99,101,112,116,65,108,108,121)} },
{ _0xF1D9 =string.char(84,97,114,103,101,116,32,80,108,97,121,101,114), Icon =string.char(117,115,101,114), Items = {string.char(64,112,108,97,121,101,114),string.char(84,112,80,108,121)} },
},
},
},
},
{
_0xF1D9 =string.char(83,101,97),
Tabs = {
{
_0xF1D9 =string.char(83,101,97,32,69,118,101,110,116,115),
Icon =string.char(119,97,118,101,115),
Cards = {
{ _0xF1D9 =string.char(66,111,97,116,115,32,38,32,83,101,97,32,66,101,97,115,116,115), Icon =string.char(115,104,105,112), Items = {string.char(83,97,105,108,66,111,97,116,115),string.char(83,97,105,108,66,111,97,116,95,72,121,100,114,97),string.char(70,105,115,104,66,111,97,116),string.char(83,101,97,66,101,97,115,116,49),string.char(83,104,97,114,107),string.char(84,101,114,114,111,114,83,104,97,114,107),string.char(80,105,114,97,110,104,97),string.char(77,111,98,67,114,101,119),string.char(76,101,118,105,97,116,104,97,110,49),string.char(76,118,116,104,97,110),string.char(76,118,101,114),string.char(80,71,66),string.char(72,67,77),string.char(98,101,97,115,116,104,117,110,116,101,114),string.char(68,97,110,103,101,114,76,86),string.char(65,117,116,111,70,97,99,116,111,114,121)} },
{ _0xF1D9 =string.char(77,105,114,97,103,101,32,38,32,73,115,108,97,110,100,115), Icon =string.char(109,111,117,110,116,97,105,110), Items = {string.char(72,105,103,104,101,115,116,77,105,114,97,103,101),string.char(70,105,110,100,77,105,114,97,103,101),string.char(65,117,116,111,77,105,114,111,114),string.char(65,117,116,111,77,121,115,116,105,99,73,115,108,97,110,100),string.char(65,117,116,111,102,105,110,100,75,105,116,73,115),string.char(116,119,101,101,110,75,105,116,115,117,110,101),string.char(116,119,101,101,110,75,105,116,83,104,114,105,110,101),string.char(116,119,101,101,110,83,104,114,105,110,101),string.char(67,111,108,108,101,99,116,95,69,109,98,101,114),string.char(84,114,97,100,101,95,69,109,98,101,114),string.char(70,114,111,122,101,110,84,80)} },
{ _0xF1D9 =string.char(84,114,105,97,108,115,32,38,32,82,101,108,105,99,115), Icon =string.char(116,114,111,112,104,121), Items = {string.char(67,111,109,112,108,101,116,101,95,84,114,105,97,108,115),string.char(68,101,102,101,97,116,105,110,103),string.char(80,114,97,121,105,110,103),string.char(84,114,121,76,117,99,107,121),string.char(82,101,108,105,99,49,50,51),string.char(83,110,97,103,117,105,110,101),string.char(115,110,97,103,117,105,110,101)} },
{ _0xF1D9 =string.char(66,111,97,116,32,83,101,116,116,105,110,103,115), Icon =string.char(115,108,105,100,101,114,115,45,104,111,114,105,122,111,110,116,97,108), Items = {string.char(64,98,111,97,116)} },
},
},
{
_0xF1D9 =string.char(80,114,101,104,105,115,116,111,114,105,99,32,38,32,68,114,97,103,111,110),
Icon =string.char(102,108,97,109,101),
Cards = {
{ _0xF1D9 =string.char(80,114,101,104,105,115,116,111,114,105,99,32,73,115,108,97,110,100), Icon =string.char(102,108,97,109,101), Items = {string.char(65,117,116,111,83,116,97,114,116,80,114,101,104,105,115,116,111,114,105,99),string.char(80,114,101,104,105,115,95,70,105,110,100),string.char(80,114,101,104,105,115,95,83,107,105,108,108,115),string.char(80,114,101,104,105,115,95,68,69),string.char(80,114,101,104,105,115,95,68,66)} },
{ _0xF1D9 =string.char(68,114,97,103,111,110), Icon =string.char(122,97,112), Items = {string.char(68,114,97,103,111,86,49),string.char(68,114,97,103,111,86,51),string.char(84,114,97,105,110,68,114,97,103,111),string.char(85,80,71,68,114,97,103,111),string.char(66,117,121,68,114,97,103,111),string.char(84,112,68,114,97,103,111,95,80,114,101,104,105,115),string.char(65,117,116,111,68,114,97,103,111,110,84,97,108,111,110)} },
},
},
},
},
{
_0xF1D9 =string.char(80,114,111,103,114,101,115,115),
Tabs = {
{
_0xF1D9 =string.char(83,119,111,114,100,115,32,38,32,71,101,97,114),
Icon =string.char(115,119,111,114,100),
Cards = {
{ _0xF1D9 =string.char(83,119,111,114,100,115), Icon =string.char(115,119,111,114,100), Items = {string.char(65,117,116,111,83,97,98,101,114),string.char(65,117,116,111,95,89,97,109,97),string.char(65,117,116,111,95,84,117,115,104,105,116,97),string.char(67,68,75),string.char(67,68,75,95,84,83),string.char(67,68,75,95,89,77),string.char(65,117,116,111,95,83,111,117,108,95,71,117,105,116,97,114),string.char(65,117,116,111,84,114,105,100,101,110,116,87,50),string.char(65,117,116,111,80,111,108,101),string.char(65,117,116,111,80,111,108,101,86,50),string.char(65,117,116,111,83,101,114,112,101,110,116,66,111,119),string.char(65,117,116,111,83,97,119),string.char(65,117,116,111,95,67,97,118,101,110,100,101,114),string.char(76,111,110,103,115,87,111,114,100),string.char(66,108,97,99,107,83,112,105,107,101,121),string.char(84,119,105,110,72,111,111,107)} },
{ _0xF1D9 =string.char(67,111,97,116,115,32,38,32,65,99,99,101,115,115,111,114,105,101,115), Icon =string.char(115,104,105,101,108,100), Items = {string.char(65,117,116,111,95,83,119,97,110,71,71),string.char(83,119,97,110,67,111,97,116),string.char(77,97,114,105,110,101,115,67,111,97,116),string.char(84,114,97,118,101,108,68,114,101,115),string.char(65,117,116,111,95,68,101,102,95,68,97,114,107,67,111,97,116)} },
},
},
{
_0xF1D9 =string.char(83,116,121,108,101,115,32,38,32,82,97,99,101,115),
Icon =string.char(122,97,112),
Cards = {
{ _0xF1D9 =string.char(70,105,103,104,116,105,110,103,32,83,116,121,108,101,115), Icon =string.char(122,97,112), Items = {string.char(65,117,116,111,95,83,117,112,101,114,72,117,109,97,110),string.char(65,117,116,111,95,71,111,100,95,72,117,109,97,110),string.char(65,117,116,111,95,72,117,109,97,110),string.char(65,117,116,111,68,101,97,116,104,83,116,101,112),string.char(65,117,116,111,95,69,108,101,99,116,114,105,99,95,67,108,97,119),string.char(65,117,116,111,95,83,104,97,114,107,77,97,110,95,75,97,114,97,116,101),string.char(65,117,116,111,70,105,115,116,68,97,114,107,110,101,115,115),string.char(65,117,116,111,76,97,119,75,97,107),string.char(65,117,116,111,75,105,108,111)} },
{ _0xF1D9 =string.char(82,97,99,101,115,32,38,32,72,97,107,105), Icon =string.char(115,116,97,114), Items = {string.char(65,117,116,111,95,82,97,105,110,98,111,119,95,72,97,107,105),string.char(65,117,116,111,85,110,72,97,107,105),string.char(65,117,116,111,75,101,110,86,84,87,79),string.char(82,97,99,101,67,108,105,99,107,65,117,116,111,118,51),string.char(82,97,99,101,67,108,105,99,107,65,117,116,111,118,52),string.char(65,117,116,111,69,118,111,82,97,99,101),string.char(65,117,116,111,95,77,105,110,107),string.char(65,117,116,111,95,83,107,121,112,105,101,97)} },
},
},
{
_0xF1D9 =string.char(81,117,101,115,116,115),
Icon =string.char(108,105,115,116,45,99,104,101,99,107,115),
Cards = {
{ _0xF1D9 =string.char(81,117,101,115,116,115), Icon =string.char(108,105,115,116,45,99,104,101,99,107,115), Items = {string.char(67,105,116,105,122,101,110,81,117,101,115,116),string.char(66,97,114,116,105,108,111,95,81,117,101,115,116),string.char(65,117,116,111,90,111,117),string.char(68,111,106,111,111),string.char(65,117,116,111,71,101,116,85,115,111,97,112),string.char(65,117,116,111,67,111,108,83,104,97,100),string.char(65,100,100,101,97,108,101,114),string.char(68,117,109,109,121,77,97,110),string.char(67,114,97,102,116,86,77),string.char(75,101,121,115,82,101,110),string.char(65,117,116,111,72,111,108,121,84,111,114,99,104),string.char(65,117,116,111,72,121,116,72,97,108,108,111,119),string.char(65,117,116,111,80,104,111,101,110,105,120,70),string.char(65,117,116,111,95,68,111,110,65,99,99,101,115),string.char(80,114,101,102,117,108,108,121),string.char(65,117,116,111,83,112,97,119,110,67,80),string.char(83,116,97,114,116,69,118,101,110,116),string.char(65,99,99,101,112,116,81,117,101,115,116,67),string.char(65,99,99,101,112,116,81,117,101,115,116,66)} },
{ _0xF1D9 =string.char(65,117,116,111,32,83,116,97,116,115), Icon =string.char(98,97,114,45,99,104,97,114,116,45,50), Items = {string.char(65,117,116,111,95,77,101,108,101,101),string.char(65,117,116,111,95,68,101,102,101,110,115,101),string.char(65,117,116,111,95,83,119,111,114,100),string.char(65,117,116,111,95,71,117,110),string.char(65,117,116,111,95,68,101,118,105,108,70,114,117,105,116)} },
},
},
},
},
{
_0xF1D9 =string.char(85,116,105,108,105,116,121),
Tabs = {
{
_0xF1D9 =string.char(70,105,115,104,105,110,103),
Icon =string.char(102,105,115,104),
Cards = {
{ _0xF1D9 =string.char(70,105,115,104,105,110,103), Icon =string.char(102,105,115,104), Items = {string.char(65,117,116,111,95,70,105,115,104),string.char(65,117,116,111,70,105,115,104,105,110,103),string.char(65,117,116,111,70,105,115,104,83,108,97,112),string.char(65,117,116,111,70,105,115,104,105,110,103,81,117,101,115,116),string.char(65,117,116,111,83,101,108,108,70,105,115,104),string.char(65,117,116,111,66,117,121,66,97,105,116)} },
{ _0xF1D9 =string.char(70,105,115,104,105,110,103,32,83,101,116,116,105,110,103,115), Icon =string.char(115,108,105,100,101,114,115,45,104,111,114,105,122,111,110,116,97,108), Items = {string.char(64,114,111,100),string.char(64,98,97,105,116),string.char(64,102,105,115,104,68,101,108,97,121)} },
},
},
{
_0xF1D9 =string.char(84,101,108,101,112,111,114,116),
Icon =string.char(109,97,112,45,112,105,110),
Cards = {
{ _0xF1D9 =string.char(84,101,108,101,112,111,114,116,115), Icon =string.char(109,97,112,45,112,105,110), Items = {string.char(84,112,76,97,98),string.char(84,80,68,111,111,114),string.char(84,80,78,112,99),string.char(84,80,71,69,65,82),string.char(84,101,108,101,112,111,114,116),string.char(84,119,70,114,117,105,116,115),string.char(84,112,95,76,103,83),string.char(84,112,95,77,97,115,116,101,114,65),string.char(84,80,70,108,111,111,114,49),string.char(84,80,70,108,111,111,114,50),string.char(84,80,70,108,111,111,114,51),string.char(84,80,70,108,111,111,114,52)} },
},
},
{
_0xF1D9 =string.char(77,105,115,99),
Icon =string.char(115,101,116,116,105,110,103,115),
Cards = {
{ _0xF1D9 =string.char(83,101,114,118,101,114), Icon =string.char(115,101,114,118,101,114), Items = {string.char(65,117,116,111,72,111,112,83,101,114,118,101,114),string.char(64,104,111,112,68,101,108,97,121),string.char(83,97,102,101,77,111,100,101),string.char(83,97,102,101,109,111,100,101)} },
{ _0xF1D9 =string.char(79,112,116,105,111,110,115), Icon =string.char(116,111,103,103,108,101,45,114,105,103,104,116), Items = {string.char(64,116,105,109,101),string.char(100,97,121,108,105,103,104,116,78),string.char(87,97,108,107,87,97,116,101,114),string.char(80,111,114,116,97,108,85,110,76,111,99,107),string.char(68,101,115,116,114,111,121,72,105,116),string.char(71,101,116,81,70,97,115,116),string.char(65,105,109,67,97,109),string.char(82,97,110,100,111,109,95,65,117,116,111),string.char(83,101,114,105,97,108,105,116,121),string.char(68,114,111,112,70,114,117,105,116),string.char(73,110,115,116,97,110,99,101,70),string.char(82,101,115,101,116,80,72),string.char(99,97,110)} },
},
},
},
},
}
local function _0xA971(_0x5306)
if type(_0x676D.Section) ==string.char(102,117,110,99,116,105,111,110)then
local _0xE295, _0x4C50 = pcall(_0x676D.Section, _0x676D, { Title = _0x5306, Opened = true })
if _0xE295 and type(_0x4C50) ==string.char(116,97,98,108,101)and type(_0x4C50.Tab) ==string.char(102,117,110,99,116,105,111,110)then
return _0x4C50
end
end
return _0x676D
end
local function _0x829A(_0xCF64, title, icon)
local _0xE295, _0x6717 = pcall(_0xCF64.Tab, _0xCF64, { Title = title, Icon = icon })
if not _0xE295 then
_0xE295, _0x6717 = pcall(_0xCF64.Tab, _0xCF64, { Title = title })
end
if not _0xE295 then
error(string.char(84,97,98,32,102,97,105,108,101,100,58,32).. tostring(_0x6717))
end
return _0x6717
end
local function _0x5A88(_0x6717, title, icon)
local _0xEBA3 = {
{ Title = title, Icon = icon, Box = true, Opened = true },
{ Title = title, Box = true, Opened = true },
{ Title = title },
}
for _0xFD54, options in ipairs(_0xEBA3) do
local _0xE295, _0xEE94 = pcall(_0x6717.Section, _0x6717, options)
if _0xE295 and type(_0xEE94) ==string.char(116,97,98,108,101)and type(_0xEE94.Toggle) ==string.char(102,117,110,99,116,105,111,110)then
return _0xEE94
end
end
return _0x6717
end
for _0xFD54, _0x4C50 in ipairs(_0xAD3F) do
local _0xCF64 = _0xA971(_0x4C50.Name)
for _0xFD54, tabInfo in ipairs(_0x4C50.Tabs) do
local _0x6717 = _0x829A(_0xCF64, tabInfo.Name, tabInfo.Icon)
for _0xFD54, cardInfo in ipairs(tabInfo.Cards) do
local _0x5908 = _0x5A88(_0x6717, cardInfo.Name, cardInfo.Icon)
for _0xFD54, item in ipairs(cardInfo.Items) do
if string.sub(item, 1, 1) ==string.char(64)then
local _0x3A43 = _0xF9FE[string.sub(item, 2)]
if _0x3A43 then
_0x3A43(_0x5908)
end
else
_0x589A(_0x5908, _0xD94D[item] or item, _G[item] == true, function(_0xE683)
_G[item] = _0xE683
end, _0x4364[item])
end
end
end
end
end
pcall(function()
_0x2AB0:Notify({ Title =string.char(86,101,121,114,111,110,105,120,32,72,117,98), Content =string.char(66,108,111,120,32,70,114,117,105,116,115,32,109,101,110,117,32,108,111,97,100,101,100), Duration = 4 })
end)
end)
if not _0x78C0 then
warn(string.char(91,86,101,121,114,111,110,105,120,32,85,73,93,32,102,97,105,108,101,100,58,32).. tostring(_0x0C5E))
end
end)