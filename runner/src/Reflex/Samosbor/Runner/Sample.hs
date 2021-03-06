module Reflex.Samosbor.Runner.Sample(
    guiSample
) where

import Reflex.Samosbor
import Data.Default
import Control.Lens

guiSample :: Samosbor
guiSample = Container AlignVertical [field, field]
    where field = TextField $ def & textFieldConfig_classes .~ ["small-field"]