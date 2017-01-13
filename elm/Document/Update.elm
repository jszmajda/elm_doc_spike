module Document.Update exposing (update)

import Document.Model exposing (Document, ServerState(..))
import Document.Msg exposing (Msg(..))
import Ports.Ports exposing (sendAlert)

import Http
import Json.Encode exposing (object)
import Json.Decode exposing (list, string, field)


update : Msg -> Document -> (Document, Cmd Msg)
update msg doc =
  case Debug.log "msg" msg of

    ReplaceBody string ->
      ( {doc | body = string }, Cmd.none )

    Commit ->
      --( doc, sendAlert <| "Commit: " ++ doc.body )
      ( {doc | serverState = Requesting}, transmit doc )

    ServerResponse (Ok result) ->
      ( {doc | serverState = Idle}, sendAlert result )

    ServerResponse (Err error) ->
      ( {doc | serverState = Error (toString error)}, sendAlert ("Error! " ++ toString error) )


transmit : Document -> Cmd Msg
transmit doc =
  let
    decoder = field "headers" (field "user-agent" string)
    url     = "http://localhost:15000"
    body    = Http.stringBody "application/json" (toString doc)
    request = Http.post url body decoder
  in
    Http.send ServerResponse request
