someFun :: Num a => [a] -> [a]
someFun = map(*10)

--Problem 1 code 
squareRoot x = sqrt x

--Problem 2 code
asciiPrevious x = succ x

--Problem 3 code 
verifyEven x = even ((x * 3) + 1)

--Problem 4 code
gaussianProduct :: (Num a, Enum a) => p -> a 
gaussianProduct x =(sum [1,3..100])

--Problem 5 code 
largestInList x = maximum ( tail (init x) )

--Problem 6 code 
constructList = 6 : 19 : 41 : (-3):[]

--Problem 7 code 
--take 5 [1..]
firstXEvens :: Integral a => Int -> [a]
firstXEvens y = take y [x | x <- [1..54], even x]

--Problem 8 code 
oddsDivisible3and7 :: Integral a => a -> [a]
oddsDivisible3and7 y = [x | x <- [1..y], odd x, x `mod` 3 == 0, x `mod` 7 == 0]

--Problem 9 code 
oddsDivisible9 y = length [x | x <- [100..y], odd x, x `mod` 9 == 0] 

--Problem 10 code 
countNegs y = length [x | x <- y, x < 0] 

--Problem 11 code 
hexMapsNumbers = [0..15]
hexMapsStringNums = ['0'..'9']
hexMapsStringLetter = ['A'..'F']
hexMapsStringFinal = hexMapsStringNums ++ hexMapsStringLetter
hexMaps = zip hexMapsNumbers hexMapsStringFinal

--Problem 12 code 
makeList x = [[1..y] | y <- [1..x]]

--Problem 13 code 
sanitize xs = concat [if x == ' ' then "%20" else [x] | x<-xs]

--Problem 14 Written Answers 
-- (*) :: Num a => a -> a -> a  || Will work with Fractional, Floating, Double, and Complex
-- (>) :: Ord a => a -> a -> Bool || Will work with Rational, Real, Fractional
-- sqrt :: Floating a => a -> a || Will work with Complex, Float, Double 
-- min :: Ord a => a -> a -> a || Will work with Real, Integral, Rational, Fractional

--Problem 15 code 
getSuit :: Int -> String
getSuit 0 = "Heart"
getSuit 1 = "Diamond"
getSuit 2 = "Spade"
getSuit 3 = "Club"
getSuit x = "Generic Error Message!!!!1!"

--Problem 16 code 
dotProduct :: (Double,Double,Double) -> (Double,Double,Double) -> Double
dotProduct (x1, y1, z1) (x2, y2, z2) = (x1 * x2) + (y1 * y2) + (z1 * z2)

--Problem 17 code 
reverseFirstThree :: [a] -> [a]
reverseFirstThree [] = []
reverseFirstThree (x:xs) = reverseFirstThree xs ++ [x]
--reverseFirstThree (x:xs) = reverse x : reverseFirstThree xs

--Problem 18 code 
feelsLike :: Double -> String
feelsLike temp
    | temp <= (-45.2) = "frostbite central!"
    | temp <= 10 = "Now thatsa Cold!"
    | temp <= 80 = "Nice day we're having today!"
    | temp <= 105 = "Is it hot in here or is it just me?"
    | temp <= 120 = "Hot Damn!"
    | otherwise = "Now thats a spicy meatball!"

--Problem 19 code 
feelsLike2 :: Double -> (Double,String)
feelsLike2 temp3
    | temp2 <= (-45.2) =  (temp2,"frostbite central!")
    | temp2 <= 10 = (temp2,"Now thatsa Cold!")
    | temp2 <= 80 = (temp2,"Nice day we're having today!")
    | temp2 <= 105 = (temp2,"Is it hot in here or is it just me?")
    | temp2 <= 120 = (temp2,"Hot Damn!")
    | otherwise = (temp2,"Now thats a spicy meatball!")
    where temp2 = ((temp3 - 32) * 5/9)

--Problem 20 code 
-- cylinderToVolume :: [(Double, Double)] -> [Double]
-- cylinderToVolume [r:h:xs] = 
    -- let sidesArea = 2 * pi * r * h
        -- topArea = pi * r ^2
    -- in [(sidesArea + 2 * topArea) | (r, h) <- xs]


main=do 
--problem 1
putStrLn("")
putStrLn("-Problem 1-")
putStrLn("Input: 818281336460929553769504384519009121840452831049")
putStr("Output: ")
print(squareRoot 818281336460929553769504384519009121840452831049)
putStrLn("")

--Problem 2
putStrLn("-Problem 2-")
putStrLn("Input: 'A'")
putStr("Output: ")
print(asciiPrevious 'A')
putStrLn("")

