module App.View exposing (view)

import App.Model exposing (App)
import Html exposing (Html, div)
-- import component views
-- import Component.View
import App.Msg as AM exposing (Msg(..))
import Document.View exposing (view)

view : App -> Html AM.Msg
view state =
  div []
    [
      Html.map (\dm -> Document dm) (Document.View.view state.document)
    ]
-- This pattern is wrong.
--      [ Html.App.map Component (Component.View.render state.component)
--      , Html.App.map Component (Component.View.render state.component)
--      ]
