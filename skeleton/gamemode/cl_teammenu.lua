function TeamMenu()
    local tmenu = vgui.Create("DFrame")
    tmenu:SetPos(ScrW()/2-175, Scrh()/2-110)
    tmenu:SetSize(400, 250)
    tmenu:SetTitle("Team Menu")
    tmenu:MakeDraggable( true ) 
    -- keep off
    tmenu:ShowCloseButton( true ) 
    tmenu:SetVisible(true)
    tmenu:MakePopup()
    tmenu.Paint = function
        draw.RoundedBox(1,1,1,1000,1000,Color(43, 199, 22))
    end
    -- tb1
    local tb1 = vgui.Create("DButton", tmenu)
    tb1:SetPos(15,30)
    tb1:SetSize(160, 170)
    tb1:SetText("Team 1")
    tb1.Paint = function()
        draw.RoundedBox(1,1,1,300,300,Color(108, 163, 101))
    end
    tb1.DoClick = function()
        tmenu:Close() 
        concommand.Run(LocalPlayer(),"team_1",)
    end
    -- tb2
   local tb2 = vgui.Create("DBytton", tmenu)
    tb2:SetPos(185,30)
    tb2:SetSize(160, 170)
    tb2:SetText("Team 2")
    tb2.Paint = function()
        draw.RoundedBox(1,1,1,300,300,Color(108, 163, 101))
    end
    
    tb2.DoClick = function()
        tmenu:Close()
        concommand.Run(LocalPlayer(),"team_2"
    end

    -- tp1 = pannel
    local tp1 = vgui.Create("DPanel", tmenu)
    tp1:SetPos(ScrW()/2-175, Scrh()/2-90)
    tp1:SetSize(350,20)
    tp1:SetVisable(true)
    tpi:MakePopup(true) tb1:Layer
    tp1.Paint = function()
        draw.RoundedBox(1,1,1,,400,400Color(255, 0, 0))
    end
end   

    
-- team config
concommand.Add("team_menu, TeamMenu)
