-- AN EXAMPLE OF HOW YOU CAN MAKE A CONFIG!
-- Execute this in ur executor and see what happens!
shared.RavenB4Started = true -- REQUIRED!!!!!!
shared.RavenConfigName = 'Default Config' --Whatever your Config name is!
shared.WaterMark = "Random Config Name"
shared.WaterMarkColor = Color3.fromRGB(255,255,255)

local RavenConfig = loadstring(game:HttpGet('https://github.com/COOLROBOLOS/Raven-B4-Config-Support'))()

shared:createnotification("Config Support Loaded!",2,"Config",0.5)

--Tab = RavenConfig:CreateWindow("Name",Position,"IconId")

ModuleTest1 = Combat:CreateToggle({
    Name = "Test",
    Callback = function(Callback) 
        print(Callback)
end})
ModuleTest1:CreateInfo("Nice Test Button you got here!")
Blatant:CreateToggle({
    Name = "Test2",
    Callback = function(Callback) 
        print(Callback)
    end
})
ModuleTest2 = Render:CreateToggle({
    Name = "Test2",
    Callback = function(Callback) 
        print(Callback)
    end
})
ModuleTest2:CreateInfo("What's up?")
ModuleTest2:CreateSlider({
    Name = "Test3",
    Default = 10, -- works only when its the Player first time injecting Raven/Config, else the Ravens SaveSystem takes over!
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        print(Callback)
    end
})
FinalModule = Utility:CreateToggle({
    Name = "Final",
    StartingState = true,
    Callback = function(Callback) 
        print(Callback)
    end
})
FinalModule:CreateToggle({
    Name = "Final Mini Button",
    Callback = function(Callback) 
    print(Callback)
end})
shared.RavenB4Completed = true --- REQUIRED!!!!
