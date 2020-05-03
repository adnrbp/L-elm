module Main exposing (..)

import Html exposing (text)

question =
    "Why you buy this?"

answer =
    "Because i need it"


-- render model of app
view model = 
    text model


-- provides initial state (model) of an app
init =
    "Question: " 
    ++ question
    ++ " Answer:"
    ++ answer

-- lambda function
toUpper = 
    (\ str -> String.toUpper str)

main = 
    init
        |> toUpper
        |> view