module Content exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (src)


type alias Block =
    List String


type alias Group =
    { title : String
    , content : Block
    }


gravatarSource : Attribute a
gravatarSource =
    src "https://secure.gravatar.com/avatar/fa61ab6f435658b0255a28d1ce2c7f69?s=200"


blocks : List Group
blocks =
    [ contactInfo
    , education
    , jobExperience
    , extraExperiences
    , misc
    ]


contactInfo : Group
contactInfo =
    { title = "Kontakt"
    , content =
        [ "Tomke Reibisch"
        , "Tel.: 0151/40037773"
        , "<treibisch@gmail.com>"
        , "Geb. am 02. September 1986 in Rendsburg"
        ]
    }


education : Group
education =
    { title = "Bildung"
    , content =
        [ "[1993 -- 1997] Friedrich-Ebert-Grundschule in Büdelsdorf"
        , "[1997 -- 2006] Helene-Lange-Gymnasium in Rendsburg  --   Abschluss: Abitur"
        , "[WS2007 -- SS2009] CAU Kiel 1-Fach Bachelor Biologie"
        , "[zum WS 2009] CAU Kiel Wechsel des Studiengangs"
        , "[WS2009 -- WS2013] CAU Kiel 1-Fach Bachelor Informatik"
        , "[2013 -- 2015] RBZ Technik in Kiel  --  Abschluss: Fachinformatiker Anwendungsentwicklung"
        ]
    }


extraExperiences : Group
extraExperiences =
    { title = "Nebenberufliche Erfahrungen"
    , content =
        [ "[2010 -- 2013] Aktives Mitglied in der [Fachschaft Mathe & Informatik](https://www.fs-infmath.uni-kiel.de/wiki/Hauptseite) der CAU Kiel"
        , "[06/2012 -- 05/2013] Koorganisator der [Konferenz der Informatikfachschaften 41.0](https://kif.fsinf.de/wiki/KIF410:Hauptseite)"
        , "[04/2016 -- ] Koorganisator vom [Elmoin Meetup](https://www.meetup.com/de-DE/Elmoin/)"
        ]
    }


jobExperience : Group
jobExperience =
    { title = "Berufserfahrung"
    , content =
        [ "[09/2006 -- 06/2007] Zivildienst in der integrativen Kindertagesstätte Regenbogen in Rendsburg"
        , "[08/2008 -- 10/2011] Studentische Aushilfskraft bei [getdigital.de](https://www.getdigital.de), tätig in Logistik, Versand, Textilveredelung und Kommissionierung"
        , "[11/2011 -- 03/2013] Hilfswissenschaftler, Projekt im Bereich der künstlichen Intelligenz, Prof. Dr. Rainer Adelung (TF der CAU zu Kiel)"
        , "[05/2013 -- 01/2015] Auszubildender, Börsenportal [ARIVA.DE](https://www.ariva.de)"
        , "[02/2015 -- ] Software Entwickler, [graphomate GmbH](http://www.graphomate.com) (Schwerpunkt im Bereich Visualisierung)"
        ]
    }


misc : Group
misc =
    { title = "Weiteres"
    , content =
        [ "[Sprachen] Deutsch (Muttersprache), Englisch (fließend)"
        , "[Interessen] Fotografie, Literatur  Comics, Schlagzeug, Rollen- und Brettspiele, Kochen, Tischlern"
        ]
    }
