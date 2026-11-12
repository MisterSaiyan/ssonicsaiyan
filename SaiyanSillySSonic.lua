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


	local CoreGui = game:GetService("CoreGui")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	if CoreGui:FindFirstChild("SaiyanUpdateNotice") then
		CoreGui.SaiyanUpdateNotice:Destroy()
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "SSonicMenu"
	screenGui.IgnoreGuiInset = true
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = CoreGui

	local frame = Instance.new("Frame")
	frame.Name = "Frame"
	frame.Size = UDim2.new(0, 700, 0, 500)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.BackgroundColor3 = Color3.fromRGB(38, 40, 48)
	frame.BorderColor3 = Color3.fromRGB(75, 82, 100)
	frame.BorderSizePixel = 0
	frame.Parent = screenGui

	local uiCorner = Instance.new("UICorner")
	uiCorner.CornerRadius = UDim.new(0, 12)
	uiCorner.Parent = frame

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Color = Color3.fromRGB(112, 126, 160)
	uiStroke.Thickness = 1.5
	uiStroke.Parent = frame

	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Size = UDim2.new(0, 68, 0, 68)
	imageLabel.Position = UDim2.new(0, 24, 0, 20)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = "rbxassetid://10386102032"
	imageLabel.ScaleType = Enum.ScaleType.Fit
	imageLabel.Parent = frame

	local titleLabel = Instance.new("TextLabel")
	titleLabel.Size = UDim2.new(1, -120, 0, 42)
	titleLabel.Position = UDim2.new(0, 108, 0, 24)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Text = "Silly SSonic  ·  Version Selector"
	titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	titleLabel.TextSize = 27
	titleLabel.Font = Enum.Font.GothamBold
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Parent = frame

	local subtitleLabel = Instance.new("TextLabel")
	subtitleLabel.Size = UDim2.new(1, -120, 0, 24)
	subtitleLabel.Position = UDim2.new(0, 109, 0, 62)
	subtitleLabel.BackgroundTransparency = 1
	subtitleLabel.Text = "Select a version to continue"
	subtitleLabel.TextColor3 = Color3.fromRGB(176, 184, 202)
	subtitleLabel.TextSize = 14
	subtitleLabel.Font = Enum.Font.Gotham
	subtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtitleLabel.Parent = frame

	local divider = Instance.new("Frame")
	divider.Size = UDim2.new(1, -48, 0, 1)
	divider.Position = UDim2.new(0, 24, 0, 105)
	divider.BackgroundColor3 = Color3.fromRGB(75, 82, 100)
	divider.BorderSizePixel = 0
	divider.Parent = frame

	local CurrentVersion = Instance.new("TextButton")
	CurrentVersion.Name = "Base Game"
	CurrentVersion.Size = UDim2.new(0, 205, 0, 52)
	CurrentVersion.Position = UDim2.new(0, 30, 0, 142)
	CurrentVersion.BackgroundColor3 = Color3.fromRGB(76, 112, 190)
	CurrentVersion.Text = "Base Game  ·  0.2"
	CurrentVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
	CurrentVersion.TextSize = 15
	CurrentVersion.Font = Enum.Font.GothamBold
	CurrentVersion.AutoButtonColor = true
	CurrentVersion.BorderSizePixel = 0
	CurrentVersion.Parent = frame

	local currentCorner = Instance.new("UICorner")
	currentCorner.CornerRadius = UDim.new(0, 8)
	currentCorner.Parent = CurrentVersion

	local SobbeVersion = Instance.new("TextButton")
	SobbeVersion.Name = "Sobbe"
	SobbeVersion.Size = UDim2.new(0, 205, 0, 52)
	SobbeVersion.Position = UDim2.new(1, -235, 0, 142)
	SobbeVersion.BackgroundColor3 = Color3.fromRGB(84, 88, 105)
	SobbeVersion.Text = "Sobbe  ·  0.1A"
	SobbeVersion.TextColor3 = Color3.fromRGB(255, 255, 255)
	SobbeVersion.TextSize = 15
	SobbeVersion.Font = Enum.Font.GothamBold
	SobbeVersion.AutoButtonColor = true
	SobbeVersion.BorderSizePixel = 0
	SobbeVersion.Parent = frame

	local sobbeCorner = Instance.new("UICorner")
	sobbeCorner.CornerRadius = UDim.new(0, 8)
	sobbeCorner.Parent = SobbeVersion

	local infoLabel = Instance.new("TextLabel")
	infoLabel.Size = UDim2.new(1, -60, 0, 54)
	infoLabel.Position = UDim2.new(0, 30, 0, 210)
	infoLabel.BackgroundTransparency = 1
	infoLabel.Text = "Choose the version that matches your game. Due to 0.1A's Nature, i've decided to split the script in two versions"
	infoLabel.TextColor3 = Color3.fromRGB(190, 196, 210)
	infoLabel.TextSize = 13
	infoLabel.TextWrapped = true
	infoLabel.TextXAlignment = Enum.TextXAlignment.Left
	infoLabel.TextYAlignment = Enum.TextYAlignment.Top
	infoLabel.Font = Enum.Font.Gotham
	infoLabel.Parent = frame

	local closeButton = Instance.new("TextButton")
	closeButton.Name = "Close"
	closeButton.Size = UDim2.new(0, 120, 0, 36)
	closeButton.AnchorPoint = Vector2.new(0.5, 0)
	closeButton.Position = UDim2.new(0.5, 0, 1, -52)
	closeButton.BackgroundColor3 = Color3.fromRGB(52, 55, 66)
	closeButton.Text = "Close"
	closeButton.TextColor3 = Color3.fromRGB(220, 224, 234)
	closeButton.TextSize = 14
	closeButton.Font = Enum.Font.GothamSemibold
	closeButton.AutoButtonColor = true
	closeButton.BorderSizePixel = 0
	closeButton.Parent = frame

	local closeButtonCorner = Instance.new("UICorner")
	closeButtonCorner.CornerRadius = UDim.new(0, 8)
	closeButtonCorner.Parent = closeButton

	local function executeVersion(url)
		screenGui:Destroy()

		task.spawn(function()
			local ok, source = pcall(function()
				return game:HttpGet(url)
			end)
			if not ok then
				warn("[Silly SSonic] No se pudo descargar el script:", source)
				return
			end

			local compileError
			local chunk
			if type(loadstring) ~= "function" then
				warn("[Silly SSonic] loadstring no está disponible en este entorno")
				return
			end

			chunk, compileError = loadstring(source)
			if not chunk then
				warn("[Silly SSonic] Error al compilar el script:", compileError)
				return
			end

			local ran, runtimeError = pcall(chunk)
			if not ran then
				warn("[Silly SSonic] Error al ejecutar el script:", runtimeError)
			end
		end)
	end

	local function executeSobbeVersion()
		screenGui:Destroy()

		local function executeScriptAsync(label, url)
			task.spawn(function()
				local ok, err = pcall(function()
					local source = game:HttpGet(url)
					local chunk, compileError = loadstring(source)
					if not chunk then
						error(compileError)
					end
					chunk()
				end)

				if not ok then
					warn("[Silly SSonic][" .. label .. "] Error al ejecutar el script:", err)
				end
			end)
		end

		executeScriptAsync(
			"0.1A",
			"https://raw.githubusercontent.com/MisterSaiyan/cosas/refs/heads/main/scripts/SillySSonic/SonicSuperSaiyan0.1a.lua"
		)

		task.spawn(function()
			game.StarterGui:SetCore("SendNotification", {
				Title = "Silly SSonic",
				Text = "Made by MisterSaiyan | Head sync comes disabled by default, enable it if you use head cosmetics",
				Icon = "",
				Duration = 10
			})
			game.StarterGui:SetCore("SendNotification", {
				Title = "Version Check",
				Text = "This is intended for 0.1A (Sobbe's Copy)",
				Icon = "",
				Duration = 10
			})
		end)
	end

	CurrentVersion.MouseButton1Click:Connect(function()
		executeVersion("https://raw.githubusercontent.com/MisterSaiyan/cosas/refs/heads/main/scripts/SillySSonic/SonicSuperSaiyan.lua")
	end)

	SobbeVersion.MouseButton1Click:Connect(function()
		executeSobbeVersion()
	end)

	closeButton.MouseButton1Click:Connect(function()
		screenGui:Destroy()
	end)

--
