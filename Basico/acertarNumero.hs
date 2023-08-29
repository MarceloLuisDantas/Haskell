numero :: Int
numero = 29

acertou :: Int -> Int -> (Int, String)
acertou numero chute
    | numero > chute  = (1, "Chute um numero maior")
    | numero == chute = (0, "Parabens voce acertou")
    | numero < chute  = (-1, "Chute um numero menor")

inputInt :: IO(Int)
inputInt = do
    entrada <- getLine
    return ((read::String->Int) entrada)

game :: Int -> IO()
game chanches = do
    putStr "Tentativas restantes: "
    print chanches
    putStr "Digite o seu chute: "
    chute <- inputInt
    let (e, msg) = do acertou numero chute
    print msg

    if chanches == 1 then do
        putStrLn "Todas as tentativas utilizada"
        putStrLn "Você perdeu"
    else if e /= 0 then do
        game (chanches - 1)
    else return()
    
main :: IO()
main = do
    game 6