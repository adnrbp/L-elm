module Main exposing (..)

import Html exposing (text)
import Set
import Array
--import Maybe.Extra exposing (unwrap)

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

set =
    Set.fromList list

transformSet set2 =
    set2
        |> Set.map (\a -> a+1 )
        |> Set.map String.fromInt
        |> Set.toList 
        |> String.join ", "

array = 
    Array.empty
        |> Array.push 1
        |> Array.push 2
        |> Array.push 3

transformArray array2 =
    array2
        |> Array.get 1
        |> String.fromInt
        --|> unwrap

main = 
    array
        |> transformArray
        |> text