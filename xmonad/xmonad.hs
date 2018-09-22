import XMonad
import XMonad.Layout.Spiral
import XMonad.Layout.Tabbed
import XMonad.Layout.SimpleFloat
-- import XMonad.Layout.LayoutHints
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.UrgencyHook
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

tabConfig = def{
     activeBorderColor = "#7C7C7C",
     activeTextColor = "#CEFFAC",
     activeColor = "#000000",
     inactiveBorderColor = "#7C7C7C",
     inactiveTextColor = "#EEEEEE",
     inactiveColor = "#000000"}

myLayout =
    Tall (1) (3/100) (1/2) |||
    Mirror (Tall (1) (3/100) (1/2)) |||
    tabbed shrinkText tabConfig |||
    spiral (6/7) |||
    simpleFloat |||
    Full



main = do
    xmproc <- spawnPipe "/usr/bin/xmobar"

    xmonad $ withUrgencyHook NoUrgencyHook $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ myLayout
        -- , startupHook = do
        --     docksStartupHook -- To fix Struts
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , handleEventHook = docksEventHook
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        , terminal = "terminator"
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xset dpms force off; xlock -mode blank")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        -- , ((0, 0x1008FF11), spawn "amixer -D pulse set Master 2%-")
        -- , ((0, 0x1008FF13), spawn "amixer -D pulse set Master 2%+")
        -- , ((0, 0x1008FF12), spawn "amixer -D pulse set Master toggle")
        , ((mod4Mask, xK_Next), spawn "amixer -D pulse set Master 2%-")
        , ((mod4Mask, xK_Prior), spawn "amixer -D pulse set Master 2%+")
        , ((mod4Mask, xK_End), spawn "amixer -D pulse set Master toggle")
        ]
