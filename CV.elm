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
        [ mainHeader, contactView, cvView ]


contactView =
    div [ blockStyle ]
        [ h3 [ headerStyle ] [ text contactInfo.title ]
        , div [ contactLeftColumn ] (List.map markdown contactInfo.names)
        , div [ contactCenterColumn ] (List.map markdown contactInfo.content)
        , div [ contactRightColumn ] [ gravatar ]
        ]


mainHeader =
    h2 [ headerStyle ] [ text "Curriculum Vitae: Tomke Reibisch" ]


gravatar : Html Msg
gravatar =
    img [ gravatarSource, imageStyle ] []


cvView : Html Msg
cvView =
    List.map blockView blocks |> div [ contentStyle ]


blockView : Group -> Html Msg
blockView { title, names, content } =
    div [ blockStyle ]
        [ h3 [ headerStyle ] [ text title ]
        , div [ leftColumnStyle ] (List.map markdown names)
        , div [ rightColumnStyle ] (List.map markdown content)
        ]


markdown field =
    div [] [ Markdown.toHtml [ fieldStyle ] field, br [] [] ]


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
