module Reflex.Samosbor.Runner.Style(
    runnerCss
) where

import Clay

runnerCss :: Css
runnerCss = do
    "input, textarea, select" ? do
        fontFamily ["Roboto"] [sansSerif, monospace]
        fontSize $ pt 14
    ".small-field" ? do
        minHeight $ px 30
        minWidth $ px 300