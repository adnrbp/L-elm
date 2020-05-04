module QuestionAnswer exposing (..)

import Html exposing (Html, text)

type alias Question = 
    -- Each question type have 3 values
    { question : String
    , correct : String
    , incorrect : List String
    }

type alias Model = 
    -- The model type has 1 value (a list of type Question)
    { questions : List Question
    }

question_base =
    "Why you buy this?"

answer =
    "Because i need it"


-- provides initial state (model) of an app
init : Model
init =
    { questions =
        [{ question = question_base
         , correct = answer
         , incorrect = []
         }
        ]
    }


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

    