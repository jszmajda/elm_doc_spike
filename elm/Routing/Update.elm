module Routing.Update exposing (update)

import Routing.Msg exposing (Msg(..))
import Routing.Model exposing (Routing)
import Navigation

update : Msg -> Routing -> (Routing, Cmd Msg)
update msg state =
  case msg of
    Home ->
      ( { state | page = Just "home" }, Cmd.none )
    NotFound ->
      ( { state | page = Just "not-found" }, Cmd.none )
    Redirect uri ->
      ( { state | page = Nothing }, Navigation.modifyUrl uri )
