module Main where

import Prelude

import App.View.Layout as Layout
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)
import React.Basic.DOM (render)
import React.Basic.Hooks (element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

main :: Effect Unit
main = do
  window
    >>= document
    >>= toNonElementParentNode >>> getElementById "app"
    >>= case _ of
    Nothing -> throw "Container element not found."
    Just c  -> do
      layout <- Layout.make
      render (element layout {}) c
