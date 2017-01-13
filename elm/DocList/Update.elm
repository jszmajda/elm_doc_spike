module DocList.Update exposing (update)

import List exposing (append)
import DocList.Msg exposing (Msg(..))
import DocList.Model exposing (DocList)

update : Msg -> DocList -> (DocList, Cmd Msg)
update msg state =
  case msg of
    Add str ->
      ({ state | documents = (List.append state.documents [str]) }, Cmd.none)
    Remove str ->
      -- TODO
      ( state, Cmd.none )
    Rename old str ->
      -- TODO
      ( state, Cmd.none )
