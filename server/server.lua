RegisterServerEvent('fs_taxi:payCab')
AddEventHandler('fs_taxi:payCab', function(meters)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)

	local totalPrice = meters / 40.0
	local price = math.floor(totalPrice)

	xPlayer.removeAccountMoney('bank', price)
	xPlayer.showNotification('Vous avez payé le taxi : '.. price .. ' $')
	TriggerClientEvent('fs_taxi:payment-status', src, true)	
end)