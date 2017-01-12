module Routing.App exposing (..)

import App.Model as Model exposing (App, empty)
import App.Msg as App exposing (Msg(..))
import Navigation
import Task
--import Routing.Msg as Routing exposing (Msg(..))

{-
Custom URL Parser

   Transforms location to something Application's init and urlUpdate functions understand, e.g. "/app", 0 or even AppHome
   Sample Scenario:

     Given location "localhost/index#/app"
     When parsed by a customly defined parser
     Then can be turned into "/app"
-}

locationUpdate : Navigation.Location -> App.Msg
locationUpdate location =
  case location.hash of
    --"#/" -> Home
    _    -> App.NoOp

-- currently discards initial nav state
init : Navigation.Location -> ( Model.App, Cmd App.Msg )
init location = (Model.empty, Cmd.none)
