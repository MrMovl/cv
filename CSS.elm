module CSS exposing (..)

import Html.Attributes exposing (style)
import Html exposing (Attribute)


mainStyle : Html.Attribute a
mainStyle =
    style
        [ ( "margin", "15px" )
        , ( "height", "100%" )
        , ( "font-family", "monospace" )
        , ( "font-size", "14px" )
        ]


headerStyle : Html.Attribute a
headerStyle =
    style
        [ ( "clear", "both" )
        , ( "background-color", "#98ff98" )
        , ( "padding", "5px" )
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


blockStyle : Html.Attribute a
blockStyle =
    style [ ( "padding-bottom", "10px" ) ]


listStyle : Html.Attribute a
listStyle =
    style
        [ ( "padding", "10px 10px" )
        , ( "border-radius", "4px" )
        ]


leftColumnStyle =
    style [ ( "display", "inline-block" ), ( "width", "20%" ) ]


rightColumnStyle =
    style [ ( "display", "inline-block" ), ( "width", "80%" ) ]


rowStyle : Html.Attribute a
rowStyle =
    style []


fieldStyle =
    style [ ( "display", "inline-block" ) ]
