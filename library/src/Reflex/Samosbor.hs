module Reflex.Samosbor(
    Samosbor(..)
  , module Reflex.Samosbor.Types
  , buildSamosbor
) where

import Reflex.Dom
import Data.Default
import Control.Monad (void)
import Data.Text (Text)
import Control.Lens
import Data.Map (Map)

import Reflex.Samosbor.Types

import qualified Data.Text as T
import qualified Data.Map.Strict as M

buildSamosbor :: forall t m . DomBuilder t m => Samosbor -> m ()
buildSamosbor ui = case ui of
    TextField cfg -> do
      let ecfg = def & elementConfig_initialAttributes .~ concatAttrs [
              optAttrs "class" (cfg ^. textFieldConfig_classes)
            , optAttr "id" (cfg ^. textFieldConfig_id)
            ]
      void $ inputElement $ def @(InputElementConfig _ t (DomBuilderSpace m)) & inputElementConfig_elementConfig .~ ecfg

concatAttrs :: Ord k => [Map k v] -> Map k v
concatAttrs = foldl M.union M.empty

optAttr :: AttributeName -> Maybe Text -> Map AttributeName Text
optAttr _ Nothing = []
optAttr name (Just a) = M.singleton name a

optAttrs _ [] = M.empty
optAttrs name xs = M.singleton name $ T.intercalate " " xs