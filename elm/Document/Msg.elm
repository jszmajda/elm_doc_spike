module Document.Msg exposing (Msg(..))

import Http exposing (Error)


type Msg
  = ReplaceBody String
  | ServerResponse (Result Http.Error String)
  | Commit
