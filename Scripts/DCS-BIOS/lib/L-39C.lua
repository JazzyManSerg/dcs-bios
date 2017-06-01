local success1 = pcall(dofile, lfs.currentdir().."Mods/aircraft/L-39C/Cockpit/devices.lua")
local success2 = pcall(dofile, lfs.currentdir().."Mods/aircraft/L-39C/Cockpit/command_defs.lua")
if success1 and success2 then -- only define module if L-39C/Cockpit/command_def is installed

BIOS.protocol.beginModule("L-39C", 0x3400)
BIOS.protocol.setExportModuleAircrafts({"L-39C"})

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

dofile(lfs.currentdir().."Mods/aircraft/L-39C/Cockpit/devices.lua")
dofile(lfs.currentdir().."Mods/aircraft/L-39C/Cockpit/command_defs.lua")

--Clickable Controls
---- Kadda gave it to me
  
  -- electric system
-- defineToggleSwitch("BatterySw",  4,3001, 141,"electric system", "Accumulator Switch, ON/OFF")
-- defineToggleSwitch("MainGeneratorSw",  4,3002, 142,"electric system", "Main Generator Switch, ON/OFF")
-- defineToggleSwitch("EmergGeneratorSw",  4,3003, 143,"electric system", "EmergGeneratorSw")
-- defineToggleSwitch("NetSw",  4,3004, 502,"electric system", "NetSw")
-- defineToggleSwitch("FwdTurboSw",  4,3005, 315,"electric system", "FwdTurboSw")
-- defineToggleSwitch("FwdTurboSwCover",  4,3006, 314,"electric system", "FwdTurboSwCover")
-- defineToggleSwitch("AftTurboSw",  4,3007, 142,"electric system", "AftTurboSw")
-- defineToggleSwitch("AftTurboSwCover",  4,3008, 142,"electric system", "AftTurboSwCover")
-- defineToggleSwitch("StopTurboSw",  4,3009, 142,"electric system", "Main Generator Switch, ON/OFF")
-- defineToggleSwitch("StopTurboSwCover",  4,3010, 142,"electric system", "StopTurboSwCover")
-- defineToggleSwitch("FwdEngineSw",  4,3011, 142,"electric system", "FwdEngineSw")
-- defineToggleSwitch("FwdEngineSwCover",  4,3012, 142,"electric system", "FwdEngineSwCover")
-- defineToggleSwitch("AftEngineSw",  4,3013, 142,"electric system", "AftEngineSw")
-- defineToggleSwitch("AftEngineSwCover",  4,3014, 142,"electric system", "AftEngineSwCover")
-- defineToggleSwitch("FwdStopEngineSw",  4,3015, 142,"electric system", "FwdStopEngineSw")
-- defineToggleSwitch("FwdStopEngineSwCover",  4,3016, 142,"electric system", "FwdStopEngineSwCover")
-- defineToggleSwitch("AftStopEngineSw",  4,3017, 142,"electric system", "AftStopEngineSw")
-- defineToggleSwitch("AftStopEngineSwCover",  4,3018, 142,"electric system", "AftStopEngineSwCover")
-- defineToggleSwitch("EngineStartModeSw",  4,3019, 142,"electric system", "EngineStartModeSw")
-- defineToggleSwitch("EngineStartModeSwCover",  4,3020, 142,"electric system", "EngineStartModeSwCover, ON/OFF")
-- defineToggleSwitch("FwdEmergFuelSw",  4,3021, 142,"electric system", "FwdEmergFuelSw")
-- defineToggleSwitch("FwdEmergFuelSwCover",  4,3022, 142,"electric system", "FwdEmergFuelSwCover")
-- defineToggleSwitch("AftEmergFuelSw",  4,3023, 142,"electric system", "AftEmergFuelSw")
-- defineToggleSwitch("AftEmergFuelSwCover",  4,3024, 142,"AftEmergFuelSwCover")
-- defineToggleSwitch("CB_Engine",  4,3025, 142,"electric system", "CB_Engine")
-- defineToggleSwitch("CB_AGD_GMK",  4,3026, 142,"electric system", "CB_AGD_GMK")
-- defineToggleSwitch("CB_Converter1Sw",  4,3027, 142,"electric system", "CB_Converter1Sw")
-- defineToggleSwitch("CB_Converter2Sw",  4,3028, 142,"electric system", "CB_Converter2Sw")
-- defineToggleSwitch("CB_RTL",  4,3029, 142,"electric system", "CB_RTL")
-- defineToggleSwitch("CB_MRP_RV",  4,3030, 142,"electric system", "CB_MRP_RV")
-- defineToggleSwitch("CB_ISKRA",  4,3031, 142,"electric system", "CB_ISKRA")
-- defineToggleSwitch("CB_EMERG_SRO",  4,3032, 142,"electric system", "CB_EMERG_SRO")
-- defineToggleSwitch("CB_EMERG_ISKRA",  4,3033, 142,"electric system", "CB_EMERG_ISKRA")
-- defineToggleSwitch("CB_WingTanks",  4,3034, 142,"electric system", "CB_WingTanks")
-- defineToggleSwitch("CB_RIO",  4,3035, 142,"electric system", "CB_RIO")
-- defineToggleSwitch("CB_SDU",  4,3036, 142,"electric system", "CB_SDU")
-- defineToggleSwitch("CB_HeatingSensorAOA",  4,3037, 142,"electric system", "CB_HeatingSensorAOA")
-- defineToggleSwitch("CB_Weapon",  4,3038, 142,"electric system", "CB_Weapon")
-- defineToggleSwitch("CB_Tanks",  4,3039, 142,"electric system", "CB_Tanks")
-- defineToggleSwitch("CB_AirConditioning",  4,3040, 142,"electric system", "CB_AirConditioning")
-- defineToggleSwitch("CB_AntiIce",  4,3041, 142,"electric system", "CB_AntiIce")
-- defineToggleSwitch("CB_PVD_Left",  4,3042, 142,"electric system", "CB_PVD_Left")
-- defineToggleSwitch("CB_PVD_Right",  4,3043, 142,"electric system", "CB_PVD_Right")
-- defineToggleSwitch("CB_PT500C",  4,3044, 142,"electric system", "CB_PT500C")
-- defineToggleSwitch("CB_ARC",  4,3045, 142,"electric system", "CB_ARC")
-- defineToggleSwitch("CB_SRO",  4,3046, 142,"electric system", "CB_SRO")
-- defineToggleSwitch("CB_SeatHelmet",  4,3047, 142,"electric system", "CB_SeatHelmet")
-- defineToggleSwitch("CB_Gears",  4,3048, 142,"electric system", "CB_Gears")
-- defineToggleSwitch("CB_Control",  4,3049, 142,"electric system", "CB_Control")
-- defineToggleSwitch("CB_Signaling",  4,3050, 142,"electric system", "CB_Signaling")
-- defineToggleSwitch("CB_ANO",  4,3051, 142,"electric system", "CB_ANO")
-- defineToggleSwitch("CB_SpotlightLeft",  4,3052, 142,"electric system", "CB_SpotlightLeft")
-- defineToggleSwitch("CB_SpotlightRight",  4,3053, 142,"electric system", "CB_SpotlightRight")
-- defineToggleSwitch("CB_LightRed",  4,3054, 142,"electric system", "CB_LightRed")
-- defineToggleSwitch("CB_LightWhite",  4,3055 142,"electric system", "CB_LightWhite")
-- defineToggleSwitch("CB_StartPanel",  4,3056, 142,"electric system", "CB_StartPanel")
-- defineToggleSwitch("CB_BoosterPump",  4,3057, 142,"electric system", "CB_BoosterPump")
-- defineToggleSwitch("CB_Ignition1",  4,3058, 142,"electric system", "CB_Ignition1")
-- defineToggleSwitch("CB_Ignition2",  4,3059, 142,"electric system", "CB_Ignition2")
-- defineToggleSwitch("CB_EngineInstruments",  4,3060, 142,"electric system", "CB_EngineInstruments")
-- defineToggleSwitch("CB_Fire",  4,3061, 142,"electric system", "CB_Fire")
-- defineToggleSwitch("CB_EmergJettison",  4,3062, 142,"electric system", "CB_EmergJettison")
-- defineToggleSwitch("CB_SARPP",  4,3063, 142,"electric system", "CB_SARPP")
-- defineToggleSwitch("CB_Seat_Instructor",  4,3064, 142,"electric system", "CB_Seat_Instructor")
-- defineToggleSwitch("CB_Signal_Instructor",  4,3065, 142,"electric system", "CB_Signal_Instructor")
-- defineToggleSwitch("CB_Weapon_Instructor",  4,3066, 142,"electric system", "CB_Weapon_Instructor")
-- defineToggleSwitch("CB_Ground_SPU",  4,3067, 142,"electric system", "CB_Ground_SPU")
-- defineToggleSwitch("LeftPitotHeatingOn",  4,3068, 142,"electric system", "LeftPitotHeatingOn")
-- defineToggleSwitch("LeftPitotHeatingOff",  4,3069, 142,"electric system", "LeftPitotHeatingOff")
-- defineToggleSwitch("RightPitotHeatingOn",  4,3070, 142,"electric system", "RightPitotHeatingOn")
-- defineToggleSwitch("RightPitotHeatingOff",  4,3071, 142,"electric system", "RightPitotHeatingOff")
-- defineToggleSwitch("EmergencyEngineInstrumentsPower",  4,3072, 142,"electric system", "EmergencyEngineInstrumentsPower")



devices = nil
device_commands = nil

BIOS.protocol.endModule()
end
