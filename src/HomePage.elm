module BeginningElm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Tuple exposing (first, second)
import Mouse

type alias Model = (Int, Int)

type Msg
   = MoveTo (Int, Int)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    MoveTo(x,y) -> ( (x,y), Cmd.none)

view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welcome to LA Hack Nite" ]
        , p []
            [ text "What can we do with Elm?"]
        , p []
            [ text "Live reload with elm-live!" ]
        , p []
            [ text "x=", text (toString (first model)), text " y=", text (toString (second model))]
        ]

subscriptions : Model -> Sub
subscriptions = always 

main : Program Never Model Msg
main =
    program
        { init = ((0, 0), Cmd.none)
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }


-- main =
--     view "boring model"
