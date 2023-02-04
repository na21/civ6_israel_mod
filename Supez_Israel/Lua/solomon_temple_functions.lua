include("Civ6Common.lua")

function solomonsTempleConvertCities(playerID, religionID)
    if (PlayerConfigurations[playerID]:GetCivilizationTypeName() == "CIVILIZATION_SUPEZ_ISRAEL") then
        local solomonsTempleID = GameInfo.Buildings["WONDER_SUPEZ_SOLOMONS_TEMPLE"].Index
        local player = Players[playerID]
        local playerCities = player:GetCities()
        local playerCapital = playerCities:GetCapitalCity()
        local capitalBuildings = playerCapital:GetBuildings()
        
        if (capitalBuildings:HasBuilding(solomonsTempleID)) then
            for i, city in playerCities:Members() do
                city:GetReligion():SetAllCityToReligion(religionID)
            end
        end
    else
        return
    end

Events.ReligionFounded.Add(OnReligionFounded)