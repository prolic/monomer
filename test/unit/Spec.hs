-- {-# OPTIONS_GHC -F -pgmF hspec-discover #-}

import Test.Hspec

import qualified Monomer.Widgets.AlertSpec as AlertSpec
import qualified Monomer.Widgets.BoxSpec as BoxSpec
import qualified Monomer.Widgets.ButtonSpec as ButtonSpec
import qualified Monomer.Widgets.CheckboxSpec as CheckboxSpec
import qualified Monomer.Widgets.ConfirmSpec as ConfirmSpec
import qualified Monomer.Widgets.GridSpec as GridSpec
import qualified Monomer.Widgets.LabelSpec as LabelSpec
import qualified Monomer.Widgets.IntegralFieldSpec as IntegralFieldSpec
import qualified Monomer.Widgets.RadioSpec as RadioSpec
import qualified Monomer.Widgets.StackSpec as StackSpec
import qualified Monomer.Widgets.TextFieldSpec as TextFieldSpec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  AlertSpec.spec
  BoxSpec.spec
  ButtonSpec.spec
  CheckboxSpec.spec
  ConfirmSpec.spec
  GridSpec.spec
  LabelSpec.spec
  IntegralFieldSpec.spec
  RadioSpec.spec
  StackSpec.spec
  TextFieldSpec.spec
