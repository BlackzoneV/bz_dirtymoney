ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('bz:parakontrol')
AddEventHandler('bz:parakontrol', function(miktar)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
local para = xPlayer.getAccount('black_money').money

if para >= miktar then
local yuzde = miktar / Config.Yuzde
xPlayer.removeAccountMoney('black_money', miktar)
xPlayer.addMoney(yuzde)
else
	TriggerClientEvent('notification', src, 'Üstünde bu kadar kara para yok!', 2)
end
end)