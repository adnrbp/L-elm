module QuestionAnswer exposing (..)

import Html exposing (Html, text)


-- Union type
type Difficulty
    = Any
    | Easy
    | Medium
    | Hard

-- define a default value for Difficulty
default : Difficulty
default =
    Any

-- Take 2 args and return a tuple
-- (=>) : a -> a -> (a,b)
-- (=>) =
--     (,)

-- list of all the difficulties to display on screen
list : List ( String, Difficulty )
list =
    -- string representation to easily handle
    [ ("Any", Any) -- "Any" => Any
    , ("Easy", Easy)
    , ("Medium", Medium)
    , ("Hard", Hard)
    ]


type alias Question = 
    -- Each question type have 3 values
    { question : String
    , correct : String
    , incorrect : List String
    }

type alias Model = 
    -- The model type has 1 value (a list of type Question)
    -- trivia difficulty
    { difficulty : Difficulty
    , questions : List Question
    }

question_base =
    "Why you buy this?"

answer =
    "Because i need it"


-- provides initial state (model) of an app
init : Model
init =
    Model
        Any
        [ Question
            question_base
            answer
            []
        ]


-- render model of app
view : Model -> Html msg
view { questions } = --destructuring
    questions 
        |> List.map 
            (\{question, correct} -> 
                "Question: " 
                    ++ question
                    ++ " Answer:"
                    ++ correct
            )
        |> String.join ", "
        |> text

    