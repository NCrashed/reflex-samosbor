module Reflex.Samosbor.Types where

import Data.Default
import Data.Text (Text)
import Control.Lens

data Samosbor = TextField TextFieldConfig

data TextFieldConfig = TextFieldConfig {
  _textFieldConfig_classes :: [Text]
, _textFieldConfig_id :: Maybe Text
}

instance Default TextFieldConfig where
  def = TextFieldConfig  {
    _textFieldConfig_classes = []
  , _textFieldConfig_id = Nothing
  }

makeLenses ''TextFieldConfig
