module App.Model exposing (App, initial, empty)

import App.Msg exposing (Msg(..))
-- Import other component models here
-- import Component.Model exposing (Component)
import Document.Model

type alias App = {
  -- application state model, root for all current application state
  document : Document.Model.Document
  }

-- constructor will need to construct empty versions of each of the component models that live in the application state
empty : App
empty = App Document.Model.empty

initial : ( App, Cmd Msg )
initial = ( empty, Cmd.none )
