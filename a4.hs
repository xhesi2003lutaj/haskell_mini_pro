--password matching
sub :: Char -> Char
sub 'a'='@'
sub 'b'='8'
sub 'c'='('
sub 'd'='6'
sub 'e'='3'
sub 'f'='#'
sub 'g'='9'
sub 'h'='#'
sub 'i'='1'
sub 'l'='1'
sub 'o'='0'
sub 'q'='9'
sub 's'='$'
sub 'x'='%'
sub 'y'='?'
sub x = x
munge :: String-> String
munge x=[sub x| x<- x]
