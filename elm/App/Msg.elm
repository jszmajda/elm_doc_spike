module App.Msg exposing (Msg(..))

-- import other component messages
-- import Component.Msg as Component
import Document.Msg

type Msg
  = NoOp
  | Document Document.Msg.Msg
  -- subcomponent message routing by key of component name and value of component message
  -- | ComponentName Component.Msg
