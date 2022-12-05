local E, L, V, P, G = unpack(ElvUI)
local ZG13 = E:NewModule('ZG13', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0')
local EP = LibStub('LibElvUIPlugin-1.0')
local addonName, addonTable = ...
local AB = E:GetModule('ActionBars')

ZG13.bar2Height = 0
ZG13.bar2Width = 0

function ZG13:PositionAndSizeBar(barName)
	if not barName then return end

	if barName == 'bar2' then
		ZG13.bar2Height = ZG13.bar2:GetHeight()
	end
	if barName == 'bar1' or barName == 'bar2' then
		ZG13:setPositionButtonsInBar()
	end
end

function ZG13:setPositionButtonsInBar()
	local bar1 = ZG13.bar1
	local bar2 = ZG13.bar2

	local buttonPoint = 'TOPLEFT'
	local anchorPoint = 'BOTTOMLEFT'
	local x, y

	local bar1_buttonSpacing = AB.db.bar1.buttonSpacing
	bar1_buttonSpacing = E:Scale(bar1_buttonSpacing)

	local bar2_buttonSpacing = AB.db.bar2.buttonSpacing
	bar2_buttonSpacing = E:Scale(bar2_buttonSpacing)

	local backdropSpacing = E:Scale(AB.db.bar2.backdropSpacing or AB.db.bar2.buttonSpacing)
	local backdopTotalSpacing = (backdropSpacing + E.Border) * 2

	if AB.db.bar2.backdrop ~= true then
		backdopTotalSpacing = 0
	end

	x = (bar2:GetWidth() - backdopTotalSpacing - bar1:GetWidth()) / 2
	y = -bar1_buttonSpacing;
	ZG13.bar1_button1:ClearAllPoints()
	ZG13.bar1_button1:SetPoint(buttonPoint, ZG13.bar2_button1, anchorPoint, x, y)

	x = 0
	ZG13.bar1_button8:ClearAllPoints()
	ZG13.bar1_button8:SetPoint(buttonPoint, ZG13.bar1_button2, anchorPoint, x, y)

	y = -bar1:GetHeight() - bar2_buttonSpacing*2
	ZG13.bar2_button8:ClearAllPoints()
	ZG13.bar2_button8:SetPoint(buttonPoint, ZG13.bar2_button3, anchorPoint, x, y)

	ZG13.bar2_button11:Hide()
	ZG13.bar2_button12:Hide()


	if not ZG13.bar2Height then
		ZG13.bar2Height = ZG13.bar2:GetHeight()
	end

	local bar1Spacing = E.Border + backdropSpacing
	local barHeight = ZG13.bar2Height + bar1:GetHeight() + bar1Spacing

	bar2:Height(barHeight)
end

function ZG13:SetBar1AndBar2Settings()
	AB.db.bar1.enabled = true
	AB.db.bar1.buttons = 12
	AB.db.bar1.buttonsPerRow = 7
	AB.db.bar1.point = 'TOPLEFT'
	AB.db.bar1.backdrop = false
	AB.db.bar1.heightMult = 1
	AB.db.bar1.widthMult = 1

	AB.db.bar2.enabled = true
	AB.db.bar2.buttons = 10
	AB.db.bar2.buttonsPerRow = 7
	AB.db.bar2.point = 'TOPLEFT'
	AB.db.bar2.heightMult = 1
	AB.db.bar2.widthMult = 1
end

function ZG13:LockConfigBarSettings()
	local bar1Config = E.Options.args.actionbar.args.playerBars.args.bar1.args
	bar1Config.enabled['disabled'] = true
	bar1Config.buttonGroup.args.buttons['disabled'] = true
	bar1Config.buttonGroup.args.buttonsPerRow['disabled'] = true
	bar1Config.barGroup.args.point['disabled'] = true
	bar1Config.generalOptions.values.backdrop = nil
	bar1Config.backdropGroup.args.heightMult['disabled'] = true
	bar1Config.backdropGroup.args.widthMult['disabled'] = true

	local bar2Config = E.Options.args.actionbar.args.playerBars.args.bar2.args
	bar2Config.enabled['disabled'] = true
	bar2Config.buttonGroup.args.buttons['disabled'] = true
	bar2Config.buttonGroup.args.buttonsPerRow['disabled'] = true
	bar2Config.barGroup.args.point['disabled'] = true
	bar2Config.backdropGroup.args.heightMult['disabled'] = true
	bar2Config.backdropGroup.args.heightMult['disabled'] = true
	bar2Config.backdropGroup.args.widthMult['disabled'] = true
end

function ZG13:changeBar2TogglerText()
	ZG13.bar2.mover.text:SetText(L["G13 Gameboard"])
end

function ZG13:CacheBarsAndButtonsNames()
	ZG13.bar1 = AB.handledBars['bar1']
	ZG13.bar2 = AB.handledBars['bar2']
	ZG13.bar1_button1  = ZG13.bar1.buttons[1]
	ZG13.bar1_button2  = ZG13.bar1.buttons[2]
	ZG13.bar1_button8  = ZG13.bar1.buttons[8]
	ZG13.bar2_button1  = ZG13.bar2.buttons[1]
	ZG13.bar2_button3  = ZG13.bar2.buttons[3]
	ZG13.bar2_button8  = ZG13.bar2.buttons[8]
	ZG13.bar2_button11 = ZG13.bar2.buttons[11]
	ZG13.bar2_button12 = ZG13.bar2.buttons[12]
end

function ZG13:HideBar1Mover()
	E:DisableMover(ElvUI_Bar1.mover.name)
end

function ZG13:InsertOptions()
	local configContent = {
		['descriptionHeader'] = {
			order = 0,
			type = 'header',
			name = L["Description"],
		},
		['description']	= {
			order = 1,
			type = 'description',
			name = L["ZG13_DESCRIPTION"],
			fontSize = 'medium',
		},
		['authorHeader'] = {
			order = 2,
			type = 'header',
			name = L["Authors"],
		},
		['author2'] = {
			order = 4,
			type = 'description',
			name = '|cFF69CCF0Zarac|r |cFF144587US-Goldrinn|r',
			fontSize = 'large',
		},
		['author1'] = {
			order = 3,
			type = 'description',
			name = '|cFF69CCF0Ethgriskolir|r |cFF144587US-Nesingwary|r',
			fontSize = 'large',
		}
	}
	E.Options.args.ZG13 = {
		order = 100,
		type = 'group',
		name = 'Zarac G13 plugin',
		args = configContent,
	}
end

function ZG13:Initialize()
	EP:RegisterPlugin(addonName, ZG13.InsertOptions)

	if E.private.actionbar.enable ~= true
		then return
	end

	ZG13.CacheBarsAndButtonsNames()
	ZG13:SetBar1AndBar2Settings()
	ZG13.changeBar2TogglerText()

	hooksecurefunc(AB, 'PositionAndSizeBar', ZG13.PositionAndSizeBar)
	--hooksecurefunc(E, 'ToggleOptionsUI', ZG13.LockConfigBarSettings)
	hooksecurefunc(E, 'ToggleMovers', ZG13.HideBar1Mover)
	AB:PositionAndSizeBar('bar1')
	AB:PositionAndSizeBar('bar2')
end

local function InitializeCallback()
	ZG13:Initialize()
end

E:RegisterModule(ZG13:GetName(), InitializeCallback);
