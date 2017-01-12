module Routing.App exposing (..)

import App.Model as Model exposing (App, empty)
import App.Msg as App exposing (Msg(..))
import Navigation
import Task

locationUpdate : Navigation.Location -> App.Msg
locationUpdate location =
  case location.hash of
    --"#/" -> Home
    _    -> App.NoOp

-- currently discards initial nav state
init : Navigation.Location -> ( Model.App, Cmd App.Msg )
init location = (Model.empty, Cmd.none)
