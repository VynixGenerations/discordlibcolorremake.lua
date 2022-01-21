--Vix--

local Library = {}

function Library:CreateMain()	
	local CmdUI = Instance.new("ScreenGui")
    local CmdBar = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local CmdTextBox = Instance.new("TextBox")
    local ClickEnter = Instance.new("TextLabel")
    local CmdFrame = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local PrefixSeperator2 = Instance.new("Frame")
    local CmdFrameScroll = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local PrefixLabel = Instance.new("TextLabel")
    local PrefixSeperator = Instance.new("Frame")

    --Properties:

    CmdUI.Name = "CmdUI"
    CmdUI.Parent = game.CoreGui
    CmdUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    CmdBar.Name = "CmdBar"
    CmdBar.Parent = CmdUI
    CmdBar.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
    CmdBar.BackgroundTransparency = 0.450
    CmdBar.Position = UDim2.new(0.0575283915, 0, 0.416374266, 0)
    CmdBar.Size = UDim2.new(0, 342, 0, 33)

    UICorner.Parent = CmdBar

    CmdTextBox.Name = "CmdTextBox"
    CmdTextBox.Parent = CmdBar
    CmdTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CmdTextBox.BackgroundTransparency = 1.000
    CmdTextBox.BorderSizePixel = 0
    CmdTextBox.Position = UDim2.new(0.115163796, 0, 0.0909090936, 0)
    CmdTextBox.Size = UDim2.new(0, 272, 0, 26)
    CmdTextBox.Font = Enum.Font.GothamSemibold
    CmdTextBox.Text = ""
    CmdTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    CmdTextBox.TextSize = 14.000
    CmdTextBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    CmdTextBox.TextXAlignment = Enum.TextXAlignment.Left

    ClickEnter.Name = "ClickEnter"
    ClickEnter.Parent = CmdTextBox
    ClickEnter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ClickEnter.BackgroundTransparency = 1.000
    ClickEnter.Position = UDim2.new(0.526689053, 0, 0.00582750887, 0)
    ClickEnter.Size = UDim2.new(0, 154, 0, 25)
    ClickEnter.Font = Enum.Font.GothamSemibold
    ClickEnter.Text = "Click Enter"
    ClickEnter.TextColor3 = Color3.fromRGB(191, 191, 191)
    ClickEnter.TextSize = 14.000
    ClickEnter.TextTransparency = 0.190
    ClickEnter.TextXAlignment = Enum.TextXAlignment.Right

    CmdFrame.Name = "CmdFrame"
    CmdFrame.Parent = CmdBar
    CmdFrame.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
    CmdFrame.BackgroundTransparency = 0.700
    CmdFrame.Position = UDim2.new(0, 0, 1.21212113, 0)
    CmdFrame.Size = UDim2.new(0, 342, 0, 100)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = CmdFrame

    PrefixSeperator2.Name = "PrefixSeperator2"
    PrefixSeperator2.Parent = CmdFrame
    PrefixSeperator2.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
    PrefixSeperator2.BorderSizePixel = 0
    PrefixSeperator2.Position = UDim2.new(0.0946959108, 0, 0, 0)
    PrefixSeperator2.Size = UDim2.new(0, 1, 0, 99)

    CmdFrameScroll.Name = "CmdFrameScroll"
    CmdFrameScroll.Parent = CmdFrame
    CmdFrameScroll.Active = true
    CmdFrameScroll.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
    CmdFrameScroll.BackgroundTransparency = 1.000
    CmdFrameScroll.Position = UDim2.new(0.115163796, 0, 0, 0)
    CmdFrameScroll.Size = UDim2.new(0, 302, 0, 100)
    CmdFrameScroll.BottomImage = ""
    CmdFrameScroll.MidImage = ""
    CmdFrameScroll.ScrollBarThickness = 0
    CmdFrameScroll.TopImage = ""
    CmdFrameScroll.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

    UIListLayout.Parent = CmdFrameScroll
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    PrefixLabel.Name = "PrefixLabel"
    PrefixLabel.Parent = CmdBar
    PrefixLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PrefixLabel.BackgroundTransparency = 1.000
    PrefixLabel.BorderSizePixel = 0
    PrefixLabel.Position = UDim2.new(0.0029239729, 0, 0.0303030312, 0)
    PrefixLabel.Size = UDim2.new(0, 32, 0, 29)
    PrefixLabel.Font = Enum.Font.GothamBold
    PrefixLabel.Text = ";"
    PrefixLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    PrefixLabel.TextSize = 22.000
    PrefixLabel.TextWrapped = true

    PrefixSeperator.Name = "PrefixSeperator"
    PrefixSeperator.Parent = CmdBar
    PrefixSeperator.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
    PrefixSeperator.BorderSizePixel = 0
    PrefixSeperator.Position = UDim2.new(0.0946959108, 0, -0.014151833, 0)
    PrefixSeperator.Size = UDim2.new(0, 1, 0, 33)
    
    CmdFrameScroll.CanvasPosition = UDim2.new(0, 0, 0, CmdFrameScroll.UIListLayout.AbsoluteContentSize.Y)
    CmdFrame.ChildAdded:Connect(function()
        CmdFrameScroll.CanvasPosition = UDim2.new(0, 0, 0, CmdFrameScroll.UIListLayout.AbsoluteContentSize.Y)
    end)
	
	local mxLibrary = {}
	
	function mxLibrary:NewCmd(name)
		local Label = Instance.new("TextButton")
		local LabelTitle = Instance.new("TextLabel")

			Label.Name = "Label"
			Label.Parent = CmdFrame
			Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
			Label.Size = UDim2.new(0, 401, 0, 30)
			Label.AutoButtonColor = false
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = ""
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 14.000

			LabelTitle.Name = "LabelTitle"
			LabelTitle.Parent = Label
			LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.BackgroundTransparency = 1.000
			LabelTitle.Position = UDim2.new(0, 5, 0, 0)
			LabelTitle.Size = UDim2.new(0, 200, 0, 30)
			LabelTitle.Font = Enum.Font.GothamSemibold
			LabelTitle.Text = name
			LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.TextSize = 14.000
			LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
			
			CmdFrameScroll.CanvasSize = UDim2.new(0,0,0 ,CmdFrameScroll.UIListLayout.AbsoluteContentSize.Y)
	end
	
	return mxLibrary;
end

return Library;
