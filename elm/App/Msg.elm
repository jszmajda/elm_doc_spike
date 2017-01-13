module App.Msg exposing (Msg(..))

import Document.Msg
import DocList.Msg
import App.ViewState exposing (ViewState(..))


type Msg
  = NoOp
  | NavigateState ViewState
  | ViewState ViewState
  | Document Document.Msg.Msg
  | DocList DocList.Msg.Msg
  -- subcomponent message routing by key of component name and value of component message
  -- | ComponentName Component.Msg
