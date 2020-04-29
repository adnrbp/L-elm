module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main =
    div [ class "content" ]
        [ header []
            [ h1 [] [ text "Share it"]
            , span [ class "tagline" ] [ text "Share code platform" ]
            ]
        ]