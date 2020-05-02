module Main exposing (..)

import Html exposing (text)

question =
    "Why you buy this?"

answer =
    "Because i need it"



view model = 
    text model


init =
    "Question: " 
    ++ question
    ++ " Answer:"
    ++ answer

main = view init