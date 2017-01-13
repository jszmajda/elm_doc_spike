module Document.Model exposing (Document, ServerState(..), empty, initial)


type ServerState
  = Idle
  | Requesting
  | Error String


type alias Document = { body : String
                      , serverState : ServerState }


empty : Document
empty = Document "empty" Idle


initial : Document
initial = empty
