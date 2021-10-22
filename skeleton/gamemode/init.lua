
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_teammenu.lua" ) 

include( "shared.lua" )

function PlayerInitialSpawn()

end




hook.Add("ShowHelp, "OpenTeamMenu", function()
    concommand.Run(ply,"team_menu")
end)
