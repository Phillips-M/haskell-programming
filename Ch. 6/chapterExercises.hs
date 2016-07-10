module ChapterExercises where

{-- The below doesn't typecheck because 
printPerson requires Show instance

data Person = Person Bool
--}

data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)


{-- The below doesn't typecheck because 
settleDown requires Eq instance

data Mood = Blah | Woot deriving Show
--} 

data Mood = Blah | Woot driving (Eq, Show)

settleDown x = if x == Woot then Blah else x


type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object
            deriving (Eq, Show)

{-- The below doesn't typecheck because 
Sentence expects three values

s1 = Sentence "dogs" "drool"
--}
s2 = Sentence "Julie" "loves" "dogs"



