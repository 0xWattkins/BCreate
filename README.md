# BCreate ─ "Better Create"
Stop using `Instance.new` everytime you want to create a new object, do it all in 1 go with BCreate. Easy to learn and easy to reproduce across multiple projects.
# Usage
Load the script from the repository (for exploits):
```lua
local BCreate = loadstring(game:HttpGet("https://raw.githubusercontent.com/0xWattkins/BCreate/refs/heads/main/source.lua"))()
```
Or if you're in a studio environment, create a ModuleScript and drop the source code inside the module script and then `require` it:
```lua
local BCreate = require("Path/To/BCreate")
```
# Example
An example script that creates a Part with a Decal facing on top:
```lua
local Build = BCreate.Create({
	{1,"Part",{
		Parent = workspace,
		Size = Vector3.new(4,4,4),
		Position = Vector3.new(0,10,0),
		Anchored = true
	}},
	{2,"Decal",{
		Parent = {1},
		Texture = "rbxassetid://123456789",
		Face = "Top"
	}}
})
```
If you wanted to change the properties of any object created, then use `BuildVariable[ObjectOrderInteger]` to find it:
```lua
local Part = Build[1]
Part.Transparency = 1
```
# Credits
Script written by Wattkins, inspiration by Moon.
