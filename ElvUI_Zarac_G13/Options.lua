local E, L, V, P, G = unpack(ElvUI)
local ZG13 = E:GetModule('ZG13')

local function InsertOptions()
	local configContent = {
		descriptionHeader = {
			order = 0,
			type = 'header',
			name = L["Description"],
		},
		description	= {
			order = 1,
			type = 'description',
			name = L["ZG13_DESCRIPTION"],
			fontSize = 'medium',
		},
		authorHeader = {
			order = 2,
			type = 'header',
			name = L["Authors"],
		},
		author2 = {
			order = 4,
			type = 'description',
			name = '|cFF69CCF0Zarac|r |cFF144587US-Goldrinn|r',
			fontSize = 'large',
		},
		author1 = {
			order = 3,
			type = 'description',
			name = '|cFF69CCF0Ethgriskolir|r |cFF144587US-Nesingwary|r',
			fontSize = 'large',
		}
	}
	E.Options.args.ZG13 = {
		order = 100,
		type = 'group',
		name = 'Zarac G13',
		args = configContent,
	}
end

tinsert(ZG13.Configs, InsertOptions)
