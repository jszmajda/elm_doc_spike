module App.Update exposing (update)

import App.Model exposing (App)
import App.ViewState exposing (ViewState(..))
import App.Msg exposing (Msg(..))
-- import component update functions
-- import Component.Update
import Document.Update
import DocList.Update
import Navigation exposing (newUrl)

update : Msg -> App -> (App, Cmd Msg)
update action state =
  case action of
    NoOp ->
      (state, Cmd.none)
    ViewState msg ->
      ( { state | viewState = msg }, Cmd.none )
    NavigateState msg ->
      ( state, Navigation.newUrl ("#/" ++ (toString msg)) )
    Document msg ->
      let
        ( nextState, cmd ) = Document.Update.update msg state.document
      in
        ( { state | document = nextState }, Cmd.map Document cmd )
    DocList msg ->
      let
        ( nextState, cmd ) = DocList.Update.update msg state.docList
      in
        ( { state | docList = nextState }, Cmd.map DocList cmd )
    -- ComponentName msg
    --   let
    --     (nextState, cmd) = Component.Update.update msg state.component
    --   in
    --     ( { state | component = nextState }, Cmd.map Component cmd )

