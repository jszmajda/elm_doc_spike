module DocList.Msg exposing (Msg(..))

type Msg
  = Add String
  | Remove String
  | Rename String String -- old -> new.. maybe int -> str (offset)
