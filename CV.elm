module CV exposing (..)

import Html exposing (..)
import Content exposing (..)
import CSS exposing (..)
import Markdown exposing (toHtml)


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
        [ cvView, gravatar ]


gravatar : Html Msg
gravatar =
    img [ gravatarSource, imageStyle ] []


cvView : Html Msg
cvView =
    List.map blockView blocks |> div [ contentStyle ]


blockView : Group -> Html Msg
blockView { title, content } =
    div [ blockStyle ]
        [ h3 [] [ text title ]
        , ulify content
        ]


ulify : Block -> Html Msg
ulify content =
    content
        |> List.map (\element -> Markdown.toHtml [] element)
        |> List.map listify
        |> List.map (\element -> li [] element)
        |> ul [ listStyle ]


listify : a -> List a
listify =
    [] |> flip (::)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


main =
    Html.program
        { init = model
        , view = view
        , subscriptions = \_ -> Sub.none
        , update = update
        }
