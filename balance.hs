bracket c =
    if c == ')' || c == '(' then True
    else False

balanced str n =
    if n < 0 then False
    else if (length str) == 0 && (n==0) then True
    else if (length str) == 0 then False
    else if (head str) == '(' then balanced (tail str) (n+1)
    else balanced (tail str) (n-1)


balance str = balanced (filter bracket str) 0

main = do
    let a = balance "(if (zero? x) max (/ 1 x))"
    print a
    let b = balance "I told him (that it’s not (yet) done). (But he wasn’t listening)"
    print b
    let c = balance "())("
    print c