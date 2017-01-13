module DocList.Model exposing (DocList, empty, initial)


type alias DocList =
  { documents : List String
  }


empty : DocList
empty = { documents = [ "a", "b", "c" ] }


initial = empty
