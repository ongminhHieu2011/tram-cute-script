-- 🌸 Tram Cute Hub Auto Farm Script
local player = game.Players.LocalPlayer
local function AutoFarm()
    while _G.AutoFarm do
        for _, mob in pairs(workspace.Enemies:GetChildren()) do
            if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                wait(0.3)
            end
        end
        wait(1)
    end
end

_G.AutoFarm = true
AutoFarm()
