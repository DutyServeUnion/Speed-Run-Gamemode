
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_teammenu.lua" ) 

include( "shared.lua" )

function GM:PlayerInitialSpawn(ply)
    concomand.Run(ply, "team_menu")
end

function PlayerLoudout()
    
    
end

function team_1(ply)
    ply:SetTeam(1)
    ply:StripWeapons()
    ply:StripAmmo()
    ply:SetMaxHealth(150)
    ply:SetHealth(150)
    ply:SetWalkingSpeed(200)
    ply:SetRunSpeed(300)
end

function team_2(ply)
    ply:SetTeam(2)
    ply:StripWeapons()
    ply:StripAmmo()
    ply:SetMaxHealth(100)
    ply:SetHealth(100)
    ply:SetWalkingSpeed(100)
    ply:SetRunSpeed(200)
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
