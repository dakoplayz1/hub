local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
if game.placeid == 13822889 then 
    local Window = Rayfield:CreateWindow({
        Name = "Dcore Hub",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Dcore Hub",
        LoadingSubtitle = "by Dcore",
        Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Dcore Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })
   local Tab = Window:CreateTab("lumber tycoon 2",nil) -- Title, Image
   local Button = Tab:CreateButton({
      Name = "Kron new",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0'))("")
         Rayfield:Destroy()
      end,
   })
   local Button = Tab:CreateButton({
      Name = "Kron Old",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/lt2'))("")
         Rayfield:Destroy()
      end,
   })

else
    Rayfield:Notify({
        Title = "DCore Hub",
        Content = "This game is not supported!",
        Duration = 6.5,
        Image = "rewind",
     })
end
