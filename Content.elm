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
    { title = "Education"
    , names =
        [ "1993 - 1997"
        , "1997 - 2006"
        , "2007 - 2009"
        , "2009 - 2013"
        , "2013 - 2015"
        ]
    , content =
        [ "Friedrich-Ebert Elementary School in Büdelsdorf"
        , "Helene-Lange-Gymnasium in Rendsburg - Degree: Abitur"
        , "CAU Kiel Bachelor Biology"
        , "CAU Kiel Bachelor Computer Science"
        , "RBZ Technik in Kiel  -  Degree: Fachinformatiker Anwendungsentwicklung (qualified application developer"
        ]
    }


extraExperiences : Group
extraExperiences =
    { title = "Other experiences"
    , names =
        [ "2010 - 2013"
        , "06/2012 - 05/2013"
        , "04/2016 - ongoing"
        ]
    , content =
        [ "Active member of the [student representatives for Math & Computer Science](https://www.fs-infmath.uni-kiel.de/wiki/Hauptseite) at the CAU Kiel"
        , "Co-Organiser of the [conference for the german student representatives for Computer Science 41.0](https://kif.fsinf.de/wiki/KIF410:Hauptseite)"
        , "Co-Organiser of the [Elmoin Meetup](https://www.meetup.com/de-DE/Elmoin/)"
        ]
    }


jobExperience : Group
jobExperience =
    { title = "Job experience"
    , names =
        [ "09/2006 - 06/2007"
        , "08/2008 - 10/2011"
        , "11/2011 - 03/2013"
        , "05/2013 - 01/2015"
        , "02/2015 - ongoing"
        ]
    , content =
        [ "Alternative civilian service at the inclusive day-care centre 'Regenbogen' in Rendsburg"
        , "Part time employee at [getdigital.de](https://www.getdigital.de), working on logistics, shipment and imprinting shirts"
        , "Student assistant working on an artificial intelligence project, Prof. Dr. Rainer Adelung (TF of the CAU Kiel)"
        , "Trainee at [ARIVA.DE](https://www.ariva.de), a stock price portal"
        , "Frontend Developer creating visualization tools at [graphomate GmbH](http://www.graphomate.com)"
        ]
    }


misc : Group
misc =
    { title = "Misc"
    , names = [ "Languages", "Non-technical hobbies" ]
    , content =
        [ "German (mother tounge), English (fluent)"
        , "photography, literature, comic books, drums, roleplaying and boardgames, woodworking"
        ]
    }
