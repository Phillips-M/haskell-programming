module MyWords where

myWords :: [Char] -> [[Char]]
myWords "" = []
myWords string = firstWord : followingWords
  where
    firstWord = takeWhile (/= ' ') string
    followingWords = myWords $ dropWhile (== ' ') $ dropWhile (/= ' ') string
