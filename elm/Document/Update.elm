module Document.Update exposing (update)

import Document.Model exposing (Document)
import Document.Msg exposing (Msg(..))
import Ports.Ports exposing (sendAlert)

update : Msg -> Document -> (Document, Cmd Msg)
update msg doc =
  case msg of
    Document.Msg.ReplaceBody string ->
      ( Document string, Cmd.none )
    Document.Msg.Commit ->
      ( doc, sendAlert <| "Commit: " ++ doc.body )
