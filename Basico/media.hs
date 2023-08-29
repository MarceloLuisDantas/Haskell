calcMedia :: [Int] -> Int
calcMedia [] = 0
calcMedia lista = div (foldl (+) 0 lista) (length lista)

split :: String -> [String]
split lista = words lista

toIntList :: [String] -> [Int]
toIntList lista = map (read::String -> Int) lista

main :: IO()
main = do
    putStr "Digite as notas: "
    entrada <- getLine 
    let media = do (calcMedia . toIntList . split) entrada
    print media


