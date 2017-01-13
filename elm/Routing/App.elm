module Routing.App exposing (..)

import App.Model as Model exposing (App, empty)
import App.ViewState exposing (ViewState(..))
import App.Msg as App exposing (Msg(..))
import Navigation
import Task

locationUpdate : Navigation.Location -> App.Msg
locationUpdate location =
  case (String.dropLeft 2 location.hash) of
    --"#/" -> Home
    "ViewDocList" -> ViewState ViewDocList
    "ViewDocument" -> ViewState ViewDocument
    _    -> App.NoOp

-- currently discards initial nav state
init : Navigation.Location -> ( Model.App, Cmd App.Msg )
init location = (Model.empty, Cmd.none)
