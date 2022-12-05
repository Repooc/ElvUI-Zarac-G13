local L = ElvUI[1].Libs.ACL:NewLocale('ElvUI', 'koKR')
if not L then return end

L["Authors"] = true
L["Description"] = true

L['ZG13_DESCRIPTION'] = [=[
This plugin will position your Action Bar's buttons to match the layout of Logitech G13 Gameboard.
It uses ElvUI |cFFE6CC80bar 1|r and |cFFE6CC80bar 2|r. Some options of these bars were disabled.


From top to bottom:
The first row uses |cFFE6CC80bar 2|r buttons from #1 to #7;
The second row uses |cFFE6CC80bar 1|r buttons from #1 to #7;
The third row uses |cFFE6CC80bar 1|r buttons from #8 to #12;
The forth row uses |cFFE6CC80bar 2|r buttons from #8 to #10;
The buttons #11 and #12 from |cFFE6CC80bar 2|r are not used and, therefore, hidden.

If you want a backdrop, check the option in |cFFE6CC80bar 2|r's settings.

Currently this addon don't store you previous layout, so if you remove it, you should use the 'Restore Bar' button in bar settings for bar 1 and 2.
]=]
