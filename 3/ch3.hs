--This feels verbose having to write the function name a bunch
cardValue :: String -> Integer
cardValue "Jack"  = 10
cardValue "Queen" = 10
cardValue "King" = 10
cardValue "Ace" = 11
cardValue n = read n 
