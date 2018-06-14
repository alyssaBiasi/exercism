module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | s == "" = "Fine. Be that way!"
  | last s == '?' && isShouting s = "Calm down, I know what I'm doing!"
  | last s == '?' = "Sure."
  | isShouting s = "Whoa, chill out!"
  | otherwise  = "Whatever."
  where
    s = filter (not . isSpace) xs

isShouting :: String -> Bool
isShouting xs = (any isUpper xs) && (map toUpper xs) == xs

