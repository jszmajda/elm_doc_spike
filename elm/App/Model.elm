module App.Model exposing (App, initial, empty)

import App.Msg exposing (Msg(..))
import App.ViewState exposing (ViewState(..))
import Document.Model
import DocList.Model


type alias App = 
  { viewState : ViewState
  , document : Document.Model.Document
  , docList  : DocList.Model.DocList
  }

-- constructor will need to construct empty versions of each of the component models that live in the application state
empty : App
empty = App
          ViewDocList
          Document.Model.empty
          DocList.Model.empty

initial : ( App, Cmd Msg )
initial = ( empty, Cmd.none )
