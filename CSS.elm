module CSS exposing (..)

import Html.Attributes exposing (style)
import Html exposing (Attribute)


mainStyle : Html.Attribute a
mainStyle =
    style
        [ ( "margin", "15px" ) ]


leftColumnStyle : Html.Attribute a
leftColumnStyle =
    style
        [ ( "width", "49%" )
        , ( "padding", "5px" )
        , ( "float", "left" )
        ]


rightColumnStyle : Html.Attribute a
rightColumnStyle =
    style
        [ ( "width", "49%" )
        , ( "padding", "5px" )
        , ( "float", "left" )
        ]
