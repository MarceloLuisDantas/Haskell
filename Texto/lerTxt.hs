import System.IO

main :: IO()
main = do
    arquivo <- openFile "./texto.txt" ReadMode
    contents <- hGetContents arquivo
    let linhas = words contents
    for  linhas
    hClose arquivo