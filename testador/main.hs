import Asta

main :: IO()
main = do
    Asta.equalsInt "Int 1" 2 2
    Asta.equalsInt "Int 2" 2 3
    Asta.equalsFloat "Float 1" 3.14 3.14
    Asta.equalsFloat "Float 2" 3.14 2.71
    Asta.equalsStr "String 1" "marcelo" "marcelo"
    Asta.equalsStr "String 2" "marcelo" "fernanda"
    Asta.equalsIntArray "[Int] 1" [1, 2, 3, 4] [1..4]
    Asta.equalsIntArray "[Int] 2" [1, 2, 3, 4] [1..5]