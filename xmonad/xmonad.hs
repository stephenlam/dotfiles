import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ScreenCorners
import XMonad.Layout.NoBorders

caveGray06 = "#e2dfe7"
caveViolet = "#955ae7"

main = xmonad $ defaultConfig
    { terminal = "konsole"
    , layoutHook = myLayoutHook
    , handleEventHook = myEventHook
    , startupHook = myStartupHook
    , borderWidth = 2
    , normalBorderColor = caveGray06
    , focusedBorderColor = caveViolet
    }

myLayoutHook = avoidStruts . smartBorders $ layoutHook defaultConfig

myEventHook = screenCornerEventHook

myStartupHook = do
    addScreenCorner SCLowerLeft
