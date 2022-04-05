local function unlockLand(player)
    for _, land in next, workspace["Star_"..player.Name].Player.Land:GetChildren() do
        game.ReplicatedStorage.PlayerData.Unlocker.LandShow:FireServer(land)
    end
end

for _, player in next, game.Players:GetChildren() do
    unlockLand(player)
end

game.Players.PlayerAdded:Connect(unlockLand)
