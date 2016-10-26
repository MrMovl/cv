module CV exposing (..)

import Html exposing (..)
import Html.App as App
import Content exposing (..)


type Msg
    = NoOp


type alias Model =
    { header : String
    }


model : ( Model, Cmd Msg )
model =
    ( { header = Content.header }, Cmd.none )


view : Model -> Html Msg
view model =
    div [] [ Html.text model.header ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


main : Program Never
main =
    App.program
        { init = model
        , view = view
        , subscriptions = \_ -> Sub.none
        , update = update
        }
