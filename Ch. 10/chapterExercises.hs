module ChapterExercises where

stops = "pbtdkg"
vowels = "aeiou"


{-
Write a function that takes inputs from stops and vowels
and makes 3-tuples of all possible stop-vowel-stop combinations.
These will not all correspond to real words in
English, although the stop-vowel-stop pattern is common
enough that many of them will.
-}

stopVowelStop = filter (\(x,_,_) -> x=='p') $ svsList
  where
    svsList = do
        s <- stops
        v <- vowels
        s' <- stops
        return (s, v, s')

{-
Modify that function so that it only returns the combinations
that begin with a p.
-}


{-
Now set up lists of nouns and verbs (instead of stops and
vowels) and modify the function to make tuples representing
possible noun-verb-noun sentences.
-}

nouns = ["cat","dog","cheeseburger","unicorn"]
verbs = ["meow","bark","sizzle","gallop"]

nounVerbNoun = do
    n <- nouns
    v <- verbs
    n' <- nouns
    return (n, v, n')