module App.View exposing (view)

import App.Model exposing (App)
import App.Msg as AM exposing (Msg(..))
import App.ViewState exposing (ViewState(..))
import DocList.View exposing (view)
import Document.View exposing (view)
import Html exposing (Html, div, input)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Navigation

view : App -> Html AM.Msg
view state =
  let
    stateView = case state.viewState of
      ViewDocList -> Html.map (\dl -> DocList dl) (DocList.View.view state.docList)
      ViewDocument -> Html.map (\dm -> Document dm) (Document.View.view state.document)
  in
    div [] ([ stateView ] ++ [ (stateChangeSection state) ])

stateChangeSection : App -> Html AM.Msg
stateChangeSection state = 
  let
    btn = \m s -> input [type_ "button", onClick (AM.NavigateState m), value s] []
  in
    div [ class "stateChange" ] 
      [ btn ViewDocList "DocList"
      , btn ViewDocument "Document"
      ]
