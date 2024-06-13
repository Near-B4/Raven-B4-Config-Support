# Raven B4's Config Support!
### A detailed Documentation about Raven B4's Config Support!

![Raven B4 Background](https://github.com/Near-B4/RavenB4/assets/172177784/532ad849-8722-42fa-96af-eb277d6d3110)
## Features that are currently included:
- Tabs
- Modules
- Info Cards
- Mini Toggles
- Sliders
- Savesystem (Best and Easiest Savesystem by far!)
- Custom Watermark
- More info!

...more features like colorpickers or dropdowns are coming soon aswell!

## Raven B4 Loadstring (REQUIRED)
`REQUIRED` To make your first Raven B4 config, you must firstly link the Raven B4 loader in your script!
```lua
shared.RavenB4Started = true
local RavenConfig = loadstring(game:HttpGet('https://raw.githubusercontent.com/Near-B4/Raven-B4-For-Roblox/main/Raven%20B4%20Loader'))()
```

`shared.RavenB4Started` is very IMPORTANT since it tells Raven B4 that your making a Config. (IF YOU DO NOT HAVE `shared.RavenB4Started` THE CONFIGS WON'T WORK!)


## Creating a Tab
`IMPORTANT` This is only if you want to make your own custom tab, else just use the preloaded Tabs that Raven B4 offers!
```lua
TabName = RavenConfig:CreateWindow("Name",Position,"IconId")

--[[
TabName = As what the Tab is going to be referenced as.
Name = 'string' - The name of the tab.
Icon = 'string' - The icon of the tab.
Position = 'UDim2' - The Position of the tab.
]]
```

## Creating a Module
As Tabs you can either put it as `Combat` `Blatant` `Render` `Utility` `Client` or any custom Tabs you made!
```lua
Module = Tab:CreateToggle({
    Name = "Name",
    StartingState = false,
    Callback = function(Callback)
end})

--[[
Module = As what the Module is going to be referenced as.
Name = 'string' - The name of the tab.
Callback = 'function' - The function of the button.
StartingState = 'bool' - Sets the State of the Module (Note that this only works when the Player inject Raven B4 for the FIRST TIME, else the SaveSystem takes over!)
]]
```

DON'T HAVE 2 MODULES WITH THE SAME NAME IF YOU WANT IT TO FUNCTION PROPERLY!

## Creating a Info Card
```lua
Module:CreateInfo(Text)

--[[
Text = 'string' - The Text you want to be shown in the Info Card.
]]
```

## Creating a Mini Toggle
```lua
Module:CreateToggle({
    Name = "Name",
    StartingState = false,
    Callback = function(Callback)
end})

--[[
Name = 'string' - The name of the tab.
Callback = 'function' - The function of the button.
StartingState = 'bool' - Sets the State of the Module (Note that this only works when the Player inject Raven B4 for the FIRST TIME, else the SaveSystem takes over!)
]]
```

## Creating a Slider
```lua
Module:CreateSlider({
    Name = "Name",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback)
    end
})

--[[
Name = 'string' - The name of the slider.
Default = 'number' - Sets the State of the Module (Note that this only works when the Player inject Raven B4 for the FIRST TIME, else the SaveSystem takes over!)
Min = 'number' - The minimum value of the slider.
Max - 'number' - The maxium value of the slider.
Callback = 'function' - The function of the slider.
]]
```

## Creating a Notification
```lua
shared:createnotification("Message",Time)
shared:createnotification("Message",Time,Title,Animation)

--[[
Message = 'string' - the message you want to tell the Player.
Time = 'number' - the amount of time you want the Notification to stay.
Title = 'string' - the text that shows up above the Message.
Animation = 'number' - the time it takes for the animation to become visable `tween`
]]
```
## Finishing your Config! (REQUIRED!)
```lua
shared.RavenB4Completed = true
```
Put this at the end of your Code to make Raven B4 save your Config!

# Exclusive Raven B4 features!
These are exclusive to Raven B4 since it adds complex features with a easy way to configure them!

## Custom Folder
```lua
shared.RavenConfigName = "My Config Name"
```
`shared.RavenConfigName` Is what ur Textfile is going to be called, put this above the Loadstring!

If this is left blank, the Name of your Textfile will be called `Default Config`

## Custom WaterMark
```lua
shared.WaterMark = "Random Config Name"
shared.WaterMarkColor = Color3.fromRGB(255,255,255) -- Put any RGB Value you want here!
```
`shared.WaterMark` will make a new module called `Custom Watermark` so you can have your own custom WaterMark!

`shared.WaterMarkColor` explains itself really, just makes the Watermark Color different!

Put these `shared` values above the loadstring for it to function correctly!

## Uninjecting Raven B4
`COMING SOON!`

# Thanks for the Support! ❤️
If you want to get more Updates about Raven B4 then join the Discord - [Discord](https://discord.com/invite/4SpwqN979V) | RAVEN B4 ON🔝
