Print("Break");
local v0 = require(game:GetService("ReplicatedStorage").Notification);
v0.new("<Color=Cyan>Welcome to Ten Hub<Color=/>"):Display();
wait(0.5);
v0.new("<Color=Yellow>Everyone Goes to Discord to Communicate<Color=/>"):Display();
wait(1);
repeat
	wait();
until game.Players.LocalPlayer
if  not game:IsLoaded() then
	game.Loaded:Wait();
end
local v1 = task;
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat
		task.wait();
		if (game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true) then
			if (getgenv().Team == "Marines") then
				for v1932, v1933 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container['Marines'].Frame.TextButton.Activated)) do
					for v2129, v2130 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
						v2130:Fire();
					end
					v1933.Function();
				end
			else
				for v1934, v1935 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container['Pirates'].Frame.TextButton.Activated)) do
					for v2131, v2132 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
						v2132:Fire();
					end
					v1935.Function();
				end
			end
		end
	until (game.Players.LocalPlayer.Team ~= nil) and game:IsLoaded()
end
if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
spawn(function()
	for v621, v622 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v622.Name == "Death") or (v622.Name == "Spawn")) then
			v622:Destroy();
		end
	end
end);
spawn(function()
	for v623, v624 in pairs(game:GetDescendants()) do
		if v624:IsA("ParticleEmitter") or v624:IsA("Trail") then
			v624.Lifetime = NumberRange.new(0);
		elseif v624:IsA("Explosion") then
			v624.BlastPressure = 1;
			v624.BlastRadius = 1;
		elseif (v624:IsA("Fire") or v624:IsA("SpotLight") or v624:IsA("Smoke")) then
			v624.Enabled = false;
		end
	end
end);
spawn(function()
	for v625, v626 in pairs(game:GetDescendants()) do
		if v626:IsA("Texture") then
			v626.Texture = "";
		elseif (v626:IsA("BasePart") and (v626.Material == Enum.Material.Water)) then
			v626.Material = Enum.Material.SmoothPlastic;
		end
	end
	for v627, v628 in pairs(game.Players.LocalPlayer.PlayerScripts:GetDescendants()) do
		local v629 = {
			"WaterBlur",
			"WaterEffect",
			"WaterColorCorrection",
			"WaterCFrame",
			"MirageFog"
		};
		if table.find(v629, v628.Name) then
			v628:Destroy();
		end
	end
end);
local v2 = game:GetService("UserInputService");
local v3 = game:GetService("TweenService");
local function v4(v127, v128)
	local v129 = nil;
	local v130 = nil;
	local v131 = nil;
	local v132 = nil;
	local function v133(v630)
		local v631 = v630.Position - v131 ;
		local v632 = UDim2.new(v132.X.Scale, v132.X.Offset + v631.X , v132.Y.Scale, v132.Y.Offset + v631.Y );
		local v633 = v3:Create(v128, TweenInfo.new(0.1), {
			Position = v632
		});
		v633:Play();
	end
	v127.InputBegan:Connect(function(v634)
		if ((v634.UserInputType == Enum.UserInputType.MouseButton1) or (v634.UserInputType == Enum.UserInputType.Touch)) then
			v129 = true;
			v131 = v634.Position;
			v132 = v128.Position;
			v634.Changed:Connect(function()
				if (v634.UserInputState == Enum.UserInputState.End) then
					v129 = false;
				end
			end);
		end
	end);
	v127.InputChanged:Connect(function(v635)
		if ((v635.UserInputType == Enum.UserInputType.MouseMovement) or (v635.UserInputType == Enum.UserInputType.Touch)) then
			v130 = v635;
		end
	end);
	v2.InputChanged:Connect(function(v636)
		if ((v636 == v130) and v129) then
			v133(v636);
		end
	end);
