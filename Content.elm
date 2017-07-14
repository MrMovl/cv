module Content exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (src)


type alias Group =
    { title : String
    , names : List String
    , content : List String
    }


gravatarSource : Attribute a
gravatarSource =
    src "https://secure.gravatar.com/avatar/fa61ab6f435658b0255a28d1ce2c7f69?s=200"


blocks : List Group
blocks =
    [ education
    , jobExperience
    , extraExperiences
    , misc
    ]


contactInfo : Group
contactInfo =
    { title = "Personal information"
    , names = [ "Phone", "E-Mail", "Date of birth" ]
    , content =
        [ "0151 40037773"
        , "treibisch@gmail.com"
        , "02 September 1986"
        ]
    }


education : Group
education =
    { title = "Bildung"
    , names =
        [ "1993 - 1997"
        , "1997 - 2006"
        , "WS2007 - SS2009"
        , "zum WS 2009"
        , "WS2009 - WS2013"
        , "2013 - 2015"
        ]
    , content =
        [ "Friedrich-Ebert-Grundschule in Büdelsdorf"
        , "Helene-Lange-Gymnasium in Rendsburg -  Abschluss: Abitur"
        , "CAU Kiel 1-Fach Bachelor Biologie"
        , "CAU Kiel Wechsel des Studiengangs"
        , "CAU Kiel 1-Fach Bachelor Informatik"
        , "RBZ Technik in Kiel  -  Abschluss: Fachinformatiker Anwendungsentwicklung"
        ]
    }


extraExperiences : Group
extraExperiences =
    { title = "Nebenberufliche Erfahrungen"
    , names =
        [ "2010 - 2013"
        , "06/2012 - 05/2013"
        , "04/2016 - "
        ]
    , content =
        [ "Aktives Mitglied in der [Fachschaft Mathe & Informatik](https://www.fs-infmath.uni-kiel.de/wiki/Hauptseite) der CAU Kiel"
        , "Co-Organisator der [Konferenz der Informatikfachschaften 41.0](https://kif.fsinf.de/wiki/KIF410:Hauptseite)"
        , "Co-Organisator vom [Elmoin Meetup](https://www.meetup.com/de-DE/Elmoin/)"
        ]
    }


jobExperience : Group
jobExperience =
    { title = "Berufserfahrung"
    , names =
        [ "09/2006 - 06/2007"
        , "08/2008 - 10/2011"
        , "11/2011 - 03/2013"
        , "05/2013 - 01/2015"
        , "02/2015 - "
        ]
    , content =
        [ "Zivildienst in der integrativen Kindertagesstätte Regenbogen in Rendsburg"
        , "Studentische Aushilfskraft bei [getdigital.de](https://www.getdigital.de), tätig in Logistik, Versand, Textilveredelung und Kommissionierung"
        , "Hilfswissenschaftler, Projekt im Bereich der künstlichen Intelligenz, Prof. Dr. Rainer Adelung (TF der CAU zu Kiel)"
        , "Auszubildender, Börsenportal [ARIVA.DE](https://www.ariva.de)"
        , "Software Entwickler, [graphomate GmbH](http://www.graphomate.com) (Schwerpunkt im Bereich Visualisierung)"
        ]
    }


misc : Group
misc =
    { title = "Weiteres"
    , names = [ "Languages", "Non-technical hobbies" ]
    , content =
        [ "Deutsch (Muttersprache), Englisch (fließend)"
        , "Fotografie, Literatur  Comics, Schlagzeug, Rollen- und Brettspiele, Kochen, Tischlern"
        ]
    }
