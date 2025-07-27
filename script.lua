local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Grow a Garden Spawner",
   Icon = 0,
   LoadingTitle = "Grow a Garden",
   LoadingSubtitle = "by Flash",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "K",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "FlashScripts",
      FileName = "GardenSpawner"
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Main", 0) -- 0 = no icon
MainTab:CreateButton({
   Name = "Get Key Link \240\159\148\145",
   Callback = function()
      if setclipboard then
         setclipboard("https://rinku.pro/HVphmXGC")
         Rayfield:Notify({
            Title = "Copied!",
            Content = "Key link copied to clipboard",
            Duration = 3,
            Image = 0
         })
      else
         Rayfield:Notify({
            Title = "Error",
            Content = "Manual copy required: https://rinku.pro/HVphmXGC",
            Duration = 5,
            Image = 0
         })
      end
   end,
})

-- 2. Key Input Field (NOW BELOW the button)
MainTab:CreateInput({
   Name = "Enter Your Key Here",
   PlaceholderText = "Paste key from website",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      -- You can add key verification here later
   end,
})

Rayfield:LoadConfiguration()
