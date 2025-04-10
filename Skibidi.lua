local ui = game:GetService "CoreGui":FindFirstChild "VVV"
local toggk = game:GetService"CoreGui":FindFirstChild"Toggle"
if ui then
    ui:Destroy()
end
if toggk then
    toggk:Destroy()
end
Config = {
	Logo = "rbxassetid://119130179654361",
	TabColor = Color3.fromRGB(15, 15, 15),
    StrokeColor = Color3.fromRGB(23, 23, 23),
    Other = Color3.fromRGB(2, 182, 255),
	SizeLib = UDim2.new(0, 550, 0, 330)
}
		local Toggle = Instance.new"ScreenGui"
		local Frames = Instance.new"ImageButton"
    	local DropShadow = Instance.new "ImageLabel"
		local cn = Instance.new("UICorner")
		Toggle.Name = "Toggle"
		Toggle.Parent = game.CoreGui
		Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Global
		Frames.Name = "c4"
		Frames.Parent = Toggle
		Frames.Draggable = true
		Frames.AnchorPoint = Vector2.new(0.5, 0.5)
		Frames.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		Frames.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frames.BorderSizePixel = 0
		Frames.Position = UDim2.new(0.886243403, 0, 0.194968551, 0)
    	Frames.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
		Frames.Image = Config.Logo
		Frames.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Frames.ZIndex = 67
		cn.Parent = Frames
		cn.CornerRadius = UDim.new(0, 15)
		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Frames
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 47, 1, 47)
		DropShadow.ZIndex = 66
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.5
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		Frames.MouseButton1Down:Connect(function()
            local tf = game:GetService("CoreGui").VVV:FindFirstChild("Main")
			if tf.Visible == false then
                    tf.Visible = true
                elseif tf.Visible == true then
				tf.Visible = false
			end
		end)

_G.Color = Config.StrokeColor
_G.Color2 = Config.Other
font = Enum.Font.GothamBold
colorlib = Config.TabColor
local h = game:GetService"UserInputService"
local j = game:GetService"TweenService"

local function bg(bh, a0)
	local bi = nil
	local bj = nil
	local bk = nil
	local bl = nil

	local function bm(bn)
		local bo = bn.Position - bk
		local bp = UDim2.new(bl.X.Scale, bl.X.Offset + bo.X, bl.Y.Scale, bl.Y.Offset + bo.Y)
		local bq = j:Create(a0, TweenInfo.new(0.15), { Position = bp })
		bq:Play()
	end

	bh.InputBegan:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseButton1 or bn.UserInputType == Enum.UserInputType.Touch then
			bi = true
			bk = bn.Position
			bl = a0.Position
			bn.Changed:Connect(function()
				if bn.UserInputState == Enum.UserInputState.End then bi = false end
			end)
		end
	end)
	bh.InputChanged:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseMovement or bn.UserInputType == Enum.UserInputType.Touch then bj = bn end
	end)
	h.InputChanged:Connect(function(bn) if bn == bj and bi then bm(bn) end end)
end

local bm = {}

