-----------------------------------------------------------------------------------------------------------
-------------------------------------------- VEHICLE TUNING -----------------------------------------------
-----------------------------------------------------------------------------------------------------------
--
-- Here you can create, edit and remove various tuning parts. The changes they make to the handling is all
-- in here, so feel free to modify as you wish. PLEASE bear in mind that if 2 different tuning options
-- modify the same handling values, and are set to overwrite, they could overwrite each other unpredictably
-- Either set the values to NOT overwrite, or make sure that different tuning parts modify unique parts of
-- the handling to prevent undesired results. 
--
-- Here is a guide on what different options mean to help you customise your tuning parts.
--
-----------------------------------------------------------------------------------------------------------
--  name                      The name of the modification that will be shown in the tablet.
-----------------------------------------------------------------------------------------------------------
--  info                      Optional, but you can provide additional info that will show in the UI when
--                            clicking the info icon when they are selecting an upgrade. It could be used 
--                            to warn mechanics of vehicles an upgrade shouldn't be applied on, or results
--                            from your testing of handling values.
-----------------------------------------------------------------------------------------------------------
--  itemName                  For mechanics set up to use an item for upgrades, this is the name of the
--                            required item.
-----------------------------------------------------------------------------------------------------------
--  price                     For mechanics set up to purchase upgrades, this will be the cost to the
--                            mechanic to apply the upgrade.
-----------------------------------------------------------------------------------------------------------
--  audioNameHash             Any in-game vehicle name, or addon sound pack name (ENGINE SWAPS ONLY!)
-----------------------------------------------------------------------------------------------------------
--  handling                  Add/remove handling attributes & values.
--                            More help & info on handling values: https://gtamods.com/wiki/Handling.meta
-----------------------------------------------------------------------------------------------------------
--  handlingApplyOrder        The order in which this tuning option should be applied. This is useful when
--                            tuning options have overlapping handling values! Provide a priority number,
--                            and the lowest numbers will be applied first.
-----------------------------------------------------------------------------------------------------------
--  handlingOverwritesValues  Whether the handling values provided should overwrite the vehicle's existing
--                            values, or whether they should modify the vehicle's existing values. This
--                            also works for negative values too.
--                           
--                            For example: a vehicle's current fDriveInertia value is at 1.0
--                               true  = a value of 0.5 sets fDriveInertia to 0.5
--                               false = a value of 0.5 will mean [1.0 + 0.5] and set fDriveInertia to 1.5
-----------------------------------------------------------------------------------------------------------

