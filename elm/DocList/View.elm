module DocList.View exposing (view)

import DocList.Model exposing (DocList)
import DocList.Msg exposing (Msg(..))
import Html exposing (..)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onInput, onClick)


view : DocList -> Html Msg
view doclist =
  div [] (List.map listElement doclist.documents)


listElement : String -> Html Msg
listElement entry =
  div [] [ text ("Document: " ++ entry) ]
