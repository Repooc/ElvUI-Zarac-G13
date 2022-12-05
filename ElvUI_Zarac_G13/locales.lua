-- English localization file for enUS and enGB.
local L = ElvUI[1].Libs.ACL:NewLocale('ElvUI', 'enUS', true, true)
if not L then return end

L['DESCRIPTION'] = [=[
This plugin will position your Action Bar's buttons to match the layout of Logitech G13 Gameboard.
It uses ElvUI |cFFE6CC80bar 1|r and |cFFE6CC80bar 5|r. Some options of these bars were disabled.


From top to bottom:
The first row uses |cFFE6CC80bar 5|r buttons from #1 to #7;
The second row uses |cFFE6CC80bar 1|r buttons from #1 to #7;
The third row uses |cFFE6CC80bar 1|r buttons from #8 to #12;
The forth row uses |cFFE6CC80bar 5|r buttons from #8 to #10;
The buttons #11 and #12 from |cFFE6CC80bar 5|r are not used and, therefore, hidden.

If you want a backdrop, check the option in |cFFE6CC80bar 5|r's settings.

Currently this addon don't store you previous layout, so if you remove it, you should use the 'Restore Bar' button in bar settings for bar 1 and 5.
]=]

--We don't need the rest if we're on enUS or enGB locale, so stop here.
if GetLocale() == "enUS" then return end

--German Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "deDE")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Spanish (Spain) Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "esES")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Spanish (Mexico) Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "esMX")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--French Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "frFR")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Italian Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "itIT")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Korean Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "koKR")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Portuguese Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "ptBR")
if L then
	--Add translations here, eg.
  L['DESCRIPTION'] = [=[
  Este plugin posiciona os botões de suas Barra de Ação para ficarem igual o leiaute do Logitech G13 Gameboard.
  Ele usa a |cFFE6CC80barra 1|r e a |cFFE6CC80barra 2|r do ElvUI. Algumas opções destas barras foram desabilitadas.



  De cima para baixo:
  A primeira linha usa os botões de #1 a #7 da |cFFE6CC80barra 2|r;
  A segunda linha usa os botões de #1 a #7 da |cFFE6CC80barra 1|r;
  A terceira linha usa os botões de #8 a #12 da |cFFE6CC80barra 1|r;
  A quarta linha usa os botões de #8 a #10 da |cFFE6CC80barra 2|r;
  Os botões #11 e #12 da |cFFE6CC80barra 2|r não são usados, e por isso, ocultos.

  Se você deseja um fundo para as barras, marque a opção nas configurações da |cFFE6CC80barra 2|r.

  Este addon não armazena suas configurações anteriores. Se você o remover deverá usar o botão Restaurar Barra nas configurações das barras 1 e 2.
  ]=]
  L['Description'] = 'Descrição'
  L['Authors'] = 'Autores'
end

--Russian Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "ruRU")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Chinese (China, simplified) Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "zhCN")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end

--Chinese (Taiwan, traditional) Localizations
local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "zhTW")
if L then
	--Add translations here, eg.
	-- L[' Alert'] = ' Alert',
end
