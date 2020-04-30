module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

-- record (result) inside a record (model)
model =
    { result =
        { id = 1
        , name = "adnrbp/L-elm"
        , stars = 66
        }
    }


main =
    -- portable chunks of Virtual DOM nodes
    let
        shareItHeader =
            header []
                [ h1 [] [ text "Share it"]
                , span [ class "tagline" ] [ text "Share code platform" ]
                ]
    in
        div [ class "content" ]
            [ shareItHeader
            , ul [ class "results" ]
                [ li []
                    -- show stars
                    -- [ text (toString model.result.stars)]
                    [ span [ class "star-count" ] [ text (String.fromInt model.result.stars)]
                    -- link to point github-account
                    , a [ href ("https://github.com/" ++ model.result.name) ]
                    [text model.result.name]
                    ]
                ]
            ]