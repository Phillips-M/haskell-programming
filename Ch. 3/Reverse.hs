module Reverse where

rvrs :: String -> String
rvrs s = thirdWord ++ " " ++  secondWord ++ " " ++ firstWord where 
    firstWord = take 5 s
    secondWord = take 2 $ drop 6 s
    thirdWord = drop 9 s

str = "Curry is awesome"

main :: IO ()
main = do
    print $ rvrs str