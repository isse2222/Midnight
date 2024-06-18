-- Gui to Lua
-- Version: 3.2

-- Instances:

local Tutorial = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Source = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local IEYD = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local EndHub = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

-- Properties:

Tutorial.Name = "Tutorial"
Tutorial.Parent = game.CoreGui
Tutorial.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Tutorial
Main.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.3, 0, 0.3, 0)
Main.Size = UDim2.new(0, 822, 0, 372)

UICorner.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.PermanentMarker
Title.Text = "Midnight"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 64.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_3.Parent = Title

IEYD.Name = "IEYD"
IEYD.Parent = Main
IEYD.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
IEYD.BorderColor3 = Color3.fromRGB(0, 0, 0)
IEYD.BorderSizePixel = 0
IEYD.Position = UDim2.new(0.8, 0, 0, 0)
IEYD.Size = UDim2.new(0.2, 0, 0, 50)
IEYD.Font = Enum.Font.PermanentMarker
IEYD.Text = "Infinite Yield"
IEYD.TextColor3 = Color3.fromRGB(255, 255, 255)
IEYD.TextSize = 32.000

UICorner_4.Parent = IEYD

EndHub.Name = "EndHub"
EndHub.Parent = Main
EndHub.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
EndHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
EndHub.BorderSizePixel = 0
EndHub.Position = UDim2.new(0, 0, 0, 0)
EndHub.Size = UDim2.new(0.2, 0, 0, 50)
EndHub.Font = Enum.Font.PermanentMarker
EndHub.Text = "EndHub"
EndHub.TextColor3 = Color3.fromRGB(255, 255, 255)
EndHub.TextSize = 32.000

UICorner_5.Parent = EndHub

Source.Name = "Source"
Source.Parent = Main
Source.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Source.BorderColor3 = Color3.fromRGB(0, 0, 0)
Source.BorderSizePixel = 0
Source.Position = UDim2.new(0.02, 0, 0.17, 0)
Source.Size = UDim2.new(0.96, 0, 0.66, 0)
Source.Font = Enum.Font.SourceSans
Source.MultiLine = true
Source.Text = ""
Source.TextColor3 = Color3.fromRGB(255, 255, 255)
Source.TextSize = 14.000
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0, 0, 0.85, 0)
Execute.Size = UDim2.new(1, 0, 0, 50)
Execute.Font = Enum.Font.PermanentMarker
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 63.000

UICorner_2.Parent = Execute

-- Scripts:

local function ToggleGuiVisibility()
	Tutorial.Enabled = not Tutorial.Enabled
end

local function MIPOY_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	-- Make the Main frame draggable
	local UserInputService = game:GetService("UserInputService")
	local gui = script.Parent
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)
	
	-- Keybind functionality
	local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.K and not gameProcessed then
			ToggleGuiVisibility()
		end
	end)
end
coroutine.wrap(MIPOY_fake_script)()

local function CEHPQTD_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.Source.Text)()
	end)
end
coroutine.wrap(CEHPQTD_fake_script)()

local function INYZOD_fake_script() -- IEYD.LocalScript 
	local script = Instance.new('LocalScript', IEYD)

	-- Get a reference to the button
	local button = script.Parent
	
	-- Function to run when the button is clicked
	local function onClick()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
	
	-- Connect the onClick function to the MouseButton1Click event of the button
	button.MouseButton1Click:Connect(onClick)
end
coroutine.wrap(INYZOD_fake_script)()

local function CULA_fake_script() -- EndHub.LocalScript 
	local script = Instance.new('LocalScript', EndHub)

	-- Get a reference to the button
	local button = script.Parent
	
	-- Function to run when the button is clicked
	local function onClick()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/isse2222/EndHub/main/EndHub.lua"))()
	end
	
	-- Connect the onClick function to the MouseButton1Click event of the button
	button.MouseButton1Click:Connect(onClick)
end
coroutine.wrap(CULA_fake_script)()
