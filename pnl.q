/haha

q)f: ("SJSFIS";enlist" ")0:`:/Users/huiling_macpro/Desktop/qaqr/fills
q)p: ("SJSF";enlist" ")0:`:/Users/huiling_macpro/Desktop/qaqr/prices

q)f: update bsi:{$[x=`B; 1; -1]}each bs from f
q)f: update size:bsi*size from f

f: update asize: {x+y} scan size by sym from f


q)f: update cost: price*size from f

q)f: update acost: {x+y} scan cost by sym from f

q)pl: aj[`sym`time; p; delete price from f]   / delete price from f

q)pl: update asset: price*asize from pl
q)pl: update pnl: asset-acost from pl





/
g: {2>=sum not x=asc x}

f: {[x] a: last where x<prev x;         / < not <=
         if[0N~a; :1b];                          /  not found
         a:last where x=x a;                 / use last one if equal   !!!!!
         xp: x til a;                                /  search before this small one
         b:last where xp<=x a;            /  <= !!!!   Last one less or equal, put behind it
         b:$[0N~b; 0; b+1];                 /  behand it, or first
         y:@[x;(a;b);:;x(b;a)];               / swap
         0N~last where y<prev y  }     /  found again or not

f:{[x] a: last where x<prev x; if[0N~a; :1b]; a:last where x=x a; xp: x til a; b:last where xp<=x a; b:$[0N~b; 0; b+1]; y:@[x;(a;b);:;x(b;a)]; 0N~last where y<prev y  }
