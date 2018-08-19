import XMonad
import XMonad.Actions.Volume
import XMonad.Util.Dzen
import qualified Data.Map as M
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.XMonad
import XMonad.Prompt.Shell
import XMonad.Hooks.Script
import System.Exit

alert = dzenConfig return . show

systemPromptCmds = [
        ("Shutdown", spawn "sudo poweroff"),
        ("Reboot", spawn "sudo reboot"),
        ("Exit", io $ exitWith ExitSuccess),
        ("Lock", spawn "xtrlock -b"),
        ("Restart", restart "xmonad" True)
    ]

main = xmonad $ defaultConfig
    { normalBorderColor = "#272727"
    , focusedBorderColor = "#000f84"
    , modMask = mod4Mask
    , terminal = "konsole"
    , startupHook = do
        spawn "~/config/loadkeyboard.sh"
    }
    `additionalKeysP`
    [ ("<Insert>", lowerVolume 3 >>= alert)
    , ("<Print>", raiseVolume 3 >>= alert)
    , ("<Pause>", toggleMute >> return())
    ]
    `additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_q), xmonadPromptC systemPromptCmds defaultXPConfig)]
 
--    , keys = myKeys <+> keys def }
--
--myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
--         [ ((modm, xK_F8 ), lowerVolume 3 >>= alert)
--         , ((modm, xK_F9 ), raiseVolume 3 >>= alert)
--         , ((modm, xK_F10), toggleMute    >> return())
--         ]
