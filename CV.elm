module CV exposing (..)

import Html exposing (..)
import Html.App as App
import Content exposing (..)
import CSS exposing (..)
import Markdown


type Msg
    = NoOp


type alias Model =
    { header : String
    }


model : ( Model, Cmd Msg )
model =
    ( { header = Content.cv }, Cmd.none )


view : Model -> Html Msg
view model =
    div [ mainStyle ]
        [ div [ leftColumnStyle ] [ Markdown.toHtml [] model.header ]
        , div [ rightColumnStyle ] [ Markdown.toHtml [] model.header ]
        ]


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
