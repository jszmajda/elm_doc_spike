port module Ports.Ports exposing (..)

{-
`Cmd msg` is a weird type signature. 'msg' is a magic elm term apparently. Who
cares what it is? It doesn't matter! The return value of this function
basically is ignorable
-}
port sendAlert : String -> Cmd msg
