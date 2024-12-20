task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    task.wait(1.5)
    print("TomTamX | Injected \n discord.gg/tomtamx")
    print("Credit API By Nova")

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "TomTamXNotification"
    
    if syn and syn.protect_gui then
        syn.protect_gui(ScreenGui)
        ScreenGui.Parent = game.CoreGui
    elseif gethui then
        ScreenGui.Parent = gethui()
    else
        ScreenGui.Parent = game.CoreGui
    end

    local NotificationFrame = Instance.new("Frame")
    NotificationFrame.Name = "NotificationFrame"
    NotificationFrame.Size = UDim2.new(0, 320, 0, 95)
    NotificationFrame.Position = UDim2.new(1, 0, 1, -130)
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    NotificationFrame.BackgroundTransparency = 0
    NotificationFrame.BorderSizePixel = 0
    NotificationFrame.Parent = ScreenGui

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = NotificationFrame

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(55, 55, 55)
    UIStroke.Thickness = 1.5
    UIStroke.Parent = NotificationFrame

    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 15)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25))
    })
    UIGradient.Rotation = 45
    UIGradient.Parent = NotificationFrame

    local Icon = Instance.new("ImageLabel")
    Icon.Size = UDim2.new(0, 44, 0, 44)
    Icon.Position = UDim2.new(0, 3, 0, 12)
    Icon.BackgroundTransparency = 1
    Icon.Image = "rbxassetid://132458587966443"
    Icon.ImageColor3 = Color3.fromRGB(114, 137, 218)
    Icon.Parent = NotificationFrame

    local Title = Instance.new("TextLabel")
    Title.Text = title or "TomTamX"
    Title.Size = UDim2.new(1, -50, 0, 20)
    Title.Position = UDim2.new(0, 47, 0, 14)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = NotificationFrame

    local Subtitle = Instance.new("TextLabel")
    Subtitle.Text = subtitle or "💉 Injected Successfully"
    Subtitle.Size = UDim2.new(0, 200, 0, 20)
    Subtitle.Position = UDim2.new(0, 47, 0, 32)
    Subtitle.BackgroundTransparency = 1
    Subtitle.TextColor3 = Color3.fromRGB(95, 95, 95)  -- Discord blue
    Subtitle.TextSize = 12
    Subtitle.Font = Enum.Font.GothamSemibold
    Subtitle.TextXAlignment = Enum.TextXAlignment.Left
    Subtitle.Parent = NotificationFrame

    local Content = Instance.new("TextLabel")
    Content.Text = content or "Made by TomTamX Tech. \n API By Nova"
    Content.Size = UDim2.new(1, -30, 0, 20)
    Content.Position = UDim2.new(0, 15, 0, 60)
    Content.BackgroundTransparency = 1
    Content.TextColor3 = Color3.fromRGB(180, 180, 180)
    Content.TextSize = 13
    Content.Font = Enum.Font.GothamMedium
    Content.TextXAlignment = Enum.TextXAlignment.Left
    Content.TextWrapped = true
    Content.Parent = NotificationFrame

    local AccentLine = Instance.new("Frame")
    AccentLine.Size = UDim2.new(0.9, 0, 0, 2)
    AccentLine.Position = UDim2.new(0.05, 0, 1, -10)
    AccentLine.BackgroundColor3 = Color3.fromRGB(114, 137, 218)  -- Discord blue
    AccentLine.BorderSizePixel = 0
    AccentLine.Parent = NotificationFrame

    local AccentGradient = Instance.new("UIGradient")
    AccentGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 15)),  -- Discord blue
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 10))
    })
    AccentGradient.Parent = AccentLine

    local TweenService = game:GetService("TweenService")

    NotificationFrame.BackgroundTransparency = 1
    Icon.ImageTransparency = 1
    Title.TextTransparency = 1
    Subtitle.TextTransparency = 1
    Content.TextTransparency = 1
    UIStroke.Transparency = 1
    AccentLine.BackgroundTransparency = 1

    -- Animation tweens remain the same
    local slideTween = TweenService:Create(NotificationFrame, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        Position = UDim2.new(1, -340, 1, -130),
        BackgroundTransparency = 0
    })
    
    local fadeInTween = TweenService:Create(UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        Transparency = 0
    })
    
    local iconFadeIn = TweenService:Create(Icon, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        ImageTransparency = 0
    })
    
    local titleFadeIn = TweenService:Create(Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0
    })

    local subtitleFadeIn = TweenService:Create(Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0
    })
    
    local contentFadeIn = TweenService:Create(Content, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0
    })

    local accentFadeIn = TweenService:Create(AccentLine, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        BackgroundTransparency = 0
    })

    local progressTween = TweenService:Create(AccentLine, TweenInfo.new(4, Enum.EasingStyle.Linear), {
        Size = UDim2.new(0, 0, 0, 2),
        Position = UDim2.new(0.05, 0, 1, -10)
    })

    slideTween:Play()
    fadeInTween:Play()
    iconFadeIn:Play()
    titleFadeIn:Play()
    subtitleFadeIn:Play()
    contentFadeIn:Play()
    accentFadeIn:Play()
    progressTween:Play()

    task.wait(4)

    local slideOutTween = TweenService:Create(NotificationFrame, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        Position = UDim2.new(1, 100, 1, -130),
        BackgroundTransparency = 0.8
    })
    
    local fadeOutTween = TweenService:Create(UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        Transparency = 0.8
    })
    
    local iconFadeOut = TweenService:Create(Icon, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        ImageTransparency = 0.8
    })
    
    local titleFadeOut = TweenService:Create(Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0.8
    })

    local subtitleFadeOut = TweenService:Create(Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0.8
    })
    
    local contentFadeOut = TweenService:Create(Content, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        TextTransparency = 0.8
    })

    local accentFadeOut = TweenService:Create(AccentLine, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        BackgroundTransparency = 0.8
    })

    slideOutTween:Play()
    fadeOutTween:Play()
    iconFadeOut:Play()
    titleFadeOut:Play()
    subtitleFadeOut:Play()
    contentFadeOut:Play()
    accentFadeOut:Play()

    task.wait(0.8)
    ScreenGui:Destroy()
end)