Config.Tuning = {
  --
  -- ENGINE SWAPS
  -- You can customise, or add new engine swap options here.
  --
  engineSwaps = {
    [1] = {
      name = "R488 2.5L",
      icon = "engine.svg",
      info = "A twin-turbo charged 2.5L engine. Can reach speeds of up to 100mph!",
      itemName = "r488sound",
      price = 30000,
      audioNameHash = "488sound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.05,
        fDriveInertia = 0.1,
        fInitialDriveMaxFlatVel = 30.0,
        fClutchChangeRateScaleUpShift = 0.2,
        fClutchChangeRateScaleDownShift = 0.2
      },
    },
    [2] = {
      name = "K20a Turbo 2.0L",
      icon = "engine.svg",
      info = "A twin-turbo charged 2.0L engine. Can reach speeds of up to 120mph!",
      itemName = "k20a",
      price = 35000,
      audioNameHash = "k20a",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.06,
        fDriveInertia = 0.12,
        fInitialDriveMaxFlatVel = 32.0,
        fClutchChangeRateScaleUpShift = 0.3,
        fClutchChangeRateScaleDownShift = 0.3
      },
    },
    
    [3] = {
      name = "Urus V8 4.0L",
      icon = "engine.svg",
      info = "A powerful V8 4.0L engine. Can reach speeds of up to 140mph!",
      itemName = "urusv8",
      price = 40000,
      audioNameHash = "urusv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.07,
        fDriveInertia = 0.14,
        fInitialDriveMaxFlatVel = 34.0,
        fClutchChangeRateScaleUpShift = 0.4,
        fClutchChangeRateScaleDownShift = 0.4
      },
    },
    
    [4] = {
      name = "M297 Zonda 6.0L",
      icon = "engine.svg",
      info = "A high-performance V12 6.0L engine. Can reach speeds of up to 160mph!",
      itemName = "m297zonda",
      price = 45000,
      audioNameHash = "m297zonda",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.08,
        fDriveInertia = 0.16,
        fInitialDriveMaxFlatVel = 36.0,
        fClutchChangeRateScaleUpShift = 0.5,
        fClutchChangeRateScaleDownShift = 0.5
      },
    },
    
    [5] = {
      name = "V8 5.0L",
      icon = "engine.svg",
      info = "A robust V8 5.0L engine. Can reach speeds of up to 180mph!",
      itemName = "v8engine",
      price = 50000,
      audioNameHash = "v8engine",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.09,
        fDriveInertia = 0.18,
        fInitialDriveMaxFlatVel = 38.0,
        fClutchChangeRateScaleUpShift = 0.6,
        fClutchChangeRateScaleDownShift = 0.6
      },
    },
    
    [6] = {
      name = "Inline-4 Turbo 1.8L",
      icon = "engine.svg",
      info = "A high-revving inline-4 turbocharged 1.8L engine. Can reach speeds of up to 200mph!",
      itemName = "shonen",
      price = 55000,
      audioNameHash = "shonen",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.10,
        fDriveInertia = 0.20,
        fInitialDriveMaxFlatVel = 40.0,
        fClutchChangeRateScaleUpShift = 0.7,
        fClutchChangeRateScaleDownShift = 0.7
      },
    },
    
    -- Continúa con los siguientes motores con incrementos en el precio y ajustes de manejo similares
    [7] = {
      name = "Predator V8 5.2L",
      icon = "engine.svg",
      info = "A high-output Predator V8 5.2L engine. Can reach speeds of up to 220mph!",
      itemName = "predatorv8",
      price = 60000,
      audioNameHash = "predatorv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.11,
        fDriveInertia = 0.22,
        fInitialDriveMaxFlatVel = 42.0,
        fClutchChangeRateScaleUpShift = 0.8,
        fClutchChangeRateScaleDownShift = 0.8
      },
    },
    
    [8] = {
      name = "Flat-6 3.8L",
      icon = "engine.svg",
      info = "A high-performance Flat-6 3.8L engine. Can reach speeds of up to 240mph!",
      itemName = "gt3flat6",
      price = 65000,
      audioNameHash = "gt3flat6",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.12,
        fDriveInertia = 0.24,
        fInitialDriveMaxFlatVel = 44.0,
        fClutchChangeRateScaleUpShift = 0.9,
        fClutchChangeRateScaleDownShift = 0.9
      },
    },
    
    [9] = {
      name = "Lambo V10 5.2L",
      icon = "engine.svg",
      info = "A high-revving Lamborghini V10 5.2L engine. Can reach speeds of up to 260mph!",
      itemName = "lambov10",
      price = 70000,
      audioNameHash = "lambov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.13,
        fDriveInertia = 0.26,
        fInitialDriveMaxFlatVel = 46.0,
        fClutchChangeRateScaleUpShift = 1.0,
        fClutchChangeRateScaleDownShift = 1.0
      },
    },
    
    [10] = {
      name = "Rotary 2.6L",
      icon = "engine.svg",
      info = "A high-revving rotary 2.6L engine. Can reach speeds of up to 280mph!",
      itemName = "rotary7",
      price = 75000,
      audioNameHash = "rotary7",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.14,
        fDriveInertia = 0.28,
        fInitialDriveMaxFlatVel = 48.0,
        fClutchChangeRateScaleUpShift = 1.1,
        fClutchChangeRateScaleDownShift = 1.1
      },
    },
    
    [11] = {
      name = "Supra 2JZ-GTE",
      icon = "engine.svg",
      info = "A high-output 2JZ-GTE 3.0L engine. Can reach speeds of up to 300mph!",
      itemName = "supra2jzgtett",
      price = 80000,
      audioNameHash = "toysupmk4",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.15,
        fDriveInertia = 0.30,
        fInitialDriveMaxFlatVel = 50.0,
        fClutchChangeRateScaleUpShift = 1.2,
        fClutchChangeRateScaleDownShift = 1.2
      },
    },
    
    [12] = {
      name = "AMG V12 6.0L",
      icon = "engine.svg",
      info = "A powerful AMG V12 6.0L engine. Can reach speeds of up to 320mph!",
      itemName = "m158huayra",
      price = 85000,
      audioNameHash = "m158huayra",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.16,
        fDriveInertia = 0.32,
        fInitialDriveMaxFlatVel = 52.0,
        fClutchChangeRateScaleUpShift = 1.3,
        fClutchChangeRateScaleDownShift = 1.3
      },
    },
    
    [13] = {
      name = "Viper V10 8.4L",
      icon = "engine.svg",
      info = "A high-output Viper V10 8.4L engine. Can reach speeds of up to 340mph!",
      itemName = "viperv10",
      price = 90000,
      audioNameHash = "viperv10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.17,
        fDriveInertia = 0.34,
        fInitialDriveMaxFlatVel = 54.0,
        fClutchChangeRateScaleUpShift = 1.4,
        fClutchChangeRateScaleDownShift = 1.4
      },
    },
    
    [14] = {
      name = "Bugatti W16 8.0L",
      icon = "engine.svg",
      info = "A quad-turbocharged Bugatti W16 8.0L engine. Can reach speeds of up to 360mph!",
      itemName = "veyronsound",
      price = 95000,
      audioNameHash = "veyronsound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.18,
        fDriveInertia = 0.36,
        fInitialDriveMaxFlatVel = 56.0,
        fClutchChangeRateScaleUpShift = 1.5,
        fClutchChangeRateScaleDownShift = 1.5
      },
    },
    
    [15] = {
      name = "Lambo V10 5.2L Performance",
      icon = "engine.svg",
      info = "A high-performance Lamborghini V10 5.2L engine. Can reach speeds of up to 380mph!",
      itemName = "perfov10",
      price = 100000,
      audioNameHash = "perfov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.19,
        fDriveInertia = 0.38,
        fInitialDriveMaxFlatVel = 58.0,
        fClutchChangeRateScaleUpShift = 1.6,
        fClutchChangeRateScaleDownShift = 1.6
      },
    },
    
    [16] = {
      name = "Lambo V10 5.2L Sesto",
      icon = "engine.svg",
      info = "A high-output Lamborghini V10 5.2L Sesto Elemento engine. Can reach speeds of up to 400mph!",
      itemName = "sestov10",
      price = 105000,
      audioNameHash = "sestov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.20,
        fDriveInertia = 0.40,
        fInitialDriveMaxFlatVel = 60.0,
        fClutchChangeRateScaleUpShift = 1.7,
        fClutchChangeRateScaleDownShift = 1.7
      },
    },
    
    [17] = {
      name = "McLaren V8 4.0L",
      icon = "engine.svg",
      info = "A high-revving McLaren V8 4.0L engine. Can reach speeds of up to 420mph!",
      itemName = "mclarenv8",
      price = 110000,
      audioNameHash = "mclarenv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.21,
        fDriveInertia = 0.42,
        fInitialDriveMaxFlatVel = 62.0,
        fClutchChangeRateScaleUpShift = 1.8,
        fClutchChangeRateScaleDownShift = 1.8
      },
    },
    
    [18] = {
      name = "Lambo V12 6.5L",
      icon = "engine.svg",
      info = "A powerful Lamborghini V12 6.5L engine. Can reach speeds of up to 440mph!",
      itemName = "murciev12",
      price = 115000,
      audioNameHash = "murciev12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.22,
        fDriveInertia = 0.44,
        fInitialDriveMaxFlatVel = 64.0,
        fClutchChangeRateScaleUpShift = 1.9,
        fClutchChangeRateScaleDownShift = 1.9
      },
    },
    
    [19] = {
      name = "Nissan GTR R35 3.8L",
      icon = "engine.svg",
      info = "A twin-turbocharged Nissan GTR R35 3.8L engine. Can reach speeds of up to 460mph!",
      itemName = "r35sound",
      price = 120000,
      audioNameHash = "r35sound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.23,
        fDriveInertia = 0.46,
        fInitialDriveMaxFlatVel = 66.0,
        fClutchChangeRateScaleUpShift = 2.0,
        fClutchChangeRateScaleDownShift = 2.0
      },
    },
    
    [20] = {
      name = "Mustang V8 5.0L",
      icon = "engine.svg",
      info = "A high-performance Mustang V8 5.0L engine. Can reach speeds of up to 480mph!",
      itemName = "musv8",
      price = 125000,
      audioNameHash = "musv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.24,
        fDriveInertia = 0.48,
        fInitialDriveMaxFlatVel = 68.0,
        fClutchChangeRateScaleUpShift = 2.1,
        fClutchChangeRateScaleDownShift = 2.1
      },
    },
    
    [21] = {
      name = "Apollo V8 4.0L",
      icon = "engine.svg",
      info = "A high-output Apollo V8 4.0L engine. Can reach speeds of up to 500mph!",
      itemName = "apollosv8",
      price = 130000,
      audioNameHash = "apollosv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.25,
        fDriveInertia = 0.50,
        fInitialDriveMaxFlatVel = 70.0,
        fClutchChangeRateScaleUpShift = 2.2,
        fClutchChangeRateScaleDownShift = 2.2
      },
    },
    
    [22] = {
      name = "Aventador SV V12 6.5L",
      icon = "engine.svg",
      info = "A powerful Aventador SV V12 6.5L engine. Can reach speeds of up to 520mph!",
      itemName = "avesvv12",
      price = 135000,
      audioNameHash = "avesvv12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.26,
        fDriveInertia = 0.52,
        fInitialDriveMaxFlatVel = 72.0,
        fClutchChangeRateScaleUpShift = 2.3,
        fClutchChangeRateScaleDownShift = 2.3
      },
    },
    
    [23] = {
      name = "Diablo V12 6.0L",
      icon = "engine.svg",
      info = "A high-revving Diablo V12 6.0L engine. Can reach speeds of up to 540mph!",
      itemName = "diablov12",
      price = 140000,
      audioNameHash = "diablov12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.27,
        fDriveInertia = 0.54,
        fInitialDriveMaxFlatVel = 74.0,
        fClutchChangeRateScaleUpShift = 2.4,
        fClutchChangeRateScaleDownShift = 2.4
      },
    },
    
    [24] = {
      name = "Ferrari F40 V8 2.9L",
      icon = "engine.svg",
      info = "A high-output Ferrari F40 V8 2.9L engine. Can reach speeds of up to 560mph!",
      itemName = "f40v8",
      price = 145000,
      audioNameHash = "f40v8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.28,
        fDriveInertia = 0.56,
        fInitialDriveMaxFlatVel = 76.0,
        fClutchChangeRateScaleUpShift = 2.5,
        fClutchChangeRateScaleDownShift = 2.5
      },
    },
    
    [25] = {
      name = "Ferrari F50 V12 4.7L",
      icon = "engine.svg",
      info = "A high-performance Ferrari F50 V12 4.7L engine. Can reach speeds of up to 580mph!",
      itemName = "f50v12",
      price = 150000,
      audioNameHash = "f50v12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.29,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 78.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.6
      },
    },
    
    [26] = {
      name = "Ferrari F12 V12 6.3L",
      icon = "engine.svg",
      info = "A powerful Ferrari F12 V12 6.3L engine. Can reach speeds of up to 600mph!",
      itemName = "ferrarif12",
      price = 155000,
      audioNameHash = "ferrarif12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.30,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 80.0,
        fClutchChangeRateScaleUpShift = 2.7,
        fClutchChangeRateScaleDownShift = 2.7
      },
    }, 
    [27] = {
    name = "2-Takt Motorrad-Motor",
    icon = "engine.svg",
    info = "Ein leichter 2-Takt-Motor mit hoher Drehzahl, aber wenig Drehmoment – ideal für kleine Fahrzeuge.",
    itemName = "2strkbeng",
    price = 3500,
    audioNameHash = "2strkbeng",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.18,
        fDriveInertia = 0.45,
        fInitialDriveMaxFlatVel = 52.0,
        fClutchChangeRateScaleUpShift = 2.4,
        fClutchChangeRateScaleDownShift = 2.2
    }
},
[28] = {
    name = "Toyota 4A-GE 1.6 L",
    icon = "engine.svg",
    info = "Legendärer 4A-GE-Reihenvierzylinder aus dem Toyota AE86 – drehfreudig und leicht.",
    itemName = "4age",
    price = 8500,
    audioNameHash = "4age",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.23,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 68.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.4
    }
},
[29] = {
    name = "Toyota Supra 2JZ-GTE 3.0 L",
    icon = "engine.svg",
    info = "Der legendäre 2JZ-GTE-Motor – Reihensechser mit Twin-Turbo und brutaler Leistung.",
    itemName = "a80ffeng",
    price = 22000,
    audioNameHash = "a80ffeng",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.34,
        fDriveInertia = 0.70,
        fInitialDriveMaxFlatVel = 85.0,
        fClutchChangeRateScaleUpShift = 2.9,
        fClutchChangeRateScaleDownShift = 2.8
    }
},
[30] = {
    name = "Mercedes-AMG One Hybrid V6",
    icon = "engine.svg",
    info = "F1-Technologie auf der Straße – ein Hybrid-Antrieb mit extrem schneller Gasannahme.",
    itemName = "amg1eng",
    price = 350000,
    audioNameHash = "amg1eng",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.44,
        fDriveInertia = 0.55,
        fInitialDriveMaxFlatVel = 96.0,
        fClutchChangeRateScaleUpShift = 3.5,
        fClutchChangeRateScaleDownShift = 3.0
    }
},
[31] = {
    name = "Audi RS4 Milltek V6 Biturbo",
    icon = "engine.svg",
    info = "Getunter RS4-Motor mit Milltek-Abgasanlage – kerniger Klang, kräftiger Durchzug.",
    itemName = "audirs4milltekeng",
    price = 27000,
    audioNameHash = "audirs4milltekeng",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.37,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 88.0,
        fClutchChangeRateScaleUpShift = 3.0,
        fClutchChangeRateScaleDownShift = 2.8
    }
},
[32] = {
    name = "Audi R8 Twin Turbo V10",
    icon = "engine.svg",
    info = "Doppelturbo-V10 aus dem R8 – kompromisslose Leistung mit brachialem Sound.",
    itemName = "audr8tteng",
    price = 160000,
    audioNameHash = "audr8tteng",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.41,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 94.0,
        fClutchChangeRateScaleUpShift = 3.3,
        fClutchChangeRateScaleDownShift = 3.0
    }
},
[33] = {
    name = "Deimos V12 7.0 L",
    icon = "engine.svg",
    info = "Ein gewaltiger 7-Liter-V12 – gebaut für Hypercars, pure Kraft und Sound.",
    itemName = "deimos",
    price = 280000,
    audioNameHash = "deimos",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.46,
        fDriveInertia = 0.62,
        fInitialDriveMaxFlatVel = 100.0,
        fClutchChangeRateScaleUpShift = 3.6,
        fClutchChangeRateScaleDownShift = 3.3
    }
},
[34] = {
    name = "Volvo Nebula2 2.5 L Turbo",
    icon = "engine.svg",
    info = "Tuning-Motor von Volvo mit 2,5 Litern Hubraum und kräftigem Drehmoment.",
    itemName = "nebula2",
    price = 14000,
    audioNameHash = "nebula2",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.28,
        fDriveInertia = 0.65,
        fInitialDriveMaxFlatVel = 76.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.5
    }
},
[35] = {
    name = "Mansory Bentley W12 6.0 L",
    icon = "engine.svg",
    info = "Luxus trifft Kraft – Mansory-getunter Bentley-W12-Motor mit weichem Ansprechverhalten.",
    itemName = "lg125mnsrybently",
    price = 190000,
    audioNameHash = "lg125mnsrybently",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.39,
        fDriveInertia = 0.68,
        fInitialDriveMaxFlatVel = 90.0,
        fClutchChangeRateScaleUpShift = 2.9,
        fClutchChangeRateScaleDownShift = 2.8
    }
},
[36] = {
    name = "Porsche RH4 Boxer 3.8 L",
    icon = "engine.svg",
    info = "Charakteristischer 6-Zylinder-Boxermotor – perfekte Balance und Sound.",
    itemName = "rh4",
    price = 175000,
    audioNameHash = "rh4",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.36,
        fDriveInertia = 0.64,
        fInitialDriveMaxFlatVel = 88.0,
        fClutchChangeRateScaleUpShift = 3.0,
        fClutchChangeRateScaleDownShift = 2.9
    }
},
[37] = {
    name = "Roxanne V8 Custom",
    icon = "engine.svg",
    info = "Individuell aufgebauter V8 mit kernigem Klang und aggressiver Leistungsentfaltung.",
    itemName = "roxanne",
    price = 90000,
    audioNameHash = "roxanne",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.33,
        fDriveInertia = 0.61,
        fInitialDriveMaxFlatVel = 84.0,
        fClutchChangeRateScaleUpShift = 2.8,
        fClutchChangeRateScaleDownShift = 2.7
    }
},
[38] = {
    name = "Dodge Charger V8 Oldtimer",
    icon = "engine.svg",
    info = "Klassischer US-V8 mit tiefem Grollen – purer Muscle-Car-Charme.",
    itemName = "st18char",
    price = 12000,
    audioNameHash = "st18char",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.31,
        fDriveInertia = 0.70,
        fInitialDriveMaxFlatVel = 78.0,
        fClutchChangeRateScaleUpShift = 2.4,
        fClutchChangeRateScaleDownShift = 2.2
    }
},
[39] = {
    name = "Mercedes-AMG M156 6.2L V8",
    icon = "engine.svg",
    info = "Der legendäre handgefertigte 6.2-Liter-AMG-V8 – rau, laut und kompromisslos.",
    itemName = "st11m156",
    price = 28000,
    audioNameHash = "st11m156",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.38,
        fDriveInertia = 0.68,
        fInitialDriveMaxFlatVel = 88.0,
        fClutchChangeRateScaleUpShift = 2.9,
        fClutchChangeRateScaleDownShift = 2.6
    }
},
[40] = {
    name = "Alfa Romeo 8C Competizione V8",
    icon = "engine.svg",
    info = "Emotionaler italienischer V8 mit Ferrari-Wurzeln – Musik für Puristen.",
    itemName = "st47af8c",
    price = 35000,
    audioNameHash = "st47af8c",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.36,
        fDriveInertia = 0.63,
        fInitialDriveMaxFlatVel = 85.0,
        fClutchChangeRateScaleUpShift = 2.8,
        fClutchChangeRateScaleDownShift = 2.7
    }
},
[41] = {
    name = "Chevrolet Camaro SS V8",
    icon = "engine.svg",
    info = "Klassischer Small Block mit viel Hubraum – amerikanische Muskelkraft pur.",
    itemName = "st42camss",
    price = 19000,
    audioNameHash = "st42camss",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.34,
        fDriveInertia = 0.72,
        fInitialDriveMaxFlatVel = 80.0,
        fClutchChangeRateScaleUpShift = 2.5,
        fClutchChangeRateScaleDownShift = 2.4
    }
},
[42] = {
    name = "BMW M3 E92 V8",
    icon = "engine.svg",
    info = "Der letzte frei saugende M3 – Hochdrehzahl-V8 mit 420 PS.",
    itemName = "st39e92",
    price = 27000,
    audioNameHash = "st39e92",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.33,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 86.0,
        fClutchChangeRateScaleUpShift = 3.0,
        fClutchChangeRateScaleDownShift = 2.8
    }
},
[43] = {
    name = "Mercedes-Benz V12 M275 Biturbo",
    icon = "engine.svg",
    info = "Samtiger 6.0-Liter-V12 mit zwei Turboladern – souveräne Kraftentfaltung.",
    itemName = "st31at5",
    price = 40000,
    audioNameHash = "st31at5",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.40,
        fDriveInertia = 0.75,
        fInitialDriveMaxFlatVel = 95.0,
        fClutchChangeRateScaleUpShift = 2.7,
        fClutchChangeRateScaleDownShift = 2.6
    }
},
[44] = {
    name = "Mitsubishi Eclipse 4G63 Turbo",
    icon = "engine.svg",
    info = "Bekannt aus Fast & Furious – kultiger 2.0-Turbo mit aggressivem Sound.",
    itemName = "st29b18cfnf",
    price = 16000,
    audioNameHash = "st29b18cfnf",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.28,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 78.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.4
    }
},
[45] = {
    name = "BMW M3 E30 S14B25",
    icon = "engine.svg",
    info = "Legendärer DTM-Vierzylinder – leicht, drehfreudig und laut.",
    itemName = "str021m3e30",
    price = 18000,
    audioNameHash = "str021m3e30",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.26,
        fDriveInertia = 0.52,
        fInitialDriveMaxFlatVel = 75.0,
        fClutchChangeRateScaleUpShift = 2.7,
        fClutchChangeRateScaleDownShift = 2.5
    }
},
[46] = {
    name = "Mazda RX-7 13B-TT",
    icon = "engine.svg",
    info = "Wankel-Power pur – einzigartiger Klang und blitzschnelle Drehzahlen.",
    itemName = "str02213bt",
    price = 25000,
    audioNameHash = "str02213bt",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.29,
        fDriveInertia = 0.48,
        fInitialDriveMaxFlatVel = 82.0,
        fClutchChangeRateScaleUpShift = 3.2,
        fClutchChangeRateScaleDownShift = 2.9
    }
},
[47] = {
    name = "Ford Focus ST 2.0L Turbo",
    icon = "engine.svg",
    info = "Sportlicher Reihenvierzylinder mit Turbolader – modern und effizient.",
    itemName = "str1520gdi",
    price = 14000,
    audioNameHash = "str1520gdi",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.25,
        fDriveInertia = 0.56,
        fInitialDriveMaxFlatVel = 77.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.5
    }
},
[48] = {
    name = "Corvette Z06 LS7 V8",
    icon = "engine.svg",
    info = "Amerikanischer Hochdrehzahl-V8 mit 7.0 Litern Hubraum – Rennstrecken-Gene pur.",
    itemName = "str4ls7",
    price = 35000,
    audioNameHash = "str4ls7",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.39,
        fDriveInertia = 0.65,
        fInitialDriveMaxFlatVel = 92.0,
        fClutchChangeRateScaleUpShift = 3.0,
        fClutchChangeRateScaleDownShift = 2.8
    }
},
[49] = {
    name = "Audi TT RS 2.5L TFSI",
    icon = "engine.svg",
    info = "Fünfzylinder-Turbo – legendärer Sound und starke Performance.",
    itemName = "prg25tfsi",
    price = 26000,
    audioNameHash = "prg25tfsi",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.32,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 85.0,
        fClutchChangeRateScaleUpShift = 2.9,
        fClutchChangeRateScaleDownShift = 2.7
    }
},
[50] = {
    name = "Koenigsegg Agera 5.0L V8 Twin Turbo",
    icon = "engine.svg",
    info = "Schwedische Ingenieurskunst – 1160 PS und absoluter Wahnsinn.",
    itemName = "aq88koe50v8",
    price = 600000,
    audioNameHash = "aq88koe50v8",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.50,
        fDriveInertia = 0.55,
        fInitialDriveMaxFlatVel = 108.0,
        fClutchChangeRateScaleUpShift = 3.8,
        fClutchChangeRateScaleDownShift = 3.4
    }
},
[51] = {
    name = "Pagani Huayra M158 AMG V12",
    icon = "engine.svg",
    info = "Kunstwerk auf Rädern – AMG V12 Biturbo mit exotischem Sound.",
    itemName = "prgm158",
    price = 450000,
    audioNameHash = "prgm158",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.46,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 102.0,
        fClutchChangeRateScaleUpShift = 3.6,
        fClutchChangeRateScaleDownShift = 3.3
    }
},
[52] = {
    name = "Porsche 911 GT3 RS 4.0",
    icon = "engine.svg",
    info = "Frei saugender Sechszylinder mit unvergleichlicher Drehfreude.",
    itemName = "lg157por911",
    price = 300000,
    audioNameHash = "lg157por911",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.42,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 98.0,
        fClutchChangeRateScaleUpShift = 3.4,
        fClutchChangeRateScaleDownShift = 3.2
    }
},
[53] = {
    name = "GM LS6 5.7L V8 Supercharged",
    icon = "engine.svg",
    info = "Klassischer LS-Motor mit Kompressor – brutal linearer Durchzug.",
    itemName = "kc98gmls6sc",
    price = 32000,
    audioNameHash = "kc98gmls6sc",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.38,
        fDriveInertia = 0.66,
        fInitialDriveMaxFlatVel = 89.0,
        fClutchChangeRateScaleUpShift = 2.9,
        fClutchChangeRateScaleDownShift = 2.7
    }
},
[54] = {
    name = "Lamborghini Gallardo V10",
    icon = "engine.svg",
    info = "Der ikonische 5.0-Liter-V10 – laut, bissig und kompromisslos italienisch.",
    itemName = "lg114oldgalv10",
    price = 220000,
    audioNameHash = "lg114oldgalv10",
    handlingOverwritesValues = true,
    handlingApplyOrder = 1,
    handling = {
        fInitialDriveForce = 0.44,
        fDriveInertia = 0.57,
        fInitialDriveMaxFlatVel = 100.0,
        fClutchChangeRateScaleUpShift = 3.5,
        fClutchChangeRateScaleDownShift = 3.1
      }
    }
  },

  --
  -- TYRES
  -- You can customise, or add new tyre options here.
  --
tyres = {
    [1] = {
        name = "Street Reifen",
        icon = "wheels/street.svg",
        info = "Standardreifen – ideal für den täglichen Stadtverkehr.",
        itemName = "street_tyres",
        price = 3500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.3,
            fTractionCurveMax = 2.6,
            fTractionLossMult = 0.7
        },
    },
    [2] = {
        name = "Sport Reifen",
        icon = "wheels/sport.svg",
        info = "Guter Grip auf trockenen Straßen, perfekt für sportliche Fahrer.",
        itemName = "sport_tyres",
        price = 5500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.5,
            fTractionCurveMax = 2.8,
            fTractionLossMult = 0.6
        },
    },
    [3] = {
        name = "High-End Reifen",
        icon = "wheels/highend.svg",
        info = "Maximaler Grip und Stabilität auf Asphalt – Rennfeeling pur.",
        itemName = "highend_tyres",
        price = 9000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.8,
            fTractionCurveMax = 3.1,
            fTractionLossMult = 0.5
        },
    },
    [4] = {
        name = "Tuner Reifen",
        icon = "wheels/tuner.svg",
        info = "Optimierte Straßenhaftung für getunte Fahrzeuge.",
        itemName = "tuner_tyres",
        price = 6500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.6,
            fTractionCurveMax = 2.9,
            fTractionLossMult = 0.55
        },
    },
    [5] = {
        name = "Drift Reifen",
        icon = "wheels/lowrider.svg",
        info = "Extra rutschig für präzises Driften und Showfahrten.",
        itemName = "drift_tyres",
        price = 5000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 1.5,
            fTractionCurveMax = 1.8,
            fTractionLossMult = 1.7,
            fLowSpeedTractionLossMult = 1.3
        },
    },
    [6] = {
        name = "Offroad Reifen",
        icon = "wheels/offroad.svg",
        info = "Für Gelände, Schotter und matschige Wege – Top Traktion.",
        itemName = "offroad_tyres",
        price = 7000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.2,
            fTractionCurveMax = 2.5,
            fTractionLossMult = 0.3
        },
    },
    [7] = {
        name = "Schnee Reifen",
        icon = "wheels/suv.svg",
        info = "Ideal für Schnee und Eis, weniger Grip auf Asphalt.",
        itemName = "snow_tyres",
        price = 8500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.7,
            fTractionCurveMax = 3.0,
            fTractionLossMult = 0.35,
            fLowSpeedTractionLossMult = 0.25
        },
    },
    [8] = {
        name = "Rally Reifen",
        icon = "wheels/muscle.svg",
        info = "Perfekte Balance zwischen Straße und Offroad.",
        itemName = "rally_tyres",
        price = 7500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.4,
            fTractionCurveMax = 2.8,
            fTractionLossMult = 0.45
        },
    },
    [9] = {
        name = "Regenreifen",
        icon = "wheels/bespoke.svg",
        info = "Bester Grip bei nasser Fahrbahn, schwächer auf trockenem Asphalt.",
        itemName = "rain_tyres",
        price = 7000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.6,
            fTractionCurveMax = 2.9,
            fTractionLossMult = 0.4
        },
    },
    [10] = {
        name = "Track Reifen",
        icon = "wheels/track.svg",
        info = "Rennstreckenreifen mit maximaler Performance.",
        itemName = "track_tyres",
        price = 9500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.9,
            fTractionCurveMax = 3.2,
            fTractionLossMult = 0.4
        },
    },
    [11] = {
        name = "SUV Reifen",
        icon = "wheels/suv.svg",
        info = "Höhere Stabilität, speziell für schwere Fahrzeuge.",
        itemName = "suv_tyres",
        price = 6000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.4,
            fTractionCurveMax = 2.6,
            fTractionLossMult = 0.6,
            fMass = 1800.0
        },
    },
    [12] = {
        name = "Open-Wheel Reifen",
        icon = "wheels/openwheel.svg",
        info = "Formelreifen für maximale Kurvengeschwindigkeit.",
        itemName = "openwheel_tyres",
        price = 12000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 3.1,
            fTractionCurveMax = 3.4,
            fTractionLossMult = 0.35,
            fDownforceModifier = 2.0
        },
    },
    [13] = {
        name = "Bike Reifen",
        icon = "wheels/bike.svg",
        info = "Optimiert für Motorräder – leicht, reaktionsschnell und griffig.",
        itemName = "bike_tyres",
        price = 4000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.8,
            fTractionCurveMax = 3.0,
            fTractionLossMult = 0.6
        },
    },
    [14] = {
        name = "Classic Reifen",
        icon = "wheels/originals.svg",
        info = "Klassische für Oldtimer, moderater Grip.",
        itemName = "classic_tyres",
        price = 4500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fTractionCurveMin = 2.0,
            fTractionCurveMax = 2.3,
            fTractionLossMult = 0.8
        },
    },
},

--
  -- BRAKES
  -- You can customise, or add new tyre options here.
  --
brakes = {
    [1] = {
        name = "Stock",
        icon = "brakes.svg",
        info = "Standard-Bremsen, wie sie ab Werk verbaut sind.",
        itemName = "stock_brakes",
        price = 0,
        handlingOverwritesValues = true,
        handlingApplyOrder = 1,
        handling = {
            fBrakeForce = 0.8
        },
    },
    [2] = {
        name = "Street",
        icon = "brakes.svg",
        info = "Verbesserte Bremsen für den täglichen Gebrauch.",
        itemName = "street_brakes",
        price = 1500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 2,
        handling = {
            fBrakeForce = 1.1
        },
    },
    [3] = {
        name = "Sport",
        icon = "brakes.svg",
        info = "Leistungsstarke Bremsen für sportliche Fahrer.",
        itemName = "sport_brakes",
        price = 3000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 3,
        handling = {
            fBrakeForce = 1.3
        },
    },
    [4] = {
        name = "Ceramic",
        icon = "brakes.svg",
        info = "Keramikbremsen mit enormer Bremskraft und Hitzebeständigkeit.",
        itemName = "ceramic_brakes",
        price = 5000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 4,
        handling = {
            fBrakeForce = 1.5
        },
    },
    [5] = {
        name = "Carbon",
        icon = "brakes.svg",
        info = "Ultra-leichte Carbon-Bremsen für maximale Performance.",
        itemName = "carbon_brakes",
        price = 8000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 5,
        handling = {
            fBrakeForce = 1.7
        },
    },
    [6] = {
        name = "Racing",
        icon = "brakes.svg",
        info = "High-End Rennbremsen mit kompromissloser Verzögerung.",
        itemName = "racing_brakes",
        price = 12000,
        handlingOverwritesValues = true,
        handlingApplyOrder = 6,
        handling = {
            fBrakeForce = 2.0
        },
      }
    },

  --
  -- DRIVETRAINS
  -- You can customise, or add new drivetain options here.
  --
  drivetrains = {
    [1] = {
      name = "AWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "awd_drivetrain",
      price = 10000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 0.5
      },
    },
    [2] = {
      name = "RWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "rwd_drivetrain",
      price = 10000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 0.0
      },
    },
    [3] = {
      name = "FWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "fwd_drivetrain",
      price = 10000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 1.0
      },
    }
  },

  --
  -- TURBOCHARGING
  -- Note: This category is unique as it just enables/disables mod 18 (the standard GTA turbocharging option)
  -- You can't add additional turbocharging options, you can only adjust/remove the existing one.
  -- You can't add any handling changes. Make new items/other categories for that.
  --
