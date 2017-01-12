module Main exposing (main)

import App.Model exposing (App)
import App.View
import App.Update
import App.Msg as App exposing (Msg(..))
import Routing.App exposing (locationUpdate, init)
import Ports.Ports exposing (sendAlert)
import Navigation

-- other Component.Msg imports as needed?
-- import component ports as needed to support subscriptions

main : Program Never App.Model.App App.Msg
main = Navigation.program
        locationUpdate
        { init = Routing.App.init
        , update = App.Update.update
        , view = App.View.view
        , subscriptions = subscriptions
        }


subscriptions : App -> Sub App.Msg
subscriptions _ = Sub.batch []
--   Sub.batch
--     [ updateTrackList (TrackList << UpdateTrackList)
--     , clearTrackList (always (TrackList ClearTrackList))
--     ]
