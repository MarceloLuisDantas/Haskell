data Person = Person {
    name :: String,
    age :: Int,
    amigo :: Person
} deriving Show

main :: IO()
main = do
    let p1 = Person "Bob" 20
    let p2 = Person {name = "Alice", age = 30}
    -- print $ Person {name = "Fred"}
    print $ Person {name = "Ann", age = 40, amigo = p2}

    -- let s = Person {name = "Sean", age = 50, amigo = p1}
    -- putStrLn $ name s
    -- print $ age s

    -- let s' = s {age = 51}
    -- print $ age s'