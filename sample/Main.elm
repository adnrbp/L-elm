module Main exposing (..)

import Html exposing (text)

question =
    "Why you buy this?"

answer =
    "Because i need it"




-- provides initial state (model) of an app
init =
    ( question, answer )
    -- "Question: " 
    -- ++ question
    -- ++ " Answer:"
    -- ++ answer


-- render model of app
view model = 
    text (
        "Question: " 
        ++ (Tuple.first model) --buil-in function "first"
        ++ " Answer:"
        ++ (Tuple.second model)
    )



-- lambda function
toUpper = 
    (\ str -> String.toUpper str)

-- partial app
sum a b =
    a + b

-- partially apply sum function withOne
sumWithOne =
    sum 1
    
main = 
    init
        |> view
    -- parenthesis: group operators, single argument
    -- text (String.fromInt (sumWithOne 1))
    -- text (toString (sumWithOne 1))
    -- init
    --     |> toUpper
    --     |> view