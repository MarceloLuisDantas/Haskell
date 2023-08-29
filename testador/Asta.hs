module Asta where    
import Control.Monad
import Text.Printf

showResult :: String -> String -> String -> Bool -> IO()
showResult nome esperado resultado passou 
    | passou = printf " - Teste %s | Ok ✔️ \n" nome
    | otherwise = do
        putStrLn "---------------------"
        printf " - Teste %s | Err ❌\n" nome
        printf " - esperado  : %s\n" esperado
        printf " - resultado : %s\n" resultado
        putStrLn "---------------------"

equalsInt :: String -> Int -> Int -> IO()
equalsInt nome esperado resultado = do
    showResult nome (show esperado) (show resultado) (esperado == resultado)

equalsFloat :: String -> Float -> Float -> IO()
equalsFloat nome esperado resultado = do
    showResult nome (show esperado) (show resultado) (esperado == resultado)

equalsStr :: String -> String -> String -> IO()
equalsStr nome esperado resultado = do
    showResult nome esperado resultado (esperado == resultado)

equalsIntArray :: String -> [Int] -> [Int] -> IO() 
equalsIntArray nome esperado resultado = do
    if ((length esperado) /= (length resultado)) 
        then showResult nome (show esperado) (show resultado) False
        else showResult nome (show esperado) (show resultado) (length filtrado == 0)
    where 
        filtrado = filter (\(a, b) -> a /= b) (zip (esperado) (resultado))

equalsStringArray :: String -> [String] -> [String] -> IO() 
equalsStringArray nome esperado resultado = do
    if ((length esperado) /= (length resultado)) 
        then showResult nome (show esperado) (show resultado) False
        else showResult nome (show esperado) (show resultado) (length filtrado == 0)
    where 
        filtrado = filter (\(a, b) -> a /= b) (zip (esperado) (resultado))

equalsFloatArray :: String -> [Float] -> [Float] -> IO() 
equalsFloatArray nome esperado resultado = do
    if ((length esperado) /= (length resultado)) 
        then showResult nome (show esperado) (show resultado) False
        else showResult nome (show esperado) (show resultado) (length filtrado == 0)
    where 
        filtrado = filter (\(a, b) -> a /= b) (zip (esperado) (resultado))





