local success1 = pcall(dofile, lfs.currentdir().."mods/aircraft/MiG-15bis/Cockpit/Scripts/devices.lua")
local success2 = pcall(dofile, lfs.currentdir().."mods/aircraft/MiG-15bis/Cockpit/Scripts/command_defs.lua")
if success1 and success2 then -- only define module if Mig-15 is installed

BIOS.protocol.beginModule("MiG-15bis", 0x2800)
BIOS.protocol.setExportModuleAircrafts({"MiG-15bis"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document

local parse_indication = BIOS.util.parse_indication

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineSetCommandTumb = BIOS.util.defineSetCommandTumb
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineToggleSwitchToggleOnly = BIOS.util.defineToggleSwitchToggleOnly
local defineFixedStepTumb = BIOS.util.defineFixedStepTumb
local defineFixedStepInput = BIOS.util.defineFixedStepInput
local defineVariableStepTumb = BIOS.util.defineVariableStepTumb
local defineString = BIOS.util.defineString
local defineRockerSwitch = BIOS.util.defineRockerSwitch
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch

dofile(lfs.currentdir().."mods/aircraft/MiG-15bis/Cockpit/Scripts/devices.lua")
dofile(lfs.currentdir().."mods/aircraft/MiG-15bis/Cockpit/Scripts/command_defs.lua")

--Clickable Controls

--Right PANEL

defineToggleSwitch("R1",  2,3001, 152,"Main Power Panel", "Accumulator Switch, ON/OFF")
defineToggleSwitch("R2",  2,3002, 153,"Main Power Panel",  "Generator Switch, ON/OFF")
defineToggleSwitch("R3",  2,3013, 151,"Main Power Panel",  "Nose Light Master Switch, ON/OFF")
defineToggleSwitch("R4",  2,3012, 154,"Main Power Panel",  "Trim Master Switch, ON/OFF")
defineToggleSwitch("R5",  2,3006, 155,"Main Power Panel",  "AGK-47B Artificial Horizon + DGMK-3 Switch, ON/OFF")
defineToggleSwitch("R6",  2,3014, 158,"Main Power Panel",  "Radio Switch, ON/OFF")
defineToggleSwitch("R7",  2,3010, 157,"Main Power Panel",  "Bombs Switch, ON/OFF")
defineToggleSwitch("R8",  2,3021, 156,"Main Power Panel",  "Emergency Drop Switch, ON/OFF")
defineToggleSwitch("R9",  2,3015, 159,"Main Power Panel",  "ARC Switch, ON/OFF")
defineToggleSwitch("R10",  2,3016, 160,"Main Power Panel",  "RV-2 Radio Altimeter Switch, ON/OFF")
defineToggleSwitch("R11",  2,3008, 161,"Main Power Panel",  "NR-23 Cannon Switch, ON/OFF")
defineToggleSwitch("R12",  2,3009, 162,"Main Power Panel",  "N-37D Cannon Switch, ON/OFF")
defineToggleSwitch("R13",  2,3020, 163,"Main Power Panel",  "ASP-3N Gunsight Switch, ON/OFF")
defineToggleSwitch("R14",  2,3023, 164,"Main Power Panel",  "S-13 Gun Camera Switch, ON/OFF")
defineToggleSwitch("R15",  2,3011, 81, "Main Power Panel", "Pitot and Clock Heater Switch, ON/OFF")

--Left PANEL-----------------------------------------------------------------------------------

defineToggleSwitch("L5",  2,3017,117,"Main Power Panel", "Transfer Pump Switch, ON/OFF")
defineToggleSwitch("L1",  2,3018,115,"Main Power Panel", "Booster Pump Switch, ON/OFF")
defineToggleSwitch("L3",  2,3019,120,"Main Power Panel", "Ignition Switch, ON/OFF")
defineToggleSwitch("L4",  2,3022,116,"Main Power Panel", "Instruments and Lights Switch, ON/OFF")
defineToggleSwitch("L2",  11,3002,118,"Main Power Panel", "Isolating Valve Switch, ON/OFF")
defineToggleSwitch("L6",  2,3005,149,"Main Power Panel", "Air Start Switch, ON/OFF")

--Signals

defineToggleSwitch("L12",  28,3001,129,"Main Power Panel", "Signal Flare Switch, ON/OFF")
defineToggleSwitch("L13",  28,3005,130,"Main Power Panel", "Signal Flare Yellow Button - Push to launch")
defineToggleSwitch("L14",  28,3002,131,"Main Power Panel", "Signal Flare Green Button - Push to launch")
defineToggleSwitch("L15",  28,3003,132,"Main Power Panel", "Signal Flare Red Button - Push to launch")
defineToggleSwitch("L16",  28,3004,133,"Main Power Panel", "Signal Flare White Button - Push to launch")

--BPRM

defineToggleSwitch("L7", 29,3022,146,"Main Power Panel", "ARC-5 NDB 1 Switch, ON/OFF")
defineToggleSwitch("L8", 29,3023,147,"Main Power Panel", "ARC-5 NDB 2 Switch, ON/OFF")
defineToggleSwitch("L9", 29,3024,148,"Main Power Panel", "ARC-5 NDB 3 Switch, ON/OFF")

defineToggleSwitch("L10", 14,3001,111,"Main Power Panel", "External Lights Switch, ON/OFF")
defineToggleSwitch("L11", 14,3002,80,"Main Power Panel", "Nose Light Switch, ON/OFF")

defineToggleSwitch("L17", 3,3005,125,"Main Power Panel", "Airbrake Switch, CLOSE/OPEN")

defineToggleSwitch("C5",12,3003,170,"Main Power Panel", "Emergency Flaps Valve Cover, OPEN/CLOSE")
defineToggleSwitch("C6",12,3004,166,"Main Power Panel", "Emergency Gears Valve Cover, OPEN/CLOSE")

definePushButton("C7",13,3004,210,"Main Power Panel", "Right Emergency Gear Release Handle - Pull to release")
definePushButton("C8",13,3005,209,"Main Power Panel", "Left Emergency Gear Release Handle - Pull to release")

definePushButton("C9",29,3014,173,"ARC", "ARC-5 TLG-TLF Switch, TLG/TLF")
--definePushButton("C10",30,3015,240,"RSI", "RSI-6K Forced Mode Switch, ON/OFF")
definePushButton("C11",30,3014,140,"RSI", "RSI-6K Receive/ARC Switch, RECEIVE/ARC")

definePushButton("C1",10,3001,82,"Weapon Panel", "Drop Tank Signal Switch, ON/OFF")
definePushButton("C2",4,3008,96,"Weapon Panel", "Tactical Release Switch, ON/OFF")
definePushButton("C3",4,3009,104,"Weapon Panel", "Emergency Release Button Cover, OPEN/CLOSE")
definePushButton("C4",4,3004,97,"Weapon Panel", "Emergency Release Button - Push to release")

defineRotary("compass", 21, 3001, 34, "Heading Knob", "compass rotate")
defineTumb("gear", 13, 3001, 71, 0.5, {-1, 1}, nil, false, "Landing Gear Control", "Gear Down/Neutral/Up")

defineRotary("QFE",19,3001,30,"Barometric Pressure QFE KdefineRotary")


-- -- ARC-5 radio compass
defineTumb("arc1", 29, 3004, 177, 0.1, {0, 0.3}, nil, false,"ARC","ARC-5 Frequency Band Switch") 
defineTumb("arc2", 29, 3003, 174, 0.1, {0, 0.4}, nil, false,"ARC","ARC-5 Function Selector Switch, OFF/COMP/ANT./LOOP")
defineRotary("arc4", 29, 3017, 175,"ARC","ARC-5 Tuning Crank")
defineToggleSwitch("arcnb", 29,3021,123,"ARC", "ARC-5 Near/Far NDB Switch, NEAR/FAR")
-- -- RSI-6K radio

defineTumb("rsi1", 30, 3001,126, 0.1, {0.1, 0.9}, nil, false,"RSI","RSI-6K Audio Volume Knob")
defineRotary("rsi2", 30, 3003, 128, "RSI", "RSI-6K Receiver Tuning Knob")
defineTumb("rsi3", 30, 3004,232, 0.03, {0.0, 1.0}, nil, false,"RSI","RSI-6K Wave Control Handle")
defineTumb("rsi4", 30, 3006,230, 0.03, {0.0, 1.0}, nil, false,"RSI","RSI-6K Antenna Control Handle")


-----springloaded
defineTumb("arc3",29,3006,178,1, {-1, 1}, nil, true,"Heading Knob","ARC-5 LOOP L-R Switch")
defineTumb("TrimElevators", 3, 3001,114, 1, {-1, 1}, nil, true,"Heading Knob","Elevator Trimmer Switch, PULL(CLIMB)/OFF/PUSH(DESCEND)")
defineTumb("TrimAilerons", 3, 3002,142, 1, {-1, 1}, nil, true,"Heading Knob","Aileron Trimmer Switch, LEFT/OFF/RIGHT")


--definePushButton("BC1",7,3001,23,"Clock", "Clock button L UP")
--definePushButton("BC2",7,3002,23,"Clock", "Clock button L DOWN")
defineRotary("CLK_LEFT_LVR_ROT", 7, 3003, 24, "Flight Status/Navigation Panel", "Clock Left Lever Rotate")
--definePushButton("BC3",7,3004,23,"Clock", "Clock button R")
defineRotary("CLK_RIGHT_LVR_ROT", 7, 3005, 26, "Flight Status/Navigation Panel", "Clock Right Lever Rotate")

-- -Axis


-- -- elements["pnt_204"]		= default_movable_axis(_("Throttle Friction Lever"), devices.CONTROL_INTERFACE, control_commands.Mig15_Command_FrictionLever, 204, 0.0, 0.2, true, false)

-- HydroSystem
-- -- elements["pnt_171"]		= default_axis(_("Emergency Flaps Valve"), devices.HYDROSYS_INTERFACE, hydraulic_commands.Mig15_Command_EmergencyFlapsValve, 171, 1.0, 0.05, true, false, false)
-- -- elements["pnt_167"]		= default_axis(_("Emergency Gears Valve"), devices.HYDROSYS_INTERFACE, hydraulic_commands.Mig15_Command_EmergencyGearsValve, 167, 1.0, 0.05, true, false, false)

-- -- elements["pnt_186"]		= default_axis(_("Emergency System Filling Valve"), devices.HYDROSYS_INTERFACE, hydraulic_commands.Mig15_Command_EmergencySystemFilling, 186, 1.0, 0.05, true, false, false)
-- -- elements["pnt_242"]		= default_axis(_("Air Net Valve"), devices.HYDROSYS_INTERFACE, hydraulic_commands.Mig15_Command_AirNetValve, 242, 1.0, 0.05, true, false, false)
-- -- elements["pnt_241"]		= default_axis(_("Cockpit Filling Valve"), devices.HYDROSYS_INTERFACE, hydraulic_commands.Mig15_Command_CockpitFillingValve, 241, 1.0, 0.05, true, false, false)

-- Oxygen System
-- -- elements["pnt_141"]		= default_axis(_("Oxygen Supply Valve"), devices.OXYGEN_INTERFACE, oxygen_commands.Mig15_Command_OxygenSupplyValve, 141, 0.0, 0.1, false, false, false)
-- -- elements["pnt_143"]		= default_axis(_("Air Diluter Valve"), devices.OXYGEN_INTERFACE, oxygen_commands.Mig15_Command_AirValve, 143, 0.0, -0.1, false, false, false)
-- -- elements["pnt_243"]		= default_axis(_("Oxygen Emergency Valve"), devices.OXYGEN_INTERFACE, oxygen_commands.Mig15_Command_OxygenEmergencyValve, 243, 0.0, 0.1, false, false, false)

-- Conditioning and Heating System
-- -- elements["pnt_187"]		= default_axis(_("Cockpit Air Valve"), devices.AIR_INTERFACE, air_commands.Mig15_Command_CockpitAirValve, 187, 0.0, 0.1, false, false, false)
-- -- elements["pnt_086"]		= default_axis(_("Ventilation Valve"), devices.AIR_INTERFACE, air_commands.Mig15_Command_VentilationValve, 086, 0.0, -1.0, true, false, false)

-- Internal Lights System
-- -- elements["pnt_184"]		= default_axis_limited(_("Left UV Light Rheostat"), devices.LIGHT_SYSTEM, lights_command.Mig15_Command_LeftUVLight_Control, 184, 0.0, 0.1, false, false, {0.23, 0.82})
-- -- elements["pnt_185"]		= default_axis_limited(_("Right UV Light Rheostat"), devices.LIGHT_SYSTEM, lights_command.Mig15_Command_RightUVLight_Control, 185, 0.0, 0.1, false, false, {0.23, 0.82})
-- -- elements["pnt_220"]		= default_axis_limited(_("Panels Light Rheostat"), devices.LIGHT_SYSTEM, lights_command.Mig15_Command_PanelLight_Control, 220, 0.0, 0.1, false, false, {0.1, 0.9})


-- Power Plant
-- -- elements["pnt_208"]		= default_axis_limited(_("Engine Stop Lever, CLOSE/OPEN"), devices.ENGINE_INTERFACE, engine_commands.Mig15_Command_EngineStop, 208, -1.0, 0.3, true, false, {0.0, 1.0})

-- Devices

-- AGK-47B
-- -- elements["pnt_013"]			= default_axis(_("AGK-47B Artificial Horizon Zero Pitch Trim Knob"), devices.AGK47B, device_commands.Button_3, 13, 0.0, 0.1,false,false,false)

-- ASP-3N Gunsight
-- -- elements["pnt_103"] = default_axis(_("ASP-3N Gunsight Target Wingspan Adjustment Dial (meters)"), devices.ASP_3N, device_commands.Button_1, 103, 0.0, -0.1, false, false, false)
-- -- elements["pnt_102"] = default_axis(_("ASP-3N Gunsight Brightness Knob"), devices.ASP_3N, device_commands.Button_4, 102, 0.0, -0.2, false, false, false)
-- -- elements["pnt_201"] = default_axis(_("ASP-3N Gunsight Target Distance Knob"),devices.ASP_3N, device_commands.Button_2,201, 0.0, 0.1, true, false, false)

-- ARC-5 radio compass
-- -- elements["pnt_180"]		= default_axis_limited(_("ARC-5 Audio Volume Knob"), devices.ARC_5, ARC_5_commands.CMD_ARC_5_VOLUME, 180, 0.8, 0.5, false, false, {0.1, 0.9})
-- -- elements["pnt_181"]		= default_axis_limited(_("ARC-5 Scale Light Knob"), devices.ARC_5, ARC_5_commands.CMD_ARC_5_LIGHT, 181, 0.8, 0.5, false, false, {0.1, 0.9})

-- RSI
-- -- elements["pnt_126"]		= default_axis_limited(_("RSI-6K Audio Volume Knob"), devices.RSI_6K, RSI_6K_commands.Mig15_Command_RSI6K_Volume, 126, 0.8, 0.2, false, false, {0.1, 0.9})
-- -- elements["pnt_232"]        = default_axis_limited(_("RSI-6K Wave Control Handle"), devices.RSI_6K, RSI_6K_commands.Mig15_Command_RSI6K_SetTransmitterFrequency, 232, 0.8, 0.03, true, false, {0.0, 1.0})
-- -- elements["pnt_230"]        = default_axis_limited(_("RSI-6K Antenna Control Handle"), devices.RSI_6K, RSI_6K_commands.Mig15_Command_RSI6K_SetAntennaFrequency, 230, 0.8, 0.03, true, false, {0.0, 1.0})

------------- buttons not in Mega !!!!!!!!!
--------------------------------------------



--Lights



defineIndicatorLight("AC_GEN_LIGHT", 57, "Main Warning Lights", "AC_GEN_LIGHT")
defineIndicatorLight("lamp_Ignition",58, "Main Warning Lights", "lamp_Ignition")
defineIndicatorLight("lamp_IsolatingValve",119,  "Main Warning Lights", "lamp_IsolatingValve")
defineIndicatorLight("lamp_LeftGearExt",75,  "Main Warning Lights", "lamp_LeftGearExt")
defineIndicatorLight("lamp_LeftGearRet",74,  "Main Warning Lights", "lamp_LeftGearRet")
defineIndicatorLight("lamp_RightGearExt",79,  "Main Warning Lights", "lamp_RightGearExt")
defineIndicatorLight("lamp_RightGearRet",78,  "Main Warning Lights", "lamp_RightGearRet")
defineIndicatorLight("lamp_NoseGearExt",77,  "Main Warning Lights", "lamp_NoseGearExt")
defineIndicatorLight("lamp_NoseGearRet",76,  "Main Warning Lights", "lamp_NoseGearRet")
defineIndicatorLight("lamp_ExtendGears",53,  "Main Warning Lights", "lamp_ExtendGears")
defineIndicatorLight("lamp_Remain300",56,  "Main Warning Lights", "lamp_Remain300")
defineIndicatorLight("lamp_AftEmpty",50,  "Main Warning Lights", "lamp_AftEmpty")
defineIndicatorLight("lamp_DropTanks",52,  "Main Warning Lights", "lamp_DropTanks")
defineIndicatorLight("lamp_BoostPressure",51,  "Main Warning Lights", "lamp_BoostPressure")
defineIndicatorLight("lamp_TrimmerNeutral",113,  "Main Warning Lights", "lamp_TrimmerNeutral")
defineIndicatorLight("lamp_FlapsExt",59,   "Main Warning Lights", "lamp_FlapsExt")
defineIndicatorLight("lamp_AirBrakeExt",124,  "Main Warning Lights", "lamp_AirBrakeExt")
defineIndicatorLight("lamp_FireDetected",135, "Main Warning Lights", "lamp_FireDetected")
defineIndicatorLight("lamp_ARC_5",183,  "Main Warning Lights", "lamp_ARC_5")
defineIndicatorLight("lamp_Marker",54,   "Main Warning Lights", "lamp_Marker")
defineIndicatorLight("lamp_GunCamera",55,   "Main Warning Lights", "lamp_GunCamera")
defineIndicatorLight("N37D_Ready_Lamp",95,"Lights","N37D_Ready_Lamp")
defineIndicatorLight("NR23_TOP_Ready_Lamp",93, "Lights","NR23_TOP_Ready_Lamp")
defineIndicatorLight("NR23_BOTTOM_Ready_Lamp",94,"Lights","NR23_BOTTOM_Ready_Lamp")
defineIndicatorLight("Tactical_Rel_Lamp",100,"Lights","Bombs_Tactical_Rel")
defineIndicatorLight("LEFT_BOMB_Lamp",98,"Lights","LEFT_BOMB")
defineIndicatorLight("RIGHT_BOMB_Lamp",99,"Lights","RIGHT_BOMB")


-- Light System
defineIndicatorLight("light_ARC_5_scale",218, "Lights", "light_ARC_5_scale")
defineIndicatorLight("light_LeftUV",226,  "Lights", "light_ARC_5_scale")
defineIndicatorLight("light_CenterUV",215,  "Lights", "light_ARC_5_scale")
defineIndicatorLight("light_RightUV",227,  "Lights", "light_ARC_5_scale")
defineIndicatorLight("light_Panels",217,  "Lights", "light_ARC_5_scale")
defineIndicatorLight("light_AuxLeftPanel",216,  "Lights", "light_ARC_5_scale")






----gauges, data

defineFloat("CLK_CURRTIME_HOURS", 15, {0, 1}, "Clock", "Current time - hours")
defineFloat("CLK_CURRTIME_MINUTES", 16, {0, 1}, "Clock", "Current time - minutes")
defineFloat("CLK_FLIGHT_HOURS", 18, {0, 1}, "Clock", "Flight hours")
defineFloat("CLK_FLIGHT_MINUTES", 19, {0, 1}, "Clock", "Flight minutes")
defineFloat("CLK_FLIGHT_TIME_METER_STATUS", 22, {0.5, 0}, "Clock", "Flight time meter status")
defineFloat("CLK_seconds_meter_time_minutes	", 20, {1, 0}, "Clock", "Stop-watch minutes")
defineFloat("CLK_seconds_meter_time_seconds", 17, {0, 1}, "Clock", "Stop-watch seconds")

defineFloat("Panel_Shake_Z",205,{-0.8,0.8},"Panel","Panel_Shake_Z")
defineFloat("Panel_Shake_Y",204,{-0.8,0.8},"Panel","Panel_Shake_Y")
defineFloat("Panel_Shake_X",206,{-0.5,0.5},"Panel","Panel_Shake_X")
defineFloat("EngineThrottle",205,{0.0, 1.0},"Panel","EngineThrottle")
defineFloat("StickPitch",191,{-1, 1},"Panel","StickPitch")
defineFloat("StickBank",192,{-1, 1},"Panel","StickBank")
defineFloat("WheelBrakeLever",199,{0, 0.5, 1},"Panel","WheelBrakeLever")
defineFloat("RudderPedals",211,{-1, 1},"Panel","RudderPedals")
defineFloat("Canopy",225,{0,1},"Panel","Canopy")
defineFloat("LeftCanopyLever",223,{0,1},"Panel","LeftCanopyLever")
defineFloat("RightCanopyLever",222,{0,1},"Panel","RightCanopyLever")
defineFloat("AftCanopyLever",224,{0,1},"Panel","AftCanopyLever")
defineFloat("Variometer",14,{0.0,		0.075,	0.151,	0.24,	0.352,	0.401,	0.448,	0.5,	0.553,	0.6,	0.649,	0.76,	0.848,  0.925,  1.0},"Panel","Variometer")
defineFloat("Altimeter_km",28,{0.0, 1.0},"Panel","Altimeter_km")
defineFloat("Altimeter_m",29,{0.0, 1.0},"Panel","Altimeter_m")
defineFloat("Altimeter_Pressure",31,{-0.0535, 0.0, 1.0},"Panel","Altimeter_Pressure")
----
--KUS 1200
defineFloat("IAS",4,{0.0,   1.0},"KUS 1200","IAS")
defineFloat("TAS",5,{0.0,   1.0},"KUS 1200","TAS")
defineFloat("MACH",27,{0.12,	0.215,	1.0},"KUS 1200","MACH")
-- AGK-47B
defineFloat("AGK_47B_roll",6,{-1.0, 1.0},"AGK-47B","AGK_47B_roll")
defineFloat("AGK_47B_pitch",7,{1.0, -1.0},"AGK-47B","AGK_47B_pitch")
defineFloat("AGK_47B_failure_flag",11,{0.0, 1.0},"AGK-47B","AGK_47B_failure_flag")
defineFloat("AGK_47B_sideslip",8,{-1.0, 1.0},"AGK-47B","")
defineFloat("AGK_47B_turn",9,{-1.0, 1.0},"AGK-47B","AGK_47B_turn")
defineFloat("AGK_47B_horizon",10,{-1.0, 1.0},"AGK-47B","AGK_47B_horizon")
---------------------------------------------------
-- PRV-46
defineFloat("PRV_46_RAlt",35,{-1.0, 0.0, 1.0},"PRV-46","PRV_46_RAlt")
---------------------------------------------------
-- PDK-45
defineFloat("HeadingScale",32,{1.0, 0.0},"PDK-45","HeadingScale")
defineFloat("Heading",33,{0.0, 1.0},"PDK-45","Heading")
---------------------------------------------------
-- Weapon Sys
-- defineFloat("N37D_Ready_Lamp",95,{0.0, 1.0},"Weapon Sys","N37D_Ready_Lamp")
-- defineFloat("NR23_TOP_Ready_Lamp",93, {0.0, 1.0},"Weapon Sys","NR23_TOP_Ready_Lamp")
-- defineFloat("NR23_BOTTOM_Ready_Lamp",94,{0.0, 1.0},"Weapon Sys","NR23_BOTTOM_Ready_Lamp")
defineFloat("Tactical_Rel_Lamp",100,{0.0, 1.0},"Weapon Sys","Tactical_Rel_Lamp")
defineFloat("LEFT_BOMB_Lamp",98,{0.0, 1.0},"Weapon Sys","LEFT_BOMB_Lamp")
defineFloat("RIGHT_BOMB_Lamp",99,{0.0, 1.0},"Weapon Sys","RIGHT_BOMB_Lamp")
defineFloat("A_knopf",194, {0.0, 1.0},"Weapon Sys","A_knopf")
defineFloat("B_1_knopf ",193,{0.0, 1.0},"Weapon Sys","B_1_knopf")
defineFloat("B_2_knopf", 195,{0.0, 1.0},"Weapon Sys","B_2_knopf")
defineFloat("Cover_knopf",196,{0.0, 1.0},"Weapon Sys","Cover_knopf")
-- electric system
defineFloat("VoltAmperMeter",83,{-1.0, 0.0, 1.0},"electric system","VoltAmperMeter")
defineFloat("lamps_lightness",244,{0.0, 1.0},"electric system","lamps_lightness")
-- hydraulic system
defineFloat("HydraulicPressureMain",168,{0.0, 1.0},"hydraulic system","HydraulicPressureMain")
defineFloat("HydraulicPressureGain",139,{0.0, 1.0},"hydraulic system","HydraulicPressureGain")
defineFloat("HydraulicPressureAirFlaps",169,{0.0, 1.0},"hydraulic system","HydraulicPressureAirFlaps")
defineFloat("HydraulicPressureAirGears",165,{0.0, 1.0},"hydraulic system","HydraulicPressureAirGears")
defineFloat("HydraulicPressureMainAir",172,{0.0, 1.0},"hydraulic system","HydraulicPressureMainAir")
-- gear system
defineFloat("LeftBrakePressure",121,{0.0, 1.0},"gear system","LeftBrakePressure")
defineFloat("RightBrakePressure",122,{0.0, 1.0},"gear system","RightBrakePressure")
-- fuel system
defineFloat("FuelQuantity",47,{0.0,		0.047,	0.136,	0.22,	0.38,	0.52,	0.631,	0.755,	0.869,	0.921,	1.0},"fuel system","FuelQuantity")
-- air system
defineFloat("CanopyAirValveIndication",188,{0.0,	1.0},"air system","CanopyAirValveIndication")
defineFloat("CockpitAltitude",39,{0.008,	1.0},"air system","CockpitAltitude")
defineFloat("PressureDifference",40, {0.0,		0.243,	1.0},"air system","PressureDifference")
-- oxygen system
defineFloat("OxygenPressure",48,{0.0,	1.0},"oxygen system","OxygenPressure")
defineFloat("FlowBlinker",60,{0.0,	1.0},"oxygen system","FlowBlinker")
defineFloat("FlowPressure",49, {0.0,	0.9,	1.0},"oxygen system","FlowPressure")
-- Engine
defineFloat("EngineTachometer",42,{0.0, 1.0},"Engine","EngineTachometer")
defineFloat("EngineTemperature",41,{0.0, 1.0},"Engine","EngineTemperature")
defineFloat("OilTemperature",45, {0.0, 1.0},"Engine","OilTemperature")
defineFloat("OilPressure",44,{0.0, 1.0},"Engine","OilPressure")
defineFloat("EngineFuelPressure",43, {0.0, 1.0},"Engine","EngineFuelPressure")
defineFloat("FuelPressure",46,{0.0, 1.0},"Engine","FuelPressure")
-- radio compass

defineFloat("ARC5_Band",238, {0.0, 0.4},"radio compass","ARC5_Band")
defineFloat("ARC5_TuningMeter",176, {0.0, 1.0},"radio compass","ARC5_TuningMeter")
defineFloat("ARC5_Tuning",175,{0.0, 1.0},"radio compass","ARC5_Tuning")
defineFloat("ARC5_Bearing",38,{0.0, 1.0},"radio compass","ARC5_Bearing")

--defineFloat("ARC5_Scale",814,{1.0, 0.0},"radio compass","")

defineFloat("ARC5_FreqScale",239,{0.0,	0.0695,	0.14,	0.2865,	0.43,	0.7155,	1.0},"radio compass","ARC5_FreqScale")
-- Radio RSI-6K
defineFloat("RadioAntennaPower",235,{0.0, 1.0},"Radio RSI-6K","RadioAntennaPower")
defineFloat("RadioReceiverKnob",128,{0.0, 1.0},"Radio RSI-6K","RadioReceiverKnob")
defineFloat("RadioReceiverInd",127,{0.036, 0.961},"Radio RSI-6K","RadioReceiverInd")
defineFloat("RadioReceiverGauge",144,{0.026, 0.957},"Radio RSI-6K","RadioReceiverGauge")
defineFloat("ASP_3N_Range",245,{0.0, 1.0},"Radio RSI-6K","ASP_3N_Range")
defineFloat("CanopyDamages ",65,{0,1},"Radio RSI-6K","CanopyDamages")

devices = nil
device_commands = nil

BIOS.protocol.endModule()
end
