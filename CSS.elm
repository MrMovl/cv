module CSS exposing (..)

import Html.Attributes exposing (style)
import Html exposing (Attribute)


mainStyle : Html.Attribute a
mainStyle =
    style
        [ ( "padding", "15px" )
        , ( "width", "100%" )
        , ( "height", "100%" )
        , ( "font-family", "monospace" )
        , ( "font-size", "14px" )
        , ( "float", "left" )
        ]


imageStyle : Html.Attribute a
imageStyle =
    style
        [ ( "float", "left" )
        , ( "margin", "13px" )
        , ( "border-radius", "4px" )
        ]


contentStyle : Html.Attribute a
contentStyle =
    style
        [ ( "float", "left" )
        , ( "width", "80%" )
        , ( "height", "100%" )
        ]


list : Html.Attribute a
list =
    style
        [ ( "list-style-type", "none" )
        , ( "padding", "10px 5px" )
        , ( "border-radius", "4px" )
        , ( "background-color", "#68C4F2" )
        ]
