module CV exposing (..)

import Html exposing (..)
import Html.App as App
import Content exposing (..)
import CSS exposing (..)


type Msg
    = NoOp


type alias Model =
    { header : String
    }


model : ( Model, Cmd Msg )
model =
    ( { header = "test" }, Cmd.none )


view : Model -> Html Msg
view model =
    div [ mainStyle ]
        [ createCvView, gravatar ]


gravatar : Html Msg
gravatar =
    img [ gravatarSource, floatRight ] []


createCvView : Html Msg
createCvView =
    List.map ulify blocks |> div [ floatLeft ]


ulify : List String -> Html Msg
ulify elements =
    let
        cleanLi =
            li []

        listify =
            [] |> flip (::)
    in
        elements
            |> List.map text
            |> List.map listify
            |> List.map cleanLi
            |> ul []


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
