if game.PlaceId == 11978447465 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "UtilityHub | [2x⭐🍀UPD 6] Anime Rising Fighting", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

    local Tab = Window:MakeTab({
        Name = "Home",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    

    local Section2 = Window:MakeTab({
        Name = "Auto Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local OpWindow = Window:MakeTab({
        Name = "Op Shit",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    OpWindow:AddButton({
        Name = "Op Stats (MUST HAVE UNUSED CODES)",
        Callback = function()
           local codesModule = require(game.ReplicatedStorage.Modules.Codes)

local codes = {}
for i,v in pairs(codesModule) do
    table.insert(codes, i)
 end


local function give(reward, amount, code)
    local args = {
    [1] = "Code",
    [2] = {
        ["Value"] = amount,
        ["Reward"] = reward,
        ["RewardMessage"] = "You + 5 passive crystals",
        ["Code"] = code
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Server"):FireServer(unpack(args))
end
local bignumber = 1000000000000000000000000000000000000000000000000000000000000000000000000
    give("Essence", 46, codes[1])
    give("Power", bignumber, codes[2])
    give("Coins", bignumber, codes[3])
    give("Luck", bignumber, codes[4])
    give("Cards", bignumber, codes[5])
    give("Trials", bignumber, codes[6])
    give("Cards", bignumber, codes[7])
     give("Level", bignumber, codes[8])
          end    
    })

local TargetName = ""

    Section2:AddToggle({
	Name = "Autofarm",
	Default = false,
	Callback = function(Value)
    _G.TOGGLE = Value

		local attacking = false

local distance = 30

local player = game.Players.LocalPlayer
local target

local function run(v)
local character = player.Character or player.CharacterAdded:Wait()

local hrp = character:WaitForChild("HumanoidRootPart")
local npcs = workspace.Game.NPC:GetChildren()[1]:GetChildren()


   if not _G.TOGGLE then attacking = false return end attacking = true  repeat wait()
hrp.CFrame = target.HumanoidRootPart.CFrame*CFrame.new(0, 0, 3)
game:GetService("ReplicatedStorage").Server:FireServer(table.unpack({ [1] = "Punch",    [2] = v,}))


if (v.HumanoidRootPart.Position - hrp.Position).Magnitude > distance or tonumber(target:GetAttributes()["Health"]) <= 0 then
    attacking = false
    
break
end

until _G.TOGGLE == false
end

repeat wait(.3)
local character = player.Character or player.CharacterAdded:Wait()

local hrp = character:WaitForChild("HumanoidRootPart")
local npcs = workspace.Game.NPC:GetChildren()[1]:GetChildren()



for i,v in pairs(npcs) do
    if _G.TOGGLE == false then break end
        if v.Name == TargetName then
target = v
hrp.CFrame = target.HumanoidRootPart.CFrame*CFrame.new(0, 0, 3)
run(v)
        end
    end

until _G.TOGGLE == false
	end    
})

local function getEnemies()
    local enemyNames = {}
    for i,v in pairs(workspace.Game.NPC:GetChildren()[1]:GetChildren()) do

        if not table.find(enemyNames, v.Name) then

            table.insert(enemyNames, v.Name)

        end
    end
    return enemyNames
end

local dropdown = Section2:AddDropdown({
	Name = "Dropdown",
	Default = "1",
	Options = getEnemies(),
	Callback = function(Value)
    TargetName = Value
	end    
})
Section2:AddButton({
	Name = "Refresh List",
	Callback = function()

      		dropdown:Refresh(getEnemies(), true)
  	end    
})
    Tab:AddParagraph("UtilityHub -N- PLAY-","Sand Dog#5240 / ! Sunn#5342")

    Tab:AddButton({
        Name = "UtilityHub Discord Server Copy to Clipboard:",
        Callback = function()
            setclipboard("discord.gg/wFYeV7wnD3")
          end    
    })

    Tab:AddButton({
        Name = "Destroy Gui",
        Callback = function()
            OrionLib:Destroy()
          end    
    })

    OrionLib:MakeNotification({
        Name = "UtilityHub N- PLAY-",
        Content = "Credits: Sand Dog / ! Sunn",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
OrionLib:Init()   





elseif game.PlaceId == 13284033561 then

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "UtilityHub | Fishing Frenzy Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    local Home = Window:MakeTab({
        Name = "Home",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section1 = Window:MakeTab({
        Name = "Auto Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    Home:AddParagraph("UtilityHub -N- PLAY-","Sand Dog#5240 / ! Sunn#5342")

    Home:AddButton({
        Name = "UtilityHub Discord Server Copy to Clipboard:",
        Callback = function()
            setclipboard("discord.gg/wFYeV7wnD3")
          end    
    })

    Home:AddButton({
        Name = "Destroy Gui",
        Callback = function()
            OrionLib:Destroy()
          end    
    })

    OrionLib:MakeNotification({
        Name = "UtilityHub N- PLAY-",
        Content = "Credits: Sand Dog / ! Sunn",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    
    

    Section1:AddDropdown({
        Name = "Selete Zone To Farm",
        Default = "1",
        Options = {"1", "2"},
        Callback = function(Value)
            print(Value)
        end    
    })
    

    Section1:AddToggle({
        Name = "Auto Fish!",
        Default = false,
        Callback = function(v)
            _G.AutoFish = v

            while _G.AutoFish == true do

                local Remote = Instance.new("RemoteEvent").FireServer;

                local A_1 = "Reel"
                Remote(game:GetService("ReplicatedStorage").Remotes.Rod, A_1)
                task.wait()

                
                local Remote2 = Instance.new("RemoteEvent").FireServer;

                local ohString1 = "Cast"
                local ohVector32 = Vector3.new(-105.57073974609375, 8.82790756225586, 325.18109130859375)
                local ohString3 = "Grassy"
                
                Remote2(game:GetService("ReplicatedStorage").Remotes.Rod, ohString1, ohVector32, ohString3)
                task.wait()
            end
        end    
    })

    Section1:AddToggle({
        Name = "Auto Train!",
        Default = false,
        Callback = function(v)
            _G.AutoTrain = v

            while _G.AutoTrain == true do

                local Remote = Instance.new("RemoteEvent").FireServer;

                local A_1 = "Train"
                local A_2 = game:GetService("Workspace").Training.Grassy.Hole
                Remote(game:GetService("ReplicatedStorage").Remotes.Train, A_1, A_2)
                Remote(game:GetService("ReplicatedStorage").Remotes.Train, A_1, A_2)
                Remote(game:GetService("ReplicatedStorage").Remotes.Train, A_1, A_2)
                Remote(game:GetService("ReplicatedStorage").Remotes.Train, A_1, A_2)
                task.wait()
        end 
    end
    })
end
