module Routing.App exposing (..)

import App.Model as Model exposing (App, empty)
import App.ViewState exposing (ViewState(..))
import App.Msg as App exposing (Msg(..))

import Navigation
import Task


locationUpdate : Navigation.Location -> App.Msg
locationUpdate location =
  case (String.dropLeft 2 location.hash) of

    "ViewDocList" -> ViewState ViewDocList

    "ViewDocument" -> ViewState ViewDocument

    _ -> App.NoOp

    -- Would rather code this as:
    -- msg -> case Text.fromString msg of
    --          Just value -> ViewState value
    --          Nothing    -> App.NoOp


init : Navigation.Location -> ( Model.App, Cmd App.Msg )
init location =
  let
    msg = locationUpdate location
    ( model, cmd ) = App.Update.update msg Model.empty
  in
    ( model, cmd )
