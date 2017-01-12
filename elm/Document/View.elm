module Document.View exposing (view)

import Document.Model exposing (Document)
import Document.Msg exposing (Msg(..))
import Html exposing (..)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onInput, onClick)

view : Document -> Html Msg
view doc =
  div []
    [ textarea [onInput ReplaceBody] [ text doc.body ]
    , input [ type_ "button", value "Commit", onClick Commit ] []
    , div [] [text doc.body]
    ]