end
local v5 = {};
v5.Window = function(v134, v135)
	local v136 = {};
	local v137 = false;
	local v138 = false;
	local v139 = "";
	local v135 = v135 or Enum.KeyCode.RightControl ;
	local v140 = string.gsub(tostring(v135), "Enum.KeyCode.", "");
	local v141 = Instance.new("ScreenGui");
	v141.Name = "Anchor";
	v141.Parent = game.CoreGui;
	v141.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v147 = Instance.new("Frame");
	v147.Name = "Main";
	v147.Parent = v141;
	v147.ClipsDescendants = true;
	v147.AnchorPoint = Vector2.new(0.5, 0.5);
	v147.BackgroundColor3 = Color3.fromRGB(245, 245, 245); 
	v147.BackgroundTransparency = 0.1; 
	v147.Position = UDim2.new(0.5, 0, 0.5, 0);
	v147.Size = UDim2.new(0, 0, 0, 0);
	v147:TweenSize(UDim2.new(0, 656, 0, 400), "Out", "Quad", 0, true);
	v147:TweenSize(UDim2.new(0, 656, 0, 350), "Out", "Quad", 0, true);
	v147:TweenSize(UDim2.new(0, 555, 0, 352), "Out", "Quad", 0, true);
	local v156 = Instance.new("UIStroke");
	v156.Name = "BtnStroke";
	v156.Parent = v147;
	v156.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v156.Color = Color3.fromRGB(0, 134, 139);
	v156.LineJoinMode = Enum.LineJoinMode.Round;
	v156.Thickness = 1.5;
	v156.Transparency = 0;
	v156.Enabled = true;
	v156.Archivable = true;
	local v168 = Instance.new("UICorner");
	v168.Parent = Page;
	local v170 = Instance.new("ImageLabel");
	v170.Name = "Page";
	v170.Parent = v147;
	v170.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
	v170.BackgroundTransparency = 1.1;
	v170.Position = UDim2.new(0.405426834, 0, 0.075000003, 0);
	v170.Size = UDim2.new(0, 263, 0, 325);
	v170.Image = "http://www.roblox.com/asset/?id="   .. tostring(120315904282957) ;
	local v178 = Instance.new("UICorner");
	v178.Name = "MCNR";
	v178.Parent = v147;
	local v181 = Instance.new("UICorner");
	v181.Name = "MCNR";
	v181.Parent = BackgroundImage;
	local v184 = Instance.new("UICorner");
	v184.Name = "lol";
	v184.Parent = Dark;
	local v187 = Instance.new("Frame");
	v187.Name = "Top";
	v187.Parent = v147;
	v187.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
	v187.Size = UDim2.new(0, 556, 0, 30);
	v187.BackgroundTransparency = 1;
	local v193 = Instance.new("UICorner");
	v193.Name = "TCNR";
	v193.Parent = v187;
	v193.CornerRadius = UDim.new(0, 5);
	local v197 = Instance.new("TextLabel");
	v197.Name = "ttittles";
	v197.Parent = v187;
	v197.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v197.BackgroundTransparency = 1;
	v197.Position = UDim2.new(0, 30, 0.05, 0);
	v197.Size = UDim2.new(0, 255, 0.05, 25);
	v197.Font = Enum.Font.SourceSansBold;
	v197.Text = "Ten Roblox Hub";
	v197.TextSize = 17;
	v197.TextColor3 = Color3.fromRGB(0, 134, 139);
	v197.TextXAlignment = Enum.TextXAlignment.Left;
	local v211 = Instance.new("TextLabel");
	v211.Name = "patch";
	v211.Parent = v187;
	v211.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v211.BackgroundTransparency = 1;
	v211.Position = UDim2.new(0, 200, 0.05, 0);
	v211.Size = UDim2.new(0, 255, 0.05, 25);
	v211.Font = Enum.Font.SourceSansBold;
	v211.Text = " ";
	v211.TextSize = 17;
	v211.TextColor3 = Color3.fromRGB(120, 120, 120); 
	v211.TextXAlignment = Enum.TextXAlignment.Left;
	local v223 = Instance.new("Frame");
	v223.Name = "Tab";
	v223.Parent = v147;
	v223.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
	v223.Position = UDim2.new(0, 14, 0, 33);
	v223.BackgroundTransparency = 1;
	v223.Size = UDim2.new(0, 138, 0, 307);
	local v156 = Instance.new("UIStroke");
	local v230 = Instance.new("ScrollingFrame");
	v230.Name = "ScrollTab";
	v230.Parent = v223;
	v230.Active = true;
	v230.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v230.Position = UDim2.new(0, 0, 0, 0);
	v230.BackgroundTransparency = 1;
	v230.Size = UDim2.new(0, 138, 0, 307);
	v230.ScrollBarThickness = 0;
	local v239 = Instance.new("UICorner");
	v239.Parent = v223;
	v239.CornerRadius = UDim.new(0, 5);
	local v242 = Instance.new("UIListLayout");
	v242.Name = "PLL";
	v242.Parent = v230;
	v242.SortOrder = Enum.SortOrder.LayoutOrder;
	v242.Padding = UDim.new(0, 2);
	local v248 = Instance.new("UIPadding");
	v248.Name = "PPD";
	v248.Parent = v230;
	local v156 = Instance.new("UIStroke");
	local v170 = Instance.new("Frame");
	v170.Name = "Page";
	v170.Parent = v147;
	v170.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
	v170.Position = UDim2.new(0, 162, 0, 33);
	v170.Size = UDim2.new(0, 380, 0, 308);
	v170.BackgroundTransparency = 1;
	local v251 = Instance.new("UICorner");
	v251.Parent = v170;
	v251.CornerRadius = UDim.new(0, 3);
	local v254 = Instance.new("Frame");
	v254.Name = "MainPage";
	v254.Parent = v170;
	v254.ClipsDescendants = true;
	v254.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v254.BackgroundTransparency = 1;
	v254.Size = UDim2.new(0, 380, 0, 307);
	local v261 = Instance.new("Folder");
	v261.Name = "PageList";
	v261.Parent = v254;
	local v264 = Instance.new("UIPageLayout");
	v264.Parent = v261;
	v264.SortOrder = Enum.SortOrder.LayoutOrder;
	v264.EasingDirection = Enum.EasingDirection.InOut;
	v264.EasingStyle = Enum.EasingStyle.Quad;
	v264.FillDirection = Enum.FillDirection.Vertical;
	v264.Padding = UDim.new(0, 10);
	v264.TweenTime = 0;
	v264.GamepadInputEnabled = false;
	v264.ScrollWheelInputEnabled = false;
	v264.TouchInputEnabled = false;
	v4(v187, v147);
	v2.InputBegan:Connect(function(v637)
		if (v637.KeyCode == Enum.KeyCode.RightControl) then
			if (v137 == false) then
				v137 = true;
				v147:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0, true);
			else
				v137 = false;
				v147:TweenSize(UDim2.new(0, 556, 0, 350), "Out", "Quad", 0, true);
			end
		end
	end);
	local v278 = {};
	v278.T = function(v638, v639, v640)
		local v641 = Instance.new("UIStroke");
		local v642 = Instance.new("UICorner");
		local v643 = Instance.new("TextButton");
		local v644 = Instance.new("TextLabel");
		local v645 = Instance.new("UICorner");
		local v646 = Instance.new("TextLabel");
		v643.Parent = v230;
		v643.Name = v639   .. "Server" ;
		v643.Text = "";
		v643.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
		v643.BackgroundTransparency = 1;
		v643.Size = UDim2.new(0, 136, 0, 30);
		v643.Font = Enum.Font.SourceSansBold;
		v643.TextColor3 = Color3.fromRGB(0, 0, 0); 
		v643.TextSize = 12;
		v643.TextTransparency = 0.9;
		v646.Parent = v643;
		v646.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v646.BackgroundTransparency = 1;
		v646.Position = UDim2.new(0, 30, 0, 2);
		v646.Size = UDim2.new(0, 100, 0, 25);
		v646.Font = Enum.Font.SourceSansBold;
		v646.Text = v639;
		v646.TextColor3 = Color3.fromRGB(30, 30, 30); 
		v646.TextSize = 14.5;
		v646.TextXAlignment = Enum.TextXAlignment.Left;
		local v669 = Instance.new("ImageLabel");
		v669.Name = "Skaizhub";
		v669.Parent = v643;
		v669.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v669.BackgroundTransparency = 1;
		v669.Position = UDim2.new(0, 6, 0, 4.5);
		v669.Size = UDim2.new(0, 20, 0, 20);
		v669.Image = v640;
		v645.CornerRadius = UDim.new(0, 5);
		v645.Parent = v643;
		v642.CornerRadius = UDim.new(0, 5);
		v642.Parent = v643;
		local v681 = Instance.new("ScrollingFrame");
		v681.Name = v639   .. "_Page" ;
		v681.Parent = v261;
		v681.Active = true;
		v681.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v681.Position = UDim2.new(0, 0, 0, 0);
		v681.BackgroundTransparency = 1;
		v681.Size = UDim2.new(0, 400, 0, 307);
		v681.ScrollBarThickness = 0;
		local v690 = Instance.new("UICorner");
		v690.Parent = v254;
		v690.CornerRadius = UDim.new(0, 5);
		local v693 = Instance.new("UIPadding");
		local v694 = Instance.new("UIListLayout");
		v693.Parent = v681;
		v694.Padding = UDim.new(0, 3);
		v694.Parent = v681;
		v694.SortOrder = Enum.SortOrder.LayoutOrder;
		local v700 = {};
		function ActivateTab(v910)
			if activeTab then
				activeTab.BackgroundTransparency = 1;
			end
			activeTab = v910;
			activeTab.BackgroundTransparency = 0.2; 
			local v912 = string.gsub(v910.Name, "Server", "")   .. "_Page" ;
			for v1573, v1574 in pairs(v261:GetChildren()) do
				if (v1574.Name == v912) then
					v264:JumpTo(v1574);
				end
			end
		end
		for v913, v914 in pairs(v230:GetChildren()) do
			if v914:IsA("TextButton") then
				table.insert(v700, v914);
				v914.MouseButton1Click:Connect(function()
					ActivateTab(v914);
				end);
			end
		end
		if (v138 == false) then
			for v1680, v1681 in ipairs(v700) do
				v3:Create(v1681, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end
			ActivateTab(v700[1]);
			v138 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v681.CanvasSize = UDim2.new(0, 0, 0, v694.AbsoluteContentSize.Y + 20 );
				v230.CanvasSize = UDim2.new(0, 0, 0, v242.AbsoluteContentSize.Y + 20 );
			end);
		end);
		local v701 = {};
		v701.Button = function(v915, v916, v917)
			local v918 = Instance.new("Frame");
			local v919 = Instance.new("UICorner");
			local v920 = Instance.new("TextButton");
			local v921 = Instance.new("UICorner");
			local v922 = Instance.new("Frame");
			local v923 = Instance.new("UICorner");
			v918.Name = "Button";
			v918.Parent = v681;
			v918.BackgroundColor3 = Color3.new(255, 255, 255);
			v918.BackgroundTransparency = 1;
			v918.Size = UDim2.new(0, 358, 0, 33);
			v919.CornerRadius = UDim.new(0, 5);
			v919.Parent = v918;
			v920.Name = "TextBtn";
			v920.Parent = v918;
			v920.BackgroundColor3 = Color3.fromRGB(235, 235, 235); 
			v920.BackgroundTransparency = 0.2;
			v920.Position = UDim2.new(0, 0, 0, 0);
			v920.Size = UDim2.new(0, 379, 0, 33);
			v920.AutoButtonColor = false;
			v920.Font = Enum.Font.SourceSansBold;
			v920.Text = "[ "   .. v916   .. " ]" ;
			v920.TextColor3 = Color3.fromRGB(30, 30, 30); 
			v920.TextSize = 15;
			v921.CornerRadius = UDim.new(0, 5);
			v921.Parent = v920;
			v922.Name = "Black";
			v922.Parent = v918;
			v922.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
			v922.BackgroundTransparency = 1;
			v922.BorderSizePixel = 0;
			v922.Position = UDim2.new(0, 0, 0, 0);
			v922.Size = UDim2.new(0, 379, 0, 33);
			v923.CornerRadius = UDim.new(0, 5);
			v923.Parent = v922;
			v920.MouseEnter:Connect(function()
				v3:Create(v922, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.5
				}):Play();
			end);
			v920.MouseLeave:Connect(function()
				v3:Create(v922, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end);
			v920.MouseButton1Click:Connect(function()
				v920.TextSize = 0;
				v3:Create(v920, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play();
				v917();
			end);
		end;
		v701.Toggle = function(v954, v955, v956, v957)
			v956 = v956 or false ;
			local v958 = v956;
			_G.Color = Color3.fromRGB(220, 220, 220); 
			_G.TrueColor = Color3.fromRGB(0, 134, 139); 
			local v959 = Instance.new("UICorner");
			local v960 = Instance.new("UIPadding");
			local v961 = Instance.new("UIStroke");
			local v962 = Instance.new("TextButton");
			local v963 = Instance.new("UICorner");
			local v964 = Instance.new("TextLabel");
			local v965 = Instance.new("TextButton");
			local v966 = Instance.new("UICorner");
			local v967 = Instance.new("Frame");
			local v968 = Instance.new("UICorner");
			local v969 = Instance.new("ImageLabel");
			v962.Name = "Button";
			v962.Parent = v681;
			v962.BackgroundColor3 = Color3.fromRGB(235, 235, 235); 
			v962.BackgroundTransparency = 0.2;
			v962.Size = UDim2.new(0, 379, 0, 46);
			v962.AutoButtonColor = false;
			v962.Font = Enum.Font.SourceSans;
			v962.Text = "";
			v962.TextColor3 = Color3.fromRGB(0, 0, 0);
			v962.TextSize = 11;
			v963.CornerRadius = UDim.new(0, 5);
			v963.Parent = v962;
			v969.Name = "Icon";
			v969.Parent = v962;
			v969.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v969.BackgroundTransparency = 1;
			v969.Position = UDim2.new(0, 5, 0, 8);
			v969.Size = UDim2.new(0, 30, 0, 30);
			v964.Parent = v962;
			v964.BackgroundColor3 = Color3.fromRGB(200, 200, 200);
			v964.BackgroundTransparency = 1;
			v964.Position = UDim2.new(0, 40, 0, 0);
			v964.Size = UDim2.new(0, 280, 0, 46);
			v964.Font = Enum.Font.SourceSansBold;
			v964.Text = v955;
			v964.TextColor3 = Color3.fromRGB(30, 30, 30); 
			v964.TextSize = 15;
			v964.TextXAlignment = Enum.TextXAlignment.Left;
			v965.Name = "ToggleImage";
			v965.Parent = v962;
			v965.BackgroundColor3 = Color3.fromRGB(200, 200, 200); 
			v965.BackgroundTransparency = 0.1;
			v965.Position = UDim2.new(0, 320, 0, 13);
			v965.Size = UDim2.new(0, 45, 0, 20);
			v965.Text = "";
			v966.CornerRadius = UDim.new(0, 10);
			v966.Parent = v965;
			v967.Name = "Circle";
			v967.Parent = v965;
			v967.BackgroundColor3 = Color3.fromRGB(255, 255, 255); 
			v967.Position = UDim2.new(0, 2, 0, 2);
			v967.Size = UDim2.new(0, 16, 0, 16);
			v968.CornerRadius = UDim.new(0, 10);
			v968.Parent = v967;
			v965.MouseButton1Click:Connect(function()
				if (v958 == false) then
					v958 = true;
					v961.Color = _G.TrueColor;
					v967:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.1, true);
					v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = _G.TrueColor
					}):Play();
				else
					v958 = false;
					v961.Color = _G.Color;
					v967:TweenPosition(UDim2.new(0, 2, 0, 2), "Out", "Sine", 0.1, true);
					v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play();
				end
				pcall(v957, v958);
			end);
			if (v956 == true) then
				v958 = true;
				v961.Color = _G.TrueColor;
				v967:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0, true);
				v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = _G.TrueColor
				}):Play();
				pcall(v957, v958);
			end
		end;
		v701.Dropdown = function(v1017, v1018, v1019, v1020)
			local v1021 = false;
			local v1022 = Instance.new("Frame");
			local v1023 = Instance.new("UICorner");
			local v1024 = Instance.new("UICorner");
			local v1025 = Instance.new("UICorner");
			local v1026 = Instance.new("TextLabel");
			local v1027 = Instance.new("ScrollingFrame");
			local v1028 = Instance.new("UIListLayout");
			local v1029 = Instance.new("UIPadding");
			local v1030 = Instance.new("TextButton");
			local v1031 = Instance.new("TextButton");
			local v1032 = Instance.new("ImageLabel");
			local v1033 = Instance.new("UIStroke");
			v1022.Name = "Dropdown";
			v1022.Parent = v681;
			v1022.BackgroundColor3 = Color3.fromRGB(235, 235, 235); 
			v1022.BackgroundTransparency = 0.8;
			v1022.ClipsDescendants = true;
			v1022.Size = UDim2.new(0, 379, 0, 38);
			v1023.CornerRadius = UDim.new(0, 3);
			v1023.Parent = v1022;
			local v1042 = Instance.new("ImageLabel");
			v1042.Name = "Icon";
			v1042.Parent = v1022;
			v1042.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1042.BackgroundTransparency = 1;
			v1042.Position = UDim2.new(0, 5, 0, 3);
			v1042.Size = UDim2.new(0, 30, 0, 30);
			v1026.Name = "DropTitle";
			v1026.Parent = v1022;
			v1026.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1026.BackgroundTransparency = 1;
			v1026.Size = UDim2.new(0, 379, 0, 38);
			v1026.Font = Enum.Font.SourceSansBold;
			v1026.Text = v1018;
			v1026.TextColor3 = Color3.fromRGB(30, 30, 30); 
			v1026.TextSize = 15;
			v1026.TextXAlignment = Enum.TextXAlignment.Left;
			v1026.Position = UDim2.new(0, 40, 0, 0);
			v1031.Name = "SelectItems";
			v1031.Parent = v1022;
			v1031.BackgroundColor3 = Color3.fromRGB(210, 210, 210); 
			v1031.TextColor3 = Color3.fromRGB(30, 30, 30); 
			v1031.BackgroundTransparency = 0.1;
			v1031.Position = UDim2.new(0, 220, 0, 34);
			v1031.Size = UDim2.new(0, 155, 0, 30);
			v1031.Font = Enum.Font.SourceSansBold;
			v1031.TextSize = 12;
			v1031.Text = "Select..";
			v1031.ClipsDescendants = true;
			v1031.TextXAlignment = Enum.TextXAlignment.Left;
			local v1074 = Instance.new("UIPadding");
			v1074.Parent = v1031;
			v1074.PaddingLeft = UDim.new(0, 15);
			v1074.PaddingRight = UDim.new(0, 15);
			v1031.AnchorPoint = Vector2.new(0, 3);
			v1024.Parent = v1031;
			v1024.CornerRadius = UDim.new(0, 5);
			v1025.Parent = v1027;
			v1025.CornerRadius = UDim.new(0, 5);
