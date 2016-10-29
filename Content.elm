module Content exposing (..)


type alias Block =
    List String


blocks : List Block
blocks =
    [ contactInfo
    , education
    , charityService
    , university
    , jobExperience
    , misc
    ]


contactInfo : Block
contactInfo =
    [ "Tomke Reibisch <img style='float:right' src='https://secure.gravatar.com/avatar/fa61ab6f435658b0255a28d1ce2c7f69?s=200'>"
    , "Tel.: 0151/40037773"
    , "<treibisch@gmail.com>"
    , "Geb. am 02. September 1986 in Rendsburg"
    ]


education : Block
education =
    [ "[1993--1997] Friedrich-Ebert-Grundschule in Büdelsdorf"
    , "[1997--2006] Helene-Lange-Gymnasium in Rendsburg --  Abschluss: Abitur"
    , "[2013--2015] RBZ Technik in Kiel -- Abschluss: Fachinformatiker Anwendungsentwicklung"
    ]


charityService : Block
charityService =
    [ "[09/2006--06/2007] Zivildienst in der integrativen Kindertagesstätte Regenbogen in Rendsburg" ]


university : Block
university =
    [ "[WS2007--SS2009] 1-Fach Bachelor Biologie"
    , "[zum WS 2009] Wechsel des Studiengangs"
    , "[WS2009--WS2013] 1-Fach Bachelor Informatik"
    ]


jobExperience : Block
jobExperience =
    [ "[08/2008--10/2011] Studentische Aushilfskraft bei [getdigital.de](https://www.getdigital.de), tätig in Logistik, Versand, Textilveredelung und Kommissionierung"
    , "[11/2011--03/2013] Hilfswissenschaftler, Projekt im Bereich der künstlichen Intelligenz, Prof. Dr. Rainer Adelung (TF der CAU zu Kiel)"
    , "[05/2013--01/2015] Auszubildender, Börsenportal [ARIVA.DE](https://www.ariva.de)"
    , "[02/2015--] Software Entwickler, [graphomate GmbH](http://www.graphomate.com) (Spezialist im Bereich Visualisierung)"
    ]


misc : Block
misc =
    [ "[Sprachen] Deutsch (Muttersprache), Englisch (fließend)"
    , "[Interessen] Fotografie, Literatur  Comics, Schlagzeug, Rollen- und Brettspiele, Kochen, Tischlern"
    ]