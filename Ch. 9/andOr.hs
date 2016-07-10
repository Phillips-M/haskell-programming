

-- direct recursion, using (&&)
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f lst = myOr $ map f lst

myElem :: Eq a => a -> [a] -> Bool
myElem eq [] = False
myElem eq (x:xs) = (eq == x) || myElem xs
