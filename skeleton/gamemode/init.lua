
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_teammenu.lua" ) 

include( "shared.lua" )

function PlayerInitialSpawn()

end




hook.Add("ShowHelp, "OpenTeamMenu", function()
    concommand.Run(ply,"team_menu")
end)

concommand.Add("team_1", function(ply)
    ply:SetTeam(1)
end)

concommand.Add("team_2", function(ply)
    ply:SetTeam(2)
end)
