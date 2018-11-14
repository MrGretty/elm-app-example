module Button exposing (Model, Msg(..), init, update, view)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )


type Msg
    = Increment
    | Decrement
    | Reset


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, Cmd.none )

        Decrement ->
            if model > 0 then
                ( model - 1, Cmd.none )

            else
                ( model, Cmd.none )

        Reset ->
            ( 0, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ]
            [ text "Increment me" ]
        , button [ onClick Decrement ]
            [ text "Decrement me" ]
        , button [ onClick Reset ]
            [ text "Reset me" ]
        , div []
            [ text (String.fromInt model) ]
        ]
