module Main exposing (..)

import Html exposing (Html,text)
import Set
import Array
--import Maybe.Extra exposing (unwrap)
--import CollectionsSample
import QuestionAnswer

-- main = 
--     CollectionsSample.dict
--         |> CollectionsSample.transformDict
--         |> text


main : Html msg
main =
    QuestionAnswer.view QuestionAnswer.init


