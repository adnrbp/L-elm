module Main exposing (..)

import Html exposing (text)
import Set
import Array
--import Maybe.Extra exposing (unwrap)
import QuestionAnswer
import CollectionsSample






main = 
    CollectionsSample.dict
        |> CollectionsSample.transformDict
        |> text

-- main =
--     QuestionAnswer.view QuestionAnswer.init