module ChapterExercises where

import Data.Char

capitalizeWord :: String -> String
capitalizeWord word = (toUpper $ head word) : (tail word)
{-
capitalizeParagraph :: String -> String
capitalizeParagraph paragraph = undefined

containsPunc :: String -> Bool
containsPunc "" = False
containsPunc string = if (x == '.' || x == '?' || x == '!') 
                    then True else containsPunc (tail string) 
  where 
    x = head string


splitSentences :: String -> [String]
splitSentences "" = []
splitSentences paragraph = firstLine : followingLines
  where
    firstLine = takeWhile (/= '.') paragraph
    followingLines = myLines $ dropWhile (== '.') $ dropWhile (/= '\n') paragraph
-}