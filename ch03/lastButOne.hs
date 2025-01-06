lastButOne :: [a] -> a 
lastButOne [] = error "List is too short" 
lastButOne [_] = error "List is too short" 
lastButOne (x:_:[]) = x 
lastButOne (_:xs) = lastButOne xs