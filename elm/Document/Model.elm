module Document.Model exposing (Document, empty, initial)

type alias Document = { body : String }

empty : Document
empty = Document "empty"

initial : Document
initial = empty
