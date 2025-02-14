# Raven B4 UI Library
**Most Powerful & Intuitive Roblox UI Library Customization**  

![Raven B4 Banner](https://github.com/Near-B4/RavenB4/assets/172177784/532ad849-8722-42fa-96af-eb277d6d3110)  

---

## ✨ Features  
- **Tabs & Modules**: Organize settings into categories like Combat, Render, Utility, or custom tabs.  
- **Interactive Elements**: Toggles, sliders, info cards, and more.  
- **SaveSystem**: Automatically persists user preferences across sessions.  
- **Custom Watermark**: Brand your UI with a personalized watermark.  
- **Notifications**: Display alerts with customizable messages and animations.  
- **Extensible Design**: Future updates will include color pickers, dropdowns, and more!  

---

## 🚀 Getting Started  

### **PLoad Raven B4**  
Include this loadstring at the start of your script to initialize Raven B4:  
```lua  
loadstring(game:HttpGet('https://raw.githubusercontent.com/Near-B4/Raven-B4-For-Roblox/main/Raven%20B4%20Loader'))()  
```  
⚠️ **Critical**: `The Loadstring` must be set to `at the start` so it loads properly.  

---

## 🛠️ Configuration Guide  

### **1. Custom Configuration Naming**  
Set a unique name for your config file (optional):  
```lua  
shared.RavenConfigName = "My Awesome Config"  -- Place this ABOVE the loadstring  
-- Default: "Default Config" or "Gamename" file if unspecified  
```  

### **2. Custom Watermark**  
Add a branded watermark to the UI:  
```lua  
shared.WaterMark = "My Custom Text"-- Watermark text  
shared.WaterMarkColor = Color3.fromRGB(255, 0, 0)  -- RGB color (place above loadstring)  
```  

---

## 📂 Building Your UI  

### **Creating a Tab**  
```lua  
local MyTab = RavenConfig:CreateWindow(  
    "Tab Name",   -- String  
    UDim2.new(0, 0, 0, 0),  -- Position (UDim2)  
    "rbxassetid://123456"  -- Optional icon ID  
)  
```  

### **Adding a Module (Toggle)**  
```lua  
local MyToggle = MyTab:CreateToggle({  
    Name = "Enable Feature X",  
    StartingState = false,  -- Initial state (only applies on first load)  
    Callback = function(state)  
        print("Toggle state:", state)  
    end  
})  
```  
❗ **Avoid duplicate module names** for proper SaveSystem functionality.  

### **Attaching an Info Card**  
```lua  
MyToggle:CreateInfo("This feature enhances your gameplay!")  -- Supports multi-line text  
```  

### **Nested Mini-Toggle**  
```lua  
MyToggle:CreateToggle({  
    Name = "Sub-Option",  
    StartingState = true,  
    Callback = function(state)  
        -- Your logic here  
    end  
})  
```  

### **Slider Component**  
```lua  
MyTab:CreateSlider({  
    Name = "Intensity Level",  
    Min = 0,  
    Max = 100,  
    Default = 50,  
    Callback = function(value)  
        print("Slider value:", value)  
    end  
})  
```  

---

## 📢 Notifications  
Display contextual alerts to users:  
```lua  
shared:createnotification(  
    "Connection established!",  -- Message  
    5,  -- Duration (seconds)  
    "System Alert",  -- Optional title  
    0.5  -- Optional animation duration  
)  
```  
## 🎨 Array Animations  
Display whatever color you want in a gradient like animation:

```lua
shared.customgradlist = {
	["Rainbow"] = { 0, 360 },
	["Cotton Candy"] = { 250 , 310 }
}
```
The gradient uses a HSV Color System -> hsv(color value, 1, 1)

If you want to use it for yourself, here is a color pick slider https://www.selecolor.com/en/hsv-color-picker/

---

## ❗ Important Notes  
- **SaveSystem**: User preferences automatically override `StartingState` after initial setup.  
- **Discord Community**: Join for updates and support → [Discord Server](https://discord.com/invite/Df45mgTQrr)

---

Crafted with ❤️ by the Raven B4 Team.  
**Happy scripting!** 🦅
