sub x y = x - y

coin arr n = 
    if (length arr) <= 0 then 0
    else if n < 0 then 0
    else if n == 0 then 1
    else coin (arr) (n - (head arr)) + coin (drop 1 arr) (n)

main = do
    let sum = coin [1,2] 4
    print sum