local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "7816b1603e84472fbc422f7022a570e8"
local falseData = "3d67667bd57847308d7a026d42469ee4"

KeyGuardLibrary.Set({
  publicToken = "a71c84bb4c3b419b8d20dc8f0f15e322",
  privateToken = "6a17144d02e343939132656737668c67",
  trueData = trueData,
  falseData = falseData,
})

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local key = ("/Dcorehub/key")
local response = KeyGuardLibrary.validateDefaultKey(key)
local premium  = KeyGuardLibrary.validatePremiumKey(key)
if response == trueData then
    Fluent:Notify({
        Title = "Dcore",
        Content = "loading free menu!",
        Duration = 8
    })
    loadstring(game:HttpGet('https://github.com/dakoplayz1/hub/raw/refs/heads/main/hub.lua'))()
    Fluent:Destroy()
elseif premium == truedata then
    Fluent:Notify({
        Title = "Dcore",
        Content = "loading premium menu!",
        Duration = 8
    })
    -- loadstring for premium
    Fluent:Destroy()
else
    local Window = Fluent:CreateWindow({
        Title = "Dcore hub",
        SubTitle = "Dcore Key",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 340),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })

    local Tabs = {
        KeySys = Window:AddTab({ Title = "Key System", Icon = "key" }),
    }

    local Entkey = Tabs.KeySys:AddInput("Input", {
        Title = "Enter Key",
        Description = "Enter Key Here",
        Default = "",
        Placeholder = "Enter key…",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            key = Value
        end
    })

    local Checkkey = Tabs.KeySys:AddButton({
        Title = "Check Key",
        Description = "Enter Key before pressing this button",
        Callback = function()
            local response = KeyGuardLibrary.validateDefaultKey(key)
            local premium  = KeyGuardLibrary.validatePremiumKey(key)
            if response == trueData then
                writefile("/Dcorehub/key",key)
                Fluent:Notify({
                    Title = "Dcore",
                    Content = "loading free menu!",
                    Duration = 8
                })
                loadstring(game:HttpGet('https://github.com/dakoplayz1/hub/raw/refs/heads/main/hub.lua'))()
                Fluent:Destroy()
            elseif premium == truedata then
                writefile("/Dcorehub/key",key)
                Fluent:Notify({
                    Title = "Dcore",
                    Content = "loading premium menu!",
                    Duration = 8
                })
                --loadstring goes here
                Fluent:Destroy()
            else
                Fluent:Notify({
                    Title = "Dcore",
                    Content = "This key is invalid",
                    Duration = 8
                })
            end
        end
    })

    local Getkey = Tabs.KeySys:AddButton({
        Title = "Get Key",
        Description = "Get Key here",
        Callback = function()
        setclipboard(KeyGuardLibrary.getLink())
        end
    })

    Window:SelectTab(1)
end