function bm:Window(text, des, bs)
    local s = Instance.new "UICorner"
    local bt = {}
    local bu = false
    local bv = false
    local bw = ""
    local bs = bs or Enum.KeyCode.F1
    local bx = string.gsub(tostring(bs), "Enum.KeyCode.", "")
    local by = Instance.new "ScreenGui"
    by.Name = "VVV"
    by.Parent = game:GetService "CoreGui"
    by.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local bz = Instance.new "Frame"
    bz.Name = "Main"
    bz.Parent = by
    bz.ClipsDescendants = true
    bz.AnchorPoint = Vector2.new(0.5, 0.5)
    bz.BackgroundColor3 = colorlib
    bz.BackgroundTransparency = 0
    bz.Position = UDim2.new(0.5, 0, 0.5, 0)
    bz.Size = UDim2.new(0, 0, 0, 0)
    bz:TweenSize(Config.SizeLib, "Out", "Quad", 0.4, true)
    local SK = Instance.new("UIStroke")
    SK.Parent = bz
    SK.Thickness = 3
    SK.Color = Color3.fromRGB(25, 25, 25)
    local bB = Instance.new "UICorner"
    bB.Name = "MCNR"
    bB.Parent = bz
    bB.CornerRadius = UDim.new(0, 7)
    local bC = Instance.new "Frame"
    bC.Name = "Top"
    bC.Parent = bz
    bC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bC.Size = UDim2.new(0, 556, 0, 30)
    bC.BackgroundTransparency = 0.85
    local bD = Instance.new "UICorner"
    bD.Name = "TCNR"
    bD.Parent = bC
    bD.CornerRadius = UDim.new(0, 5)
    local bE = Instance.new "ImageLabel"
    bE.Name = "Logo"
    bE.Parent = bC
    bE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bE.BackgroundTransparency = 1
    bE.Position = UDim2.new(0, 8, 0, 3)
    bE.Size = UDim2.new(0, 25, 0, 25)
    bE.Image = Config.Logo
    local bu = Instance.new "UICorner"
    bu.Parent = bE
    bu.CornerRadius = UDim.new(0, 10)
    local bF = Instance.new "Frame"
    bF.Name = "Tab"
    bF.Parent = bz
    bF.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    bF.Position = UDim2.new(0, 1, 0, 35)
    bF.Size = UDim2.new(0, 0, 0, 0)
	bF.Transparency = 1
    local bG = Instance.new "UIListLayout"
    bG.Name = "TabCorner"
    bG.Parent = bF
    bG.SortOrder = Enum.SortOrder.LayoutOrder
    bG.Padding = UDim.new(0, 15)
    local bA = Instance.new "UIStroke"
    local bH = Instance.new "ScrollingFrame"
    local bI = Instance.new "UICorner"
    bH.Name = "ScrollTab"
    bH.Parent = bF
    bH.Active = true
    bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bH.BackgroundTransparency = 1
    bH.Size = UDim2.new(0, 140, 0, 1000)
    bH.CanvasSize = UDim2.new(0, 0, 0, 0)
    bH.ScrollBarThickness = 0
    local bJ = Instance.new "UIListLayout"
    bJ.Name = "PLL"
    bJ.Parent = bH
    bJ.SortOrder = Enum.SortOrder.LayoutOrder
    bJ.Padding = UDim.new(0, 5)
    local bK = Instance.new "UIPadding"
    bK.Name = "PPD"
    bK.Parent = bH
    bK.PaddingLeft = UDim.new(0, 9)
    bK.PaddingTop = UDim.new(0, 2)
    local bA = Instance.new "UIStroke"
    local bL = Instance.new "Frame"
    local bM = Instance.new "TextLabel"
    local bN = Instance.new "Frame"
    bN.Name = "Page"
    bN.Parent = bz
    bN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bN.BackgroundTransparency = 1
    bN.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
    bN.Size = UDim2.new(0, 410, 0, 308)
    local bO = Instance.new "UICorner"
    bO.Parent = bN
    bO.CornerRadius = UDim.new(0, 3)
    local bP = Instance.new "Frame"
    bP.Name = "MainPage"
    bP.Parent = bN
    bP.ClipsDescendants = true
    bP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bP.BackgroundTransparency = 1
    bP.Size = UDim2.new(0, 410, 0, 308)
    local bQ = Instance.new "Folder"
    bQ.Name = "PageList"
    bQ.Parent = bP
    local bR = Instance.new "UIPageLayout"
    bR.Parent = bQ
    bR.SortOrder = Enum.SortOrder.LayoutOrder
    bR.EasingDirection = Enum.EasingDirection.InOut
    bR.EasingStyle = Enum.EasingStyle.Quad
    bR.FillDirection = Enum.FillDirection.Vertical
    bR.Padding = UDim.new(0, 10)
    bR.TweenTime = 0.4
    bR.GamepadInputEnabled = false
    bR.ScrollWheelInputEnabled = false
    bR.TouchInputEnabled = false
    bg(bC, bz)
    h.InputBegan:Connect(function(bn)
        if bn.KeyCode == Enum.KeyCode.F1 then
            if bu == false then
                bu = true
                bz:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
                bz.Visible = false
            else
                bu = false
                bz:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.5, true)
                bz.Visible = true
            end
        end
    end)
    bL.Parent = bz
    bL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bL.BackgroundTransparency = 1
    bL.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bL.BorderSizePixel = 0
    bL.Position = UDim2.new(0.1, -150, 0.158805028, -80)

    bM.Parent = bz
    bM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bM.BackgroundTransparency = 1
    bM.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bM.BorderSizePixel = 0
    bM.Position = UDim2.new(0.5, 0, 0, 0)
    bM.AnchorPoint = Vector2.new(0.451, 0)
    bM.Size = UDim2.new(0, 520, 0, 15)
    bM.Font = font
    bM.Text = text
    bM.TextColor3 = Color3.fromRGB(255, 255, 255)
    bM.TextSize = 15
    bM.TextWrapped = true
    bM.TextXAlignment = Enum.TextXAlignment.Left
    bM.TextYAlignment = Enum.TextYAlignment.Top
    local uu = Instance.new("UIGradient")
    uu.Parent = bM
    uu.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(2, 182, 255)), -- 0% - White
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 47, 128)) -- 100% - Black
    })
    local b0 = Instance.new("TextLabel")
    local b4 = Instance.new("UIGradient")
    b0.Parent = bz
    b0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    b0.BackgroundTransparency = 1
    b0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    b0.BorderSizePixel = 0
    b0.Position = UDim2.new(0.5, 0, 0, 0)
    b0.AnchorPoint = Vector2.new(0.45, 0.1)
    b0.Size = UDim2.new(0, 520, 0, 30)
    b0.Font = font
    b0.Text = des
    b0.TextColor3 = Color3.fromRGB(255, 255, 255)
    b0.TextSize = 12
    b0.TextWrapped = true
    b0.TextXAlignment = Enum.TextXAlignment.Left
    b0.TextYAlignment = Enum.TextYAlignment.Bottom
    b4.Parent = b0
    b4.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), -- 0% - White
        ColorSequenceKeypoint.new(1, Color3.fromRGB(63, 63, 63)) -- 100% - Black
    })

local bS = {}

	function bS:Tab(d, Des, bT)
		local bA = Instance.new"UIStroke"
		local bU = Instance.new"UICorner"
		local bV = Instance.new"TextButton"
		local bW2 = Instance.new("TextLabel")
		local bX = Instance.new"UICorner"
    	local bY = Instance.new "TextLabel"
		local bZ = Instance.new "ImageLabel"
		bV.Parent = bH
		bV.Name = d .. "Server"
		bV.Text = ""
		bV.Font = font
    	bV.TextColor3 = Color3.fromRGB(255, 255, 255)
    	bV.TextSize = 12
    	bV.TextTransparency = 0.5
		bV.BackgroundColor3 = colorlib
    	bV.BackgroundTransparency = 0.5
    	bV.Size = UDim2.new(0, 120, 0, 37)

		bY.Parent = bV
		bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		bY.BackgroundTransparency = 1
		bY.Position = UDim2.new(0, 25, 0, 0)
		bY.Size = UDim2.new(0, 100, 0, 25)
		bY.Font = Enum.Font.GothamSemibold
		bY.Text = d
		bY.TextColor3 = Color3.fromRGB(255, 255, 255)
		bY.TextSize = 15
		bY.TextXAlignment = Enum.TextXAlignment.Left

        bW2.Parent = bV
		bW2.Font = font
		bW2.Text = Des
		bW2.Position = UDim2.new(0, 35, 0, 15)
		bW2.Size = UDim2.new(0, 90, 0, 25)
		bW2.BackgroundTransparency = 1
		bW2.TextSize = 13
		bW2.TextTransparency = 0.5
		bW2.TextColor3 = Color3.fromRGB(255, 255, 255)
		bW2.TextXAlignment = Enum.TextXAlignment.Left
		bW2.TextYAlignment = Enum.TextYAlignment.Center


		bZ.Name = "LogoIDK"
    	bZ.Parent = bV
    	bZ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    	bZ.BackgroundTransparency = 1
    	bZ.Position = UDim2.new(0, 0, 0, 5)
    	bZ.Size = UDim2.new(0, 30, 0, 30)
    	bZ.Image = bT

		bX.CornerRadius = UDim.new(0, 3)
		bX.Parent = bV
		bA.Name = "BtnStroke"
		bA.Parent = bV
		bA.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		bA.Color = colorlib
		bA.LineJoinMode = Enum.LineJoinMode.Round
		bA.Thickness = 2
		bA.Transparency = 0.5
		bA.Enabled = true
		bA.Archivable = true
		local b_ = Instance.new"ScrollingFrame"
		b_.Name = d .. "_Page"
		b_.Parent = bQ
		b_.Active = true
		b_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		b_.BackgroundTransparency = 1
		b_.BorderSizePixel = 0
		b_.Size = UDim2.new(0, 400, 0, 308)
		b_.CanvasSize = UDim2.new(0, 0, 0, 0)
		b_.ScrollBarThickness = 0
		local c0 = Instance.new"UIPadding"
		local c1 = Instance.new"UIListLayout"
		c0.Parent = b_
		c0.PaddingLeft = UDim.new(0, 10)
		c0.PaddingTop = UDim.new(0, 5)
		c1.Padding = UDim.new(0, 12)
		c1.Parent = b_
        c1.SortOrder = Enum.SortOrder.LayoutOrder
		local bW = bV:FindFirstChild("TextLabel") -- ค้นหา TextLabel ที่มีอยู่ใน bV โดยไม่ต้องสร้างใหม่
		if bW then
    	bW.Position = UDim2.new(0, 35, 0, 0)
		bW.Size = UDim2.new(0, 100, 0, 25)
		bW.BackgroundTransparency = 1
		bW.TextColor3 = Color3.fromRGB(255, 255, 255)
        bW.TextSize = 14
        bW.Font = font
		bW.TextXAlignment = Enum.TextXAlignment.Left
		else
   	warn("TextLabel ไม่พบใน bV")
		end
		bV.MouseButton1Click:Connect(function()
			for y, z in next, bH:GetChildren() do
				if z:IsA"TextButton" then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0.5 }):Play()
				end
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
			end
			for y, z in next, bQ:GetChildren() do
				bw = string.gsub(bV.Name, "Server", "") .. "_Page"
				if z.Name == bw then bR:JumpTo(z) end
			end
		end)
		if bv == false then
			for y, z in next, bH:GetChildren() do
				if z:IsA"TextButton" then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0.5 }):Play()
				end
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
			end
			bR:JumpToIndex(1)
			bv = true
		end
		game:GetService"RunService".Stepped:Connect(function()
			pcall(function()
				b_.CanvasSize = UDim2.new(0, 0, 0, c1.AbsoluteContentSize.Y + 20)
				bH.CanvasSize = UDim2.new(0, 0, 0, bJ.AbsoluteContentSize.Y + 20)
			end)
        end)

        local cd = {}

        function cd:Toggle(d, d2, im, ck, ce)
            ck = ck or false
            local cl = ck
            local s = Instance.new "UICorner"
            local r = Instance.new "UIStroke"
            local cf = Instance.new "TextButton"
            local ch = Instance.new "UICorner"
            local bY = Instance.new "TextLabel"
            local bY2 = Instance.new "TextLabel"
            local cm = Instance.new "Frame"
            local cj = Instance.new "UICorner"
            local cn = Instance.new "ImageLabel"
            local co = Instance.new "UICorner"
            local cp = Instance.new "ImageLabel"

            cf.Name = "Toggle"
            cf.Parent = b_
            cf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            cf.Position = UDim2.new(0, 1, 0, 1)
            cf.Size = UDim2.new(0, 387, 0, 120)
            cf.Transparency = 1
            cf.AutoButtonColor = false
            cf.Font = Enum.Font.GothamBold
            cf.Text = ""
            cf.TextColor3 = Color3.fromRGB(0, 0, 0)
            cf.TextSize = 11

            r.Name = "UIStroke"
            r.Parent = cf
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true

            ch.CornerRadius = UDim.new(0, 3)
            ch.Parent = cf

            bY.Parent = cf
            bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY.BackgroundTransparency = 1
            bY.Position = UDim2.new(0, 10, 0, 4)
            bY.Size = UDim2.new(0, 280, 0, 30)
            bY.Font = Enum.Font.GothamBold
            bY.Text = "" .. d
            bY.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY.TextSize = 25
            bY.TextXAlignment = Enum.TextXAlignment.Left

            cp.Name = "ImageLogo"
            cp.Parent = cf
            cp.Position = UDim2.new(0, 305, 0, 15)
            cp.Size = UDim2.new(0, 70, 0, 70)
            cp.Image = im
            cp.BackgroundTransparency = 1

            bY2.Parent = cf
            bY2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY2.BackgroundTransparency = 1
            bY2.Position = UDim2.new(0, 11, 0, 40)
            bY2.Size = UDim2.new(0, 280, 0, 40)
            bY2.Font = Enum.Font.GothamBold
            bY2.Text = "" .. d2
            bY2.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY2.TextSize = 15
            bY2.TextTransparency = 0.5
            bY2.TextXAlignment = Enum.TextXAlignment.Left
            bY2.TextYAlignment = Enum.TextYAlignment.Top
            bY2.TextScaled = true
            task.wait(0.2)
            bY2.TextScaled = false
            cm.Name = "ToggleImage"
            cm.Parent = cf
            cm.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            cm.BackgroundTransparency = 0.8999999762
            cm.Position = UDim2.new(0, 10, 0, 77)
            cm.Size = UDim2.new(0, 35, 0, 35)

            cj.CornerRadius = UDim.new(0, 100)
            cj.Parent = cm

            cn.Name = "Circle"
            cn.Parent = cm
            cn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cn.BackgroundTransparency = 1
            cn.Position = UDim2.new(0, 0, 0, 0)
            cn.Size = UDim2.new(0, 0, 0, 0)
            cn.Image = "http://www.roblox.com/asset/?id=00"
			cn.ImageColor3 = Config.Other
            co.CornerRadius = UDim.new(0, 15)
            co.Parent = cn

            cf.MouseButton1Click:Connect(function()
                local cq = Instance.new "Sound"
                cq.Name = "SoundEffect"
                cq.SoundId = "rbxassetid://130785805"
                cq.Volume = 1
                cq.Parent = game.Players.LocalPlayer.Character:WaitForChild "HumanoidRootPart"
                cq:Play()
                if cl == false then
                    cl = true
                    pcall(ce, true)
                    cn.BackgroundColor3 = _G.Color2
                    cn.Image = "rbxassetid://121857319732938"
                    cj.CornerRadius = UDim.new(0, 100)
                    cn:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Back", 0.1, true)
                else
                    cl = false
                    pcall(ce, false)
                    cn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    cn:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Back", 0.1, true)
                    cn.Image = "http://www.roblox.com/asset/?id=00"
                end
                cq:Destroy()
            end)
            if ck == true then
                cl = true
                cn.BackgroundColor3 = _G.Color2
                cn.Image = "rbxassetid://76805904046378"
                cj.CornerRadius = UDim.new(0, 100)
                cn:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Back", 0.1, true)
                pcall(ce, cl)
            end
        end

        function cd:Button(d, d2, cb)
            ck = ck or false
            local cl = ck
            local s = Instance.new "UICorner"
            local r = Instance.new "UIStroke"
            local cf = Instance.new "TextButton"
            local ch = Instance.new "UICorner"
            local bY = Instance.new "TextLabel"
            local bY2 = Instance.new "TextLabel"
            local cm = Instance.new "Frame"
            local cj = Instance.new "UICorner"
            local cn = Instance.new "ImageLabel"
            local co = Instance.new "UICorner"
            local cp = Instance.new "ImageLabel"

            cf.Name = "Button"
            cf.Parent = b_
            cf.BackgroundColor3 = colorlib
            cf.Position = UDim2.new(0, 1, 0, 1)
            cf.Size = UDim2.new(0, 388, 0, 60)
            cf.AutoButtonColor = false
            cf.Font = Enum.Font.GothamBold
            cf.Text = ""
            cf.TextColor3 = Color3.fromRGB(0, 0, 0)
            cf.TextSize = 11

            r.Name = "UIStroke"
            r.Parent = cf
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true

            ch.CornerRadius = UDim.new(0, 3)
            ch.Parent = cf

            bY.Parent = cf
            bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY.BackgroundTransparency = 1
        
