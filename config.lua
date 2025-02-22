Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sports'] = 'Sports',
            ['super'] = 'Super',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['drift'] = 'Driftcars',
            ['vans'] = 'Vans'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-37.39, -1092.7, 27.3, 206.77), -- where the vehicle will spawn on display
                defaultVehicle = 'rmodm4gts', -- Default display vehicle
                chosenVehicle = 'rmodm4gts', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-47.37, -1091.7, 27.3, 92.51),
                defaultVehicle = 'mansm8',
                chosenVehicle = 'mansm8',
            },
            [3] = {
                coords = vector4(-50.14, -1083.23, 27.3, 205.31),
                defaultVehicle = 'nc1',
                chosenVehicle = 'nc1',
            },
            [4] = {
                coords = vector4(-54.77, -1096.75, 27.3, 201.7),
                defaultVehicle = 'mst',
                chosenVehicle = 'mst',
            },
            [5] = {
                coords = vector4(-42.07, -1101.79, 27.3, 28.93),
                defaultVehicle = 'lp670sv',
                chosenVehicle = 'lp670sv',
            }
            -- [6] = {
            --     coords = vector4(-43.31, -1099.02, 25.44, 52.5),
            --     defaultVehicle = 'r6',
            --     chosenVehicle = 'r6',
            -- },
            -- [7] = {
            --     coords = vector4(-50.66, -1093.05, 25.44, 222.5),
            --     defaultVehicle = 'bmws',
            --     chosenVehicle = 'bmws',
            -- },
            -- [8] = {
            --     coords = vector4(-44.28, -1102.47, 25.44, 298.5),
            --     defaultVehicle = 'v4sp',
            --     chosenVehicle = 'v4sp',
            -- }
        },
    },
    ['truck'] = {
         ['Type'] = 'free-use',  -- meaning a real player has to sell the car
         ['Zone'] = {
             ['Shape'] = {
                vector2(822.72, -3227.49),
                vector2(816.81, -3182.94),
                vector2(870.16, -3183.86),
                vector2(871.15, -3228.70),
             },
             ['minZ'] = 4.000,
             ['maxZ'] = 9.000,
             ['size'] = 4.75, -- size of the vehicles zones
         },
         ['Job'] = 'none', -- Name of job or none
         ['ShopLabel'] = 'Larrys Truckshop',
         ['showBlip'] = true,  --- true or false
         ['blipSprite'] = 326,  -- Blip sprite
         ['blipColor'] = 3,  -- Blip color
         ['Categories'] = {
             ['commercials'] = 'Trucks'
         },
         ['TestDriveTimeLimit'] = 0.5,
         ['Location'] = vector3(848.25, -3211.53, 5.88),
         ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
         ['VehicleSpawn'] = vector4(848.25, -3211.53, 5.88, 90.12),
         ['ShowroomVehicles'] = {
             [1] = {
                 coords = vector4(834.54, -3210.41, 5.88, 180.23),
                 defaultVehicle = 'benson2',
                 chosenVehicle = 'benson2',
             }
         }
     }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 6.2, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 410,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['boats'] = 'Boats',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy',
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder',
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis',
            },
        },
    },
    -- ['air'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(-1607.58, -3141.7),
    --             vector2(-1672.54, -3103.87),
    --             vector2(-1703.49, -3158.02),
    --             vector2(-1646.03, -3190.84),
    --         },
    --         ['minZ'] = 0.0,  -- min height of the shop zone
    --         ['maxZ'] = 5.0,  -- max height of the shop zone
    --         ['size'] = 7.0, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'none', -- Name of job or none
    --     ['ShopLabel'] = 'Air Shop', -- Blip name
    --     ['showBlip'] = true,  -- true or false
    --     ['blipSprite'] = 251,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['helicopters'] = 'Helicopters',
    --         ['planes'] = 'Planes',
    --     },
    --     ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
    --     ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
    --             defaultVehicle = 'volatus', -- Default display vehicle
    --             chosenVehicle = 'volatus', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
    --             defaultVehicle = 'luxor2',
    --             chosenVehicle = 'luxor2',
    --         },
    --         [3] = {
    --             coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
    --             defaultVehicle = 'nimbus',
    --             chosenVehicle = 'nimbus',
    --         },
    --         [4] = {
    --             coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
    --             defaultVehicle = 'frogger',
    --             chosenVehicle = 'frogger',
    --         },
    --     },
    -- },
}
