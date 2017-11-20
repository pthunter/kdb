q)t:([]a:0 0 1 1 2;b:`a`a`c`d`e;c:til 5)
q)t
a b c
-----
0 a 0
0 a 1
1 c 2
1 d 3
2 e 4

q)w:([]a:0 1; b:`a`c)
q)w
a b
---
0 a
1 c

q)select from t where ([]a;b) in w
a b c
-----
0 a 0
0 a 1
1 c 2




