module CV exposing (..)

import Html exposing (..)
import Html.App as App
import Content exposing (..)
import CSS exposing (..)
import String
import Html.Attributes exposing (href)


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
    elements
        |> List.map elementToHtml
        |> List.map listify
        |> List.map cleanLi
        |> ul []


elementToHtml : String -> Html a
elementToHtml element =
    let
        firstLetter =
            String.slice 0 1 element
    in
        if firstLetter == "<" then
            mailaddressToLink element
        else
            text element


mailaddressToLink : String -> Html a
mailaddressToLink address =
    let
        mailto =
            href ("mailto:" ++ address)
    in
        address |> stripExcess |> text |> listify |> a [ mailto ]


stripExcess : String -> String
stripExcess string =
    String.slice 1 ((String.length string) - 1) string


listify : a -> List a
listify =
    [] |> flip (::)


cleanLi : List (Html a) -> Html a
cleanLi =
    li []


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
