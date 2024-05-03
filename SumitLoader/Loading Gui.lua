local notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/notiflib/main/main"))()

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Sumit Hub", Description = "Wait for loading"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

-- ScreenGui object
local gui = Instance.new("ScreenGui")
gui.Name = "CustomLoader"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 180)
frame.Position = UDim2.new(0.5, -150, 0.9, -280)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = gui

-- UICorner of the frame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Title 
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0.99, 0, 0, 60)
Title.Position = UDim2.new(0.03, 0, 0.10, 0)
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 25
Title.Font = Enum.Font.SourceSansBold
Title.Text = "SumitScripts Hub" -- Change to your script name
Title.Parent = frame

-- Loading bar frame
local loadingBarFrame = Instance.new("Frame")
loadingBarFrame.Size = UDim2.new(0, 0, 0.2, 0)
loadingBarFrame.Position = UDim2.new(0.02, 0, 0.7, 0)
loadingBarFrame.BackgroundColor3 = Color3.new(20, 0, 21)
loadingBarFrame.Parent = frame

-- UICorner of the loading bar frame
local corner_2 = Instance.new("UICorner")
corner_2.CornerRadius = UDim.new(0, 6)
corner_2.Parent = loadingBarFrame

-- Loading text
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(0.95, 0, 0, 30)
loadingText.Position = UDim2.new(0.03, 0, 0.7, 0)
loadingText.BackgroundColor3 = Color3.new(0, 0, 0)
loadingText.BackgroundTransparency = 1
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextSize = 18
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Text = "Loading..."
loadingText.Parent = frame

-- Function to animate the loading bar
function animateLoadingBar()
    local progress = 0

    while progress < 100 do
        progress = progress + 1
        updateProgress(progress)
        wait(0.03) -- Adjust the animation speed as needed
    end

    loadingText.Text = "Successfully Loaded"
  wait(0.5)
  gui:Destroy()

--sctipt here
end

-- Function to update the loading progress
function updateProgress(progress)
    loadingBarFrame.Size = UDim2.new(progress / 105, 0, 0.2, 0)
    loadingText.Text = "Loading: " .. progress .. "%"
end

-- Start the loading animation
spawn("animateLoadingBar")
