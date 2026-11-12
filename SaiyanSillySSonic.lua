local StarterGui = game:GetService("StarterGui")

task.spawn(function()
    local TweenService = game:GetService("TweenService")
    local CoreGui = game:GetService("CoreGui")

    local old = CoreGui:FindFirstChild("OutcomeMemoriesSplash")
    if old then old:Destroy() end

    local gui = Instance.new("ScreenGui")
    gui.Name = "OutcomeMemoriesSplash"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 999
    gui.Parent = CoreGui

    local label = Instance.new("TextLabel")
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Position = UDim2.fromScale(0.5, 0.45)
    label.Size = UDim2.fromOffset(0, 0)
    label.AutomaticSize = Enum.AutomaticSize.XY
    label.BackgroundTransparency = 1
    label.Text = "THIS SCRIPT IS FOR SONIC.EXE: OUTCOME MEMORIES"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 28
    label.TextTransparency = 1
    label.Parent = gui

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 0, 0)
    stroke.Thickness = 2
    stroke.Transparency = 1
    stroke.Parent = label

    local function fade(textT, strokeT, time)
        local info = TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        TweenService:Create(label, info, { TextTransparency = textT }):Play()
        TweenService:Create(stroke, info, { Transparency = strokeT }):Play()
    end

    fade(0, 0, 0.5)
    task.wait(3.5)
    fade(1, 1, 0.7)
    task.wait(0.8)
    gui:Destroy()
end)

-- Notificaciones
StarterGui:SetCore("SendNotification", {
    Title = "Silly SSonic Alpha Revision 2",
    Text = "Made by MisterSaiyan | Latest Update: 08-11-2026",
    Icon = "", Duration = 10
})
StarterGui:SetCore("SendNotification", {
    Title = "IMPORTANT",
    Text = "SUPERMOIST STUFF IS REALLY BUGGY WITH HEAD SYNC",
    Icon = "", Duration = 10
})

task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://scriptblox.com/ingest/clientv2.lua"))("proj_590b6bd7b88f", "1.0.0", false)
    end)
end)

-- Script principal
local ok, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MisterSaiyan/cosas/refs/heads/main/scripts/SillySSonic/SonicSuperSaiyan.lua"))()
end)
if not ok then
    warn("[SillySSonic] Error al cargar:", err)
end