--Problem 3
putStrLn("-Problem 3-")
putStrLn("Input1: 5")
putStr("Output1: ")
print(verifyEven 5)
putStrLn("Input2: 10")
putStr("Output2: ")
print(verifyEven 10)
putStrLn("Input3: 6541562")
putStr("Output3: ")
print(verifyEven 6541562)
putStrLn("")

--Problem 4
putStrLn("-Problem 4-")
putStrLn("Input: 100")
putStr("Output: ")
print(gaussianProduct 100)
putStrLn("")

--Problem 5
putStrLn("-Problem 5-")
putStrLn("Input: [99,23,4,2,67,82,49,-40]")
putStr("Output: ")
print(largestInList [99,23,4,2,67,82,49,-40])
putStrLn("")

--Problem 6
putStrLn("-Problem 6-")
putStr("Output: ")
print(constructList)
putStrLn("")

--Problem 7
putStrLn("-Problem 7-")
putStrLn("Input: 27")
putStr("Output: ")
print(firstXEvens 27)
putStrLn("")

--Problem 8
putStrLn("-Problem 8-")
putStrLn("Input: 200")
putStr("Output: ")
print(oddsDivisible3and7 200)
putStrLn("")

--Problem 9
putStrLn("-Problem 9-")
putStrLn("Input: 200")
putStr("Output: ")
print(oddsDivisible9 200)
putStrLn("")

--Problem 10
putStrLn("-Problem 10-")
putStrLn("Input: [(-4),6,7,8,(-14)]")
putStr("Output: ")
print(countNegs [(-4),6,7,8,(-14)])
putStrLn("")

--Problem 11
putStrLn("-Problem 11-")
putStr("Output: ")
print(hexMaps)
putStrLn("")

--Problem 12
putStrLn("-Problem 12-")
putStrLn("Input1: 7")
putStr("Output1: ")
print(makeList 7)
putStrLn("Input2: 0")
putStr("Output2: ")
print(makeList 0)
putStrLn("Input3: -1")
putStr("Output3: ")
print(makeList (-1))
putStrLn("")

--Problem 13
putStrLn("-Problem 13-")
putStrLn("Input: \"http://wou.edu/my homepage/I love spaces.html\"")
putStr("Output: ")
print(sanitize "http://wou.edu/my homepage/I love spaces.html")
putStrLn("")


--Problem 15
putStrLn("-Problem 15-")
putStrLn("Input1: 0")
putStr("Output1: ")
print(getSuit 0)
putStrLn("Input2: 1")
putStr("Output2: ")
print(getSuit 1)
putStrLn("Input3: 2")
putStr("Output3: ")
print(getSuit 2)
putStrLn("Input4: 3")
putStr("Output4: ")
print(getSuit 3)
putStrLn("Input5: 77")
putStr("Output5: ")
print(getSuit 77)
putStrLn("")

--Problem 16
putStrLn("-Problem 16-")
putStrLn("Input: (1,2,3.0) (4.0,5,6)")
putStr("Output: ")
print(dotProduct (1,2,3.0) (4.0,5,6))
putStrLn("")

--Problem 17
putStrLn("-Problem 17-")
putStrLn("Input1: [1]")
putStr("Output1: ")
print(reverseFirstThree [1])
putStrLn("Input2: [1,2]")
putStr("Output2: ")
print(reverseFirstThree [1,2])
putStrLn("Input3: [1,2,3]")
putStr("Output3: ")
print(reverseFirstThree [1,2,3])
putStrLn("Input4: [1,2,3,4]")
putStr("Output4: ")
print(reverseFirstThree [1,2,3,4])
putStrLn("")

--Problem 18
putStrLn("-Problem 18-")
putStrLn("Input1: -200")
putStr("Output1: ")
print(feelsLike (-200))
putStrLn("Input2: 200")
putStr("Output2: ")
print(feelsLike 200)
putStrLn("Input3: -45.3")
putStr("Output3: ")
print(feelsLike (-45.3))
putStrLn("Input4: 79")
putStr("Output4: ")
print(feelsLike 79)
putStrLn("")

--Problem 19
putStrLn("-Problem 19-")
putStrLn("Input1: -200")
putStr("Output1: ")
print(feelsLike2 (-200))
putStrLn("Input2: -0.1")
putStr("Output2: ")
print(feelsLike2 (-0.1))
putStrLn("Input3: -42.9444444444444444444444444445")
putStr("Output3: ")
print(feelsLike2 (-42.9444444444444444444444444445))
putStrLn("Input4: 100")
putStr("Output4: ")
print(feelsLike2 100)
putStrLn("")

--Problem 20
-- putStrLn("-Problem 20-")
-- putStrLn("Input: [(2,5.3),(4.2,9),(1,1),(100.394)]")
-- putStr("Output: ")
-- print(cylinderToVolume [(2,5.3),(4.2,9),(1,1),(100.3,94)])

