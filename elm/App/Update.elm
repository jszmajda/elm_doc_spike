module App.Update exposing (update)

import App.Model exposing (App)
import App.Msg exposing (Msg(..))
-- import component update functions
-- import Component.Update
import Document.Update

update : Msg -> App -> (App, Cmd Msg)
update action state =
  case Debug.log "Message" action of
    NoOp ->
      (state, Cmd.none)
    Document msg ->
      let
        ( nextState, cmd ) = Document.Update.update msg state.document
      in
        ( { state | document = nextState }, Cmd.map Document cmd )
    -- ComponentName msg
    --   let
    --     (nextState, cmd) = Component.Update.update msg state.component
    --   in
    --     ( { state | component = nextState }, Cmd.map Component cmd )

