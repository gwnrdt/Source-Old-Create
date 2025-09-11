loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Skibidi mscuaz",
         Animation = "🔥Made by mscuaz🔥"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "rbxassetid://129115521198338",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "mscuaz Farm"})
          local Tab2o = MakeTab({Name = "mscuaz Chest"})
          local Tab3o = MakeTab({Name = "mscuaz  Hop"})
               local Tab4o = MakeTab({Name = "mscuaz Fruits"})
               local Tab5o = MakeTab({Name = "mscuaz Bounty"})
local Tab6o = MakeTab({Name = "mscuaz kaitun"})
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Marines"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
  end
})
      AddButton(Tab1o, {
     Name = "Xeter Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().Version = "V2"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Loader/main/Xeter.lua"))()
 end
})
      AddButton(Tab6o, {
     Name = "Simple Hub",
    Callback = function()

getgenv().simple_settings = {
    ["MASTERY"] = { -- Settings related to leveling up weapon or skill mastery
        ["ACTIVE"] = true, -- Enable or disable mastery leveling (true = enabled, false = disabled)
        ["METHOD"] = "Half", -- Method for gaining mastery, "Half"[350] or "Full"[600]
    },

    ["OBJECTIVE"] = { -- Goals for farming and unlocking features
        ["GODHUMAN"] = true, -- Automatically unlock the "Godhuman" fighting style
        ["RACE-CONFIGURE"] = {
            ["RACE"] = {"Human", "Skypiea", "Fishman", "Mink"}, -- List -- "Human", "Skypiea", "Fishman", "Mink"
            ["RACE-LOCK"] = true, -- Automatically change the character race if not in the list
            ["RACE-V3"] = true, -- Automatically upgrade character race to V3 if possible Human, Mink, (Fishman, Ghoul, Cyborg) soon
        },
        ["FRAGMENT"] = 30000, -- Limit number of fragments to collect

        -- SWORD
        ["CANVANDER"] = true,
        ["BUDDY-SWORD"] = true,
        ["CURSED-DUAL-KATANA"] = true,
        ["SHARK-ANCHOR"] = true,

        --GUN
        ["ACIDUM-RIFLE"] = true,
        ["VENOM-BOW"] = true,
        ["SOUL-GUITAR"] = true,

        -- AURA
        ["COLOR-HAKI"] = {"Pure Red","Winter Sky","Snow White"}, -- Aura color to craft
    },

    ["FRUITPURCHASE"] = true, -- Automatically purchase fruits based on priority list
    ["PRIORITYFRUIT"] = { -- List of preferred fruits to purchase or eat in order of priority
        [1] = "Dragon-Dragon",
        [2] = "Dough-Dough",
        [3] = "Flame-Flame",
        [4] = "Rumble-Rumble",
        [5] = "Human-Human: Buddha",
        [6] = "Dark-Dark",
    },

    ["FPSCAP"] = 30, -- Limit the frame rate to optimize performance
    ["LOWTEXTURE"] = true-- Reduce graphic quality for better performance
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/simple-hubs/contents/refs/heads/main/bloxfruit-kaitan-main.lua"))()
 end
  })
      AddButton(Tab4o, {
     Name = "Bluex Hub",
    Callback = function()

getgenv().Config = {
    ["Misc"] = {
        ["RandomFruits"] = true,
        ["RemoveNotify"] = true,
        ["BlackScreen"] = false,
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/FindFruits.lua"))()
 end
})
      AddButton(Tab1o, {
     Name = "Hiru Hub premium",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Source/main/HiruHub.lua"))()
 end
})
      AddButton(Tab1o, {
     Name = "Xero Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Fake Banana",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/MakeCatBananaFk/main/BananaCatHub.lua"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Bap Red",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/BapRed/main/BapRedHub"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Min Gaming",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinBV"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Zenith Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader'))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "W Azure",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Tsuo7 Mup",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()(Settings)
  end
})
      AddButton(Tab1o, {
     Name = "Zis Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRb10"))()(Settings)
 end
  })
      AddButton(Tab1o, {
     Name = "Speed Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Rubu Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/Rubutv/refs/heads/main/RuBuV4.lua"))()(Settings)
  end
  })
      AddButton(Tab1o, {
     Name = "Quantum",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()(Settings)
  end
  })
      AddButton(Tab2o, {
     Name = "Skull Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().BloxFruits = {
    ["Team"] = "Marines", -- Pirates/Marines
    ["TweenSpeed"] = 350, -- Studs per second 380 no flag but kick
    ["Fruit"] = {
        ["FruitNotifier"] = false, -- Fruit notifier
        ["AutoRandom"] = true, -- Auto random/store fruit
        ["FruitSniper"] = {
            ["Enabled"] = false, -- Auto buy fruit in normal shop
            ["TargetFruits"] = {"Yeti-Yeti", "Dragon-Dragon", "Dough-Dough"},
        },
    },
    ["Farm"] = {
        ["Enabled"] = true, -- Farm chest & fruit
        ["FastMethod"] = false, -- Faster but more risky
        ["AutoHop"] = true, -- Auto hop after collect all
        ["ItemHop"] = true, -- God's Chalice/Fist of Darkness
    },
    ["Webhook"] = {
        ["Enabled"] = false,
        ["URL"] = "Your Webhook Url",
        ["UserId"] = "Id Discord",
    },
    ["BlackScreen"] = false, -- Black screen
    ["FpsBoost"] = false, -- Boost FPS
    ["AntiIdle"] = true, -- Anti AFK
}

loadstring(game:HttpGet('https://skullhub.xyz/loader.lua'))()(Settings)
  end
 })
      AddButton(Tab3o, {
     Name = "HaHa Hop",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Linhbhi/Skibidihub/refs/heads/main/SkibidiHub-autohop.lua"))()(Settings)
 end
 })
     AddButton(Tab3o, {
     Name = "Min boss Hop",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinHopFull"))()(Settings)
  end
})
     AddButton(Tab3o, {
     Name = "Min sword Hop",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinHopSword"))()(Settings)
 end
})
     AddButton(Tab3o, {
     Name = "TuanAnhIOS",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/ScriptHopBoss/refs/heads/main/TuanAnhIOS-HopBoss.lua"))()(Settings)
   end
})
      AddButton(Tab4o, {
     Name = "Fruits mup rup",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()(Settings)
  end
  })
  AddButton(Tab3o, {
     Name = "Teddy Hop",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-FREMIUM"))()(Settings)
  end
})
  AddButton(Tab5o, {
     Name = "Hiru",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().Config = {
 ["Team"] = "Pirates",
 ["Safe Health"] = {40, 50},
 ["Skip"] = { 
 ["Fruit"] = {["Enabled"] = true,
 ["Avoid Fruit"] = {
 "Portal-Portal", 
 "Kitsune-Kitsune"
 }
 },
 ["Avoid V4"] = true
 },
 ["Hunt Method"] = {
 ["Use Move Predict"] = true,
 ["Hit and Run"] = true
 },
 ["Spam All Skill On V4"] = {
 ["Enabled"] = true,
 ["Weapons"] = {"Melee", "Gun", "Sword", "Blox Fruit"}
 },
 ["Chat"] = {
 ["Enabled"] = false,
 ["Message"] = {"Hiru Hub Bounty"}
 },
 ["Custom Y Run"] = {
 ["Enabled"] = false,
 ["Y Run"] = 100
 },
 ["Misc"] = {
 ["Auto Store Fruit"] = true,
 ["Auto Random Fruit"] = true,
 ["White Screen"] = false,
 ["Click Delay"] = 0.1,
 },
 ["Items"] = {["Use"] = {"Melee", "Gun", "Sword"},
 ["Melee"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.5},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 }
 },
 ["Blox Fruit"] = {
 ["Enable"] = false,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.2},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["V"] = {["Enable"] = false, ["HoldTime"] = 0},
 ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
 }
 },
 ["Sword"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 },
 ["Gun"] = {
 ["Enable"] = true, 
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 }
 }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Source/main/Bounty.lua"))()(Settings)
 end
})
  AddButton(Tab5o, {
     Name = "Matsune",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().Config = {
 ["Team"] = "Pirates",
 ["Safe Health"] = {40, 50},
 ["Skip"] = { 
 ["Fruit"] = {["Enabled"] = true,
 ["Avoid Fruit"] = {
 "Portal-Portal", 
 "Kitsune-Kitsune"
 }
 },
 ["Avoid V4"] = true
 },
 ["Hunt Method"] = {
 ["Use Move Predict"] = true,
 ["Hit and Run"] = true
 },
 ["Spam All Skill On V4"] = {
 ["Enabled"] = true,
 ["Weapons"] = {"Melee", "Gun", "Sword", "Blox Fruit"}
 },
 ["Chat"] = {
 ["Enabled"] = false,
 ["Message"] = {"matsune hub"}
 },
 ["Custom Y Run"] = {
 ["Enabled"] = false,
 ["Y Run"] = 100
 },
 ["Misc"] = {
 ["Auto Store Fruit"] = true,
 ["Auto Random Fruit"] = true,
 ["White Screen"] = false,
 ["Click Delay"] = 0.1,
 },
 ["Items"] = {["Use"] = {"Melee", "Gun", "Sword"},
 ["Melee"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.5},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 }
 },
 ["Blox Fruit"] = {
 ["Enable"] = false,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.2},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["V"] = {["Enable"] = false, ["HoldTime"] = 0},
 ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
 }
 },
 ["Sword"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 },
 ["Gun"] = {
 ["Enable"] = true, 
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 }
 }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMatsune/Rolls-Rocye/refs/heads/main/b164o774u241n032t141y.lua"))()(Settings)
  end
 })
  AddButton(Tab5o, {
     Name = "Xero",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

getgenv().Configs = {

    ["Team"] = "Pirates", -- Pirates/Marines

    ["Speed Tween"] = 350, -- Highly recommend 300 speed is good enough to anti security kick. maximum you can use is 350

    ["Auto turn on race v3"] = true,

    ["Auto turn on race v4"] = true,

    ["Click Time"] = 0.2,

    ["White Screen"] = false, -- false / true

    ["Chat"] = {

        ["Enable"] = false,

        ["Message"] = {"", "", "", ""}, -- Input your message here

    },

    ["Run When Low Health"] = {

        ["Enable"] = false,

        ["Health"] = 3000,

        ["Come back"] = true

    },

    ["Region"] = "United States", -- Singapore, United States, Germany, France, India, ??? ... or "All"

    ["Weapons"] = {

        ["Melee"] = {

            ["Enable"] = true,

            ["Delay"] = 3,

            ["Order"] = 3,

            ["Skills"] = {

                ["Z"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0.6,

                    ["Order"] = 2,

                    ["Time to next skill"] = 0.5

                },

                ["X"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0.2,

                    ["Order"] = 1,

                    ["Time to next skill"] = 0.5

                },

                ["C"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0.1,

                    ["Order"] = 3,

                    ["Time to next skill"] = 0.5

                }

            }

        },

        ["Blox Fruit"] = {

            ["Enable"] = false,

            ["Delay"] = 0.2,

            ["Order"] = 4,

            ["Skills"] = {

                ["Z"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0,

                    ["Order"] = 2,

                    ["Time to next skill"] = 0

                },

                ["X"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0,

                    ["Order"] = 1,

                    ["Time to next skill"] = 0

                },

                ["C"] = {

                    ["Enable"] = false,

                    ["HoldTime"] = 0,

                    ["Order"] = 0,

                    ["Time to next skill"] = 0

                },

                ["V"] = {

                    ["Enable"] = false,

                    ["HoldTime"] = 0,

                    ["Order"] = 0,

                    ["Time to next skill"] = 0

                },

                ["F"] = {

                    ["Enable"] = false,

                    ["HoldTime"] = 0,

                    ["Order"] = 0,

                    ["Time to next skill"] = 0

                }

            }

        },

        ["Sword"] = {

            ["Enable"] = true,

            ["Delay"] = 1,

            ["Order"] = 1,

            ["Skills"] = {

                ["Z"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0.3,

                    ["Order"] = 1,

                    ["Time to next skill"] = 0.5

                },

                ["X"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0.4,

                    ["Order"] = 2,

                    ["Time to next skill"] = 0.5

                }

            }

        },

        ["Gun"] = {

            ["Enable"] = false,

            ["Delay"] = 1.5,

            ["Order"] = 2,

            ["Skills"] = {

                ["Z"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0,

                    ["Order"] = 2,

                    ["Time to next skill"] = 0

                },

                ["X"] = {

                    ["Enable"] = true,

                    ["HoldTime"] = 0,

                    ["Order"] = 1,

                    ["Time to next skill"] = 0

                }

            }

        }

    },

    ["Theme"] = {

        ["Enable"] = true,

        ["Hide Theme"] = true,

        ["Name"] = "Gojo", -- Gojo

        ["Custom Theme"] = {

            ["Enable"] = false, -- enable theme first

            ["Text Color"] = Color3.fromRGB(231, 85, 88),

            ["Character Position"] = UDim2.new(0.563000023, 0, -0.174999997, 0),

            ["Character Size"] = UDim2.new(0.3, 0, 1.4, 0)

        }

    },

    ["Webhook"] = {

        ["Enable"] = false,

        ["Url"] = "",

        ["Image"] = "https://media.discordapp.net/attachments/1162947702615711765/1229739840661094451/background.png?ex=67576eb9&is=67561d39&hm=da94e1b066b7a974e1577fe4fb355ce2907de8acf56aa4c467d7023a59d1d927&=&format=webp&quality=lossless&width=692&height=395"

    }

}

repeat task.wait(1) pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/bounty.lua"))() end) until getgenv().Execution(Settings)
  end
  })
