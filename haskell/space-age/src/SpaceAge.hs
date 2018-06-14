module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earthSeconds = 31557600

ageOn :: Planet -> Float -> Float
ageOn Earth s = s / earthSeconds
ageOn Mercury s = ageOn Earth s / 0.2408467
ageOn Venus s = ageOn Earth s / 0.61519726
ageOn Mars s = ageOn Earth s / 1.8808158
ageOn Jupiter s = ageOn Earth s / 11.862615
ageOn Saturn s = ageOn Earth s / 29.447498
ageOn Uranus s = ageOn Earth s / 84.016846
ageOn Neptune s = ageOn Earth s / 164.79132