turbocharging = {
    [1] = {
        name = "Standard Turbo",
        icon = "turbo.svg",
        info = "Kleiner Turbolader mit moderater Leistungssteigerung.",
        itemName = "turbocharger",
        price = 7500,
        handlingOverwritesValues = true,
        handlingApplyOrder = 1,
        handling = {
            fInitialDriveForce = 1.1,
            fInitialDriveMaxFlatVel = 165.0,
            fClutchChangeRateScaleUpShift = 1.2,
            fClutchChangeRateScaleDownShift = 1.0
        },
      },
    },


  --
  -- DRIFT TUNING
  -- You can't add additional drift tuning options, you can only adjust/remove the existing one.
  --
  driftTuning = {
    [1] = {
      name = "Drift Tuning",
      icon = "wheels/tuner.svg",
      info = false,
      itemName = "drift_tuning_kit",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 5,
      handling = {
        fInitialDragCoeff = 12.22,
        fInitialDriveForce = 3.0,
        fInitialDriveMaxFlatVel = 155.0,
        fSteeringLock = 58.0,
        fTractionCurveMax = 0.6,
        fTractionCurveMin = 1.3,
        fTractionCurveLateral = 21.0,
        fLowSpeedTractionLossMult = 0.5,
        fTractionBiasFront = 0.49
      },
    }
  },

  gearboxes = {
    [1] = {
      name = "Manuelle Schaltung",
      icon = "transmission.svg",
      info = false,
      itemName = "manual_gearbox",
      price = 10000,
      manualGearbox = true,
      restricted = "combustion",
      minGameBuild = 3095
    }
  },

  --
  -- EXAMPLE CUSTOM NEW CATEGORY
  -- 
  transmissions = {
    [1] = {
        name = "4-Gang Getriebe",
        icon = "transmission.svg",
        info = "Klassisches 4-Gang-Schaltgetriebe – einfach, robust und zuverlässig.",
        itemName = "transmission_4speed",
        price = 4000,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 4
        }
    },
    [2] = {
        name = "5-Gang Getriebe",
        icon = "transmission.svg",
        info = "Ausgewogenes 5-Gang-Getriebe – gute Balance zwischen Beschleunigung und Geschwindigkeit.",
        itemName = "transmission_5speed",
        price = 5500,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 5
        }
    },
    [3] = {
        name = "6-Gang Getriebe",
        icon = "transmission.svg",
        info = "Sportliches 6-Gang-Schaltgetriebe für präzises Schalten.",
        itemName = "transmission_6speed",
        price = 7000,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 6
        }
    },
    [4] = {
        name = "7-Gang Doppelkupplung",
        icon = "transmission.svg",
        info = "Modernes 7-Gang-DSG mit blitzschnellen Gangwechseln.",
        itemName = "transmission_dsg",
        price = 9500,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 7
        }
    },
    [5] = {
        name = "8-Gang Getriebe",
        icon = "transmission.svg",
        info = "Effizientes 8-Gang-Getriebe – hohe Endgeschwindigkeit und sanftes Schalten.",
        itemName = "transmission_8speed",
        price = 10000,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 8
        }
    },
    [6] = {
        name = "Renngetriebe (6-Gang Sequential)",
        icon = "transmission.svg",
        info = "Ultraschnelles Renngetriebe mit sequenzieller Schaltung für maximale Performance.",
        itemName = "transmission_race",
        price = 15000,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 6
        }
    },
    [7] = {
        name = "E-Drive Direktantrieb",
        icon = "transmission.svg",
        info = "Direktantrieb für Elektrofahrzeuge – keine Gangwechsel, sofortige Leistung.",
        itemName = "transmission_electric",
        price = 12000,
        handlingOverwritesValues = true,
        handling = {
            nInitialDriveGears = 1
        }
    }
  }
}
  --
  -- -- IMPORTANT NOTE --
  -- inside of the config.lua, inside of a mechanic location's "tuning" section, you will need to add an
  -- additional line in order for it to show & be enabled in the tablet 
  --
  -- ["Transmissions"] = { enabled = true, requiresItem = false },
