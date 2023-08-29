
append :: [Int] -> Int -> [Int]
append lista valor = lista ++ [valor]

inputInt :: String -> IO(Int)
inputInt lable = do
    putStr lable
    entrada <- getLine
    return ((read::String->Int) entrada)

createList :: IO[Int]
createList = do
    valor <- inputInt "Digite um numero ou -1 para parar: "
    if valor == -1 then
        return []
    else do
        rest <- createList
        return (valor : rest)

printaLista :: [Int] -> IO()
printaLista [] = do putStrLn ""
printaLista (x:xs) = do
    putStr $ show x ++ " "
    printaLista xs

main :: IO()
main = do
    lista <- createList
    putStrLn "Lista final: "
    printaLista lista
    
    