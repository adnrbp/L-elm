module Main exposing (..)

import Html exposing (text)

question =
    "Why you buy this?"

answer =
    "Because i need it"




-- provides initial state (model) of an app
init =
    { question = question
    , answer = answer
    }


-- render model of app
--view { question2, answer2} = 
view model = 
    text (
        "Question: " 
        ++ (.question model) --buil-in function "first"
        ++ " Answer:"
        ++ (model.answer)
    )

list = 
    1 :: [ 2 ] ++ [ 3 ]
    
transformList list2 =
    list2
        |> List.map (\a -> a+1)
        |> List.map String.fromInt
        -- |>List.map toString
        |> String.join ", "

main = 
    list
        |> transformList
        -- |> String.fromList
        -- |> toString
        |> text