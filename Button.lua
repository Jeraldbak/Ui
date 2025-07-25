local CoreGui = game:GetService("CoreGui")

local function Create(instance, parent, Props)
  local new = Instance.new(instance, parent)
  table.foreach(Props, function(Property, Value)
      new[Property] = Value
  end)
  return new
end

local ScreenGui = Create("ScreenGui", CoreGui, {
  Name = "Minimizar"
})

local ScreenFind = CoreGui:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
  ScreenFind:Destroy()
end

local Botao = Create("TextButton", ScreenGui, {
  Name = "Botão",
  Size = UDim2.new(0, 45, 0, 45),
  Position = UDim2.new(0, 9, 0, 200),
  Text = "H",
  TextColor3 = Color3.fromRGB(240, 240, 240),
  TextSize = 40,
  Font = Enum.Font.FredokaOne,
  Active = true,
  Draggable = true,
  BackgroundColor3 = Color3.fromRGB()
})Create("UIStroke", Botao, {
  Name = "Stroke",
  Color = Color3.fromRGB(163, 5, 255),
  Thickness = 5,
  ApplyStrokeMode = "Border"
})Create("UICorner", Botao, {
  Name = "Corner",
  CornerRadius = UDim.new(0, 10)
})

function keypress(key)
  local VIM = game:GetService("VirtualInputManager")
  VIM:SendKeyEvent(true, key, false, game)
end

Botao.MouseButton1Up:Connect(function()
  keypress("RightControl")
end)
