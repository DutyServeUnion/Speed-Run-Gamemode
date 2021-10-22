function TeamMenu()
    local tmenu = vgui.Create("DFrame")
    tmenu:Center()
    tmenu:SetSize(200, 150)
    tmenu:SetTitle("Team Menu")
    tmenu:MakeDraggable( true ) 
    tmenu:ShowCloseButton( true ) 
    tmenu:SetVisible(true)
    tmenu:MakePopup()
    tmenu.Paint = function
        draw.RoundedBox(1,1,1,1000,1000,Color(43, 199, 22))
    
end

-- team config
concommand.Add("team_menu, TeamMenu)
