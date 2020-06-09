local id = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) --Dont Change This !!!!!
local name = GetPlayerName(NetworkGetEntityOwner(GetPlayerPed(-1)))   --Dont Change This !!!!!
local discord = 'discord.me/hydrarp'            --Change This
local servername = 'Hydra RP'                   --Change This
local leave = 'Sair da cidade'                  --Change This
local quit = 'Sair da cidade e abandonar jogo'  --Change This


function AddTextEntry(key, value)
  Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', '~g~' .. servername .. '   ~b~' .. discord .. '   ~w~ID:' .. id .. '~y~   ' .. name)
  AddTextEntry('PM_PANE_LEAVE', '~r~' .. leave)
  AddTextEntry('PM_PANE_QUIT', '~r~' .. quit)
end)


