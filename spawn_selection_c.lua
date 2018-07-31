local player = getLocalPlayer()
local sW, sH = guiGetScreenSize()

spawn_menu = guiCreateStaticImage(0.00, 0.00, 2.5, 2.5, "spawn_select.png", true)

        zone_LV = guiCreateButton(0.63, 0.07, 0.17, 0.21, "", true,spawn_menu) --Las Venturas
        guiSetAlpha(zone_LV, 0.05)

        zone_BC = guiCreateButton(0.43, 0.07, 0.17, 0.21, "", true, spawn_menu) --Bone Couty
        guiSetAlpha(zone_BC, 0.05)

		zone_TR = guiCreateButton(0.22, 0.01, 0.17, 0.21, "", true, spawn_menu) --Tierra Robada
        guiSetAlpha(zone_TR, 0.05)

		zone_SF = guiCreateButton(0.22, 0.32, 0.17, 0.21, "", true, spawn_menu) --San Fierro
        guiSetAlpha(zone_SF, 0.05)
      
        zone_WS = guiCreateButton(0.21, 0.79, 0.17, 0.21, "", true, spawn_menu) --Whetstone
        guiSetAlpha(zone_WS, 0.05)

        zone_FC = guiCreateButton(0.37, 0.63, 0.12, 0.16, "", true, spawn_menu) --Flint County
        guiSetAlpha(zone_FC, 0.05)

        zone_LS = guiCreateButton(0.58, 0.62, 0.17, 0.21, "", true, spawn_menu ) --Los Santos
        guiSetAlpha(zone_LS, 0.05)

        zone_RC = guiCreateButton(0.47, 0.40, 0.27, 0.21, "", true, spawn_menu) --Red Couty
        guiSetAlpha(zone_RC, 0.05)

local spawnPositions_LV = {
{1489.029296875,964.24151611328,1000},
{2085.1611328125,744.03814697266,1000},
{2573.26171875,737.56750488281,1000},
{2656.0285644531,860.07781982422,1000},
{2397.828125,1276.9193115234,1000},
{2092.6340332031,1698.7265625,1000},
{1543.1036376953,2015.8475341797,1000},
{1310.7990722656,2619.8225097656,1000},
{1633.0045166016,2808.7797851563,1000},
{2556.2600097656,2729.6638183594,1000},
}

spawnPositions_BC = {
{-288.5608215332,2730.4943847656,1000},
{372.08834838867,2500.3798828125,1000},
{233.78103637695,1898.4027099609,1000},
{-65.254005432129,1132.9775390625,1000},
{578.72155761719,871.40673828125,1000},
}

spawnPositions_TR = {
{-786.00579833984,1130.96875,1000},
{-815.00634765625,1513.1394042969,1000},
{-1053.6011962891,2170.849609375,1000},
{-1443.5260009766,2581.6989746094,1000},
{-1896.5661621094,2469.8581542969,1000},
{-2404.2670898438,2391.8425292969,1000},
{-2622.0895996094,2300.7390136719,1000},
{-2704.4084472656,2726.052734375,1000},
{-2342.6101074219,2784.3615722656,1000},
}

spawnPositions_SF = {
{-2643.0249023438,-78.767349243164,1000},
{-2684.1335449219,533.45184326172,1000},
{-2684.7766113281,1019.096496582,1000},
{-2293.8029785156,1177.7419433594,1000},
{-1906.2945556641,975.20074462891,1000},
{-1612.4415283203,707.58013916016,1000},
{-1446.4587402344,396.76376342773,1000},
{-1375.9226074219,-73.547134399414,1000},
{-2045.2578125,103.73748779297,1000},
{-2163.2709960938,374.51495361328,1000},
}

local spawnPositions_WS = {
{-1837.1817626953,-1625.8021240234,1000},
{-2118.9431152344,-2423.7436523438,1000},
{-1603.4705810547,-2722.2578125,1000},
{-1628.4315185547,-2193.5178222656,1000},
{-2322.48828125,-1643.8896484375,1000},
{-2518.8786621094,-1087.3555908203,1000},
{-2809.4233398438,-1279.8247070313,1000},
}

local spawnPositions_FC = {
{-1059.3145751953,-1131.3485107422,1000},
{-1398.3873291016,-1496.2143554688,1000},
{-967.85748291016,-1762.5695800781,1000},
{-44.197292327881,-2513.4770507813,1000},
{10.834142684937,-2634.9614257813,1000},
{-968.01538085938,-2692.7133789063,1000},
{-1573.9515380859,-892.60266113281,1000},
}

local spawnPositions_RC = {
{2336.6320800781,43.355617523193,1000},
{1305.9975585938,277.72619628906,1000},
{230.25212097168,-157.82162475586,1000},
{-57.598415374756,-48.610023498535,1000},
{-554.70983886719,-177.72645568848,1000},
{-533.79943847656,-491.00204467773,1000},
}

local spawnPositions_LS = {
{300.49322509766,-1538.2625732422,1000},
{708.57458496094,-1811.5355224609,1000},
{1135.5483398438,-2017.8916015625,1000},
{1461.4012451172,-1669.2670898438,1000},
{1253.4301757813,-1350.6057128906,1000},
{1953.3687744141,-1392.5690917969,1000},
{2293.10546875,-1116.1420898438,1000},
{2394.7963867188,-697.00628662109,1000},
{2780.3276367188,-1737.2221679688,1000},
{2478.0227050781,-2277.7958984375,1000},
{1894.6176757813,-2359.0109863281,1000},
}

function start(player)
	guiSetVisible ( spawn_menu, true )
	guiSetVisible ( zone_LV, true )
	guiSetVisible ( zone_BC, true )
	guiSetVisible ( zone_TR, true )
	guiSetVisible ( zone_SF, true )
	guiSetVisible ( zone_WS, true )
	guiSetVisible ( zone_FC, true )
	guiSetVisible ( zone_RC, true )
	guiSetVisible ( zone_LS, true )
	showCursor ( true )
end

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ()
	if (source == zone_LV) then
		local player = getLocalPlayer()		
		local spawning = math.random(tamanhas(spawnPositions_LV))
		setElementPosition (player , spawnPositions_LV[spawning][1],spawnPositions_LV[spawning][2],spawnPositions_LV[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
	end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_BC) then
		local player = getLocalPlayer()	
		local spawning = math.random(tamanhas(spawnPositions_BC))
		setElementPosition (player , spawnPositions_BC[spawning][1],spawnPositions_BC[spawning][2],spawnPositions_BC[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
    end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_TR) then
		local player = getLocalPlayer()	
		local spawning = math.random(tamanhas(spawnPositions_TR))
		setElementPosition (player , spawnPositions_TR[spawning][1],spawnPositions_TR[spawning][2],spawnPositions_TR[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
    end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_WS) then
		local player = getLocalPlayer()	
		local spawning = math.random(tamanhas(spawnPositions_WS))
		setElementPosition (player , spawnPositions_WS[spawning][1],spawnPositions_WS[spawning][2],spawnPositions_WS[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
    end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_FC) then
		local player = getLocalPlayer()	
		local spawning = math.random(tamanhas(spawnPositions_FC))
		setElementPosition (player , spawnPositions_FC[spawning][1],spawnPositions_FC[spawning][2],spawnPositions_FC[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
    end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_LS) then
		local player = getLocalPlayer()
		local spawning = math.random(tamanhas(spawnPositions_LS))
		setElementPosition (player , spawnPositions_LS[spawning][1],spawnPositions_LS[spawning][2],spawnPositions_LS[spawning][3]  )
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )		   
	end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_RC) then
		local player = getLocalPlayer()	
		local spawning = math.random(tamanhas(spawnPositions_RC))
		setElementPosition (player , spawnPositions_RC[spawning][1],spawnPositions_RC[spawning][2],spawnPositions_RC[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
    end
end
)

addEventHandler ( "onClientGUIClick", getResourceRootElement(getThisResource()),
function ( )
	if (source == zone_SF) then 
		local player = getLocalPlayer()
		local spawning = math.random(tamanhas(spawnPositions_SF))
		setElementPosition (player , spawnPositions_SF[spawning][1],spawnPositions_SF[spawning][2],spawnPositions_SF[spawning][3]  )   
		guiSetVisible ( spawn_menu, false )
		showCursor ( false )
	end
end
)

function tamanhas( tables )
  local count = 0
  for a in pairs( tables ) do
    count = count + 1
  end
  return count
end	

if getElementData(localPlayer,"logedin") then
    guiSetVisible(spawn_menu,false)
else
    guiSetVisible(spawn_menu,false)
end

function timer5 ( player )
	setTimer ( start, 5000, 1 ,player )
end
addCommandHandler("spawnmenu", timer5)
addEventHandler ( "onClientPlayerWasted", getLocalPlayer(), timer5 )

