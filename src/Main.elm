module Main exposing (..)

import Browser
import Button

main : Program () Button.Model Button.Msg
main =
    Browser.element
        { view = Button.view
        , init = \_ -> Button.init
        , update = Button.update
        , subscriptions = always Sub.none
        }
