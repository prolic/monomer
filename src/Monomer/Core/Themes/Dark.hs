{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Monomer.Core.Themes.Dark (
  darkTheme
) where

import Control.Lens ((&), (^.), (.~), (?~), non)
import Data.Default

import Monomer.Core.Combinators
import Monomer.Core.Style
import Monomer.Graphics.Color
import Monomer.Graphics.Types

import qualified Monomer.Lens as L

darkTheme :: Theme
darkTheme = Theme {
  _themeBasic = darkBasic,
  _themeHover = darkHover,
  _themeFocus = darkFocus,
  _themeDisabled = darkDisabled
}

normalFont :: TextStyle
normalFont = def
  & L.font ?~ Font "Regular"
  & L.fontSize ?~ FontSize 16
  & L.fontColor ?~ white

titleFont :: TextStyle
titleFont = def
  & L.font ?~ Font "Bold"
  & L.fontSize ?~ FontSize 20
  & L.fontColor ?~ white

darkBasic :: ThemeState
darkBasic = def
  & L.fgColor .~ blue
  & L.hlColor .~ white
  & L.emptyOverlayColor .~ (darkGray & L.a .~ 0.8)
  & L.scrollColor .~ (darkGray & L.a .~ 0.4)
  & L.scrollIdleColor .~ (darkGray & L.a .~ 0.2)
  & L.thumbColor .~ (gray & L.a .~ 0.8)
  & L.thumbIdleColor .~ (gray & L.a .~ 0.6)
  & L.checkboxColor .~ blue
  & L.checkboxWidth .~ 25
  & L.text .~ normalFont
  & L.btnStyle . L.bgColor ?~ darkGray
  & L.btnStyle . L.text ?~ normalFont
  & L.btnStyle . L.padding ?~ (paddingV 3 <> paddingH 5)
  & L.btnStyle . L.cursorIcon ?~ CursorHand
  & L.btnMainStyle . L.bgColor ?~ blue
  & L.btnMainStyle . L.text ?~ normalFont
  & L.btnMainStyle . L.padding ?~ (paddingV 3 <> paddingH 5)
  & L.btnMainStyle . L.cursorIcon ?~ CursorHand
  & L.dialogFrameStyle . L.bgColor ?~ gray
  & L.dialogFrameStyle . L.border ?~ border 1 darkGray
  & L.dialogTitleStyle . L.text ?~ titleFont <> textLeft
  & L.dialogTitleStyle . L.padding ?~ padding 5
  & L.dialogBodyStyle . L.text ?~ normalFont
  & L.dialogBodyStyle . L.padding ?~ padding 5
  & L.dialogBodyStyle . L.sizeReqW ?~ minWidth 200
  & L.dialogBodyStyle . L.sizeReqH ?~ minHeight 100
  & L.dialogButtonsStyle . L.padding ?~ padding 5

darkHover :: ThemeState
darkHover = darkBasic

darkFocus :: ThemeState
darkFocus = darkBasic

darkDisabled :: ThemeState
darkDisabled = darkBasic
