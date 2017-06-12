module BeginningElm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welcome to LA Hack Nite" ]
        , p []
            [ text "What can we do with Elm?"]
        , p []
            [ text "Live reload with elm-live!" ]
        ]


main =
    view "boring model"

