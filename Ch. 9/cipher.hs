module Cipher where

import Data.Char

lowerShift :: Char -> Int -> Char
lowerShift char n = chr $ (ord char + n - ord 'z' - 1) `mod` 26 + ord 'a'

upperShift :: Char -> Int -> Char
upperShift char n = chr $ (ord char + n - ord 'Z' - 1) `mod` 26 + ord 'A'

shiftChar :: Char -> Int -> Char
shiftChar char n = if (isUpper char) then upper else lower
  where 
    upper = upperShift char n 
    lower = lowerShift char n

caesar :: [Char] -> Int -> [Char]
caesar string n = do
    char <- string
    return $ shiftChar char n

unCaesar :: [Char] -> Int -> [Char]
unCaesar string n = caesar string (negate n)

encode :: [Char] -> Int -> [Char]
encode sentence n = unwords shifted
  where
    shifted = do
        word <- words sentence
        return $ caesar word n

decode :: [Char] -> Int -> [Char]
decode sentence n = unwords unshifted
  where
    unshifted = do
        word <- words sentence
        return $ unCaesar word n