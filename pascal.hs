pascal a b = 
    if a == 0 then 1
    else if a == b then 1
    else pascal (a-1) (b-1) + pascal a (b-1)

main = do
    val1 <- readLn
    val2 <- readLn
    let sum = pascal val1 val2
    print sum
