module App.View.Layout where

import Prelude

import Effect (Effect)
import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (ReactComponent, component, fragment, useState, (/\))
import React.Basic.Hooks as React

make :: Effect (ReactComponent {})
make = do
  component "Counter" \props -> React.do
    counter /\ setCounter <- useState 0
    pure
      $ fragment
        [ R.button
            { onClick: handler_ $ setCounter (_ + 1)
            , className: "btn btn-secondary m-3"
            , children: [ R.text $ "Increment: " <> show counter ]
            }
        ]
