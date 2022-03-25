module Reflex.Samosbor.Runner.Style(
    runnerCss
) where

import Clay
import qualified Clay.Flexbox as F

runnerCss :: Css
runnerCss = do
    "input, textarea, select" ? do
        fontFamily ["Roboto"] [sansSerif, monospace]
        fontSize $ pt 14
    ".small-field" ? do
        minHeight $ px 30
        minWidth $ px 300
    ".row" ? do
        display flex
        flexFlow row F.wrap
    ".column" ? do
        display flex
        flexFlow column F.nowrap