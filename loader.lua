local games = {
	[121864768012064] = 'https://api.luarmor.net/files/v3/loaders/5ef4906f230aa87d747191682bd77c38.lua', -- Fish It
	[5348290477] = 'https://api.luarmor.net/files/v3/loaders/99f427dbe176af2932530ecbecb6d3dc.lua', -- Cabin
}

local gameId = game.PlaceId
local gameName = game:GetService('MarketplaceService')
	:GetProductInfo(gameId).Name
local url = games[gameId]

if url then
	loadstring(game:HttpGet(url, true))()
else
	warn('❌ Game not supported')
	if Library and Library.Notify then
		Library:Notify('❌ Game not supported!\nPlaceId: ' .. game.PlaceId)
	else
		game.StarterGui:SetCore('SendNotification', {
			Title = 'Unsupported Game',
			Text = 'PlaceId: ' .. game.PlaceId,
			Duration = 5,
		})
	end
end
