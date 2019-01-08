    0 const m = 7, n = 85;
    1 
    1 var x, y, z, q, r, z1;
    1 
    1 procedure  multiply;
    1 var  a, b;
    2 begin  
    3     a := x;  
    5     b := y;  
    7     z := 0;
    9     while b > 0 do
   13     begin  
   13         if odd b then 
   15         z := z + a;
   20         a := 2*a ;  
   24         b := b/2 ;
   28     end
   28 end;
   2  INT    0    5
   3  LOD    1    3
   4  STO    0    3
   5  LOD    1    4
   6  STO    0    4
   7  LIT    0    0
   8  STO    1    5
   9  LOD    0    4
  10  LIT    0    0
  11  OPR    0   12
  12  JPC    0   29
  13  LOD    0    4
  14  OPR    0    6
  15  JPC    0   20
  16  LOD    1    5
  17  LOD    0    3
  18  OPR    0    2
  19  STO    1    5
  20  LIT    0    2
  21  LOD    0    3
  22  OPR    0    4
  23  STO    0    3
  24  LOD    0    4
  25  LIT    0    2
  26  OPR    0    5
  27  STO    0    4
  28  JMP    0    9
  29  OPR    0    0
   30 
   30 procedure  divide;
   30 var  w;
   31 begin  
   32     r := x;  
   34     q := 0;  
   36     w := y;
   38     while w <= r do w := 2*w ;
   47     while w > y do
   51     begin  
   51         q := 2*q;  
   55         w := w/2;
   59         if w <= r then
   62         begin  
   63             r := r-w;  
   67             q := q+1 
   69         end
   71     end
   71 end;
  31  INT    0    4
  32  LOD    1    3
  33  STO    1    7
  34  LIT    0    0
  35  STO    1    6
  36  LOD    1    4
  37  STO    0    3
  38  LOD    0    3
  39  LOD    1    7
  40  OPR    0   13
  41  JPC    0   47
  42  LIT    0    2
  43  LOD    0    3
  44  OPR    0    4
  45  STO    0    3
  46  JMP    0   38
  47  LOD    0    3
  48  LOD    1    4
  49  OPR    0   12
  50  JPC    0   72
  51  LIT    0    2
  52  LOD    1    6
  53  OPR    0    4
  54  STO    1    6
  55  LOD    0    3
  56  LIT    0    2
  57  OPR    0    5
  58  STO    0    3
  59  LOD    0    3
  60  LOD    1    7
  61  OPR    0   13
  62  JPC    0   71
  63  LOD    1    7
  64  LOD    0    3
  65  OPR    0    3
  66  STO    1    7
  67  LOD    1    6
  68  LIT    0    1
  69  OPR    0    2
  70  STO    1    6
  71  JMP    0   47
  72  OPR    0    0
   73 
   73 procedure  gcd;
   73 var  f, g ;
   74 begin  
   75     f := x;  
   77     g := y;
   79     while f <> g do
   83     begin
   83         if f < g then g := g-f;
   91         if g < f then f := f-g;
   99     end;
  100     z1 := f
  101 end;
  74  INT    0    5
  75  LOD    1    3
  76  STO    0    3
  77  LOD    1    4
  78  STO    0    4
  79  LOD    0    3
  80  LOD    0    4
  81  OPR    0    9
  82  JPC    0  100
  83  LOD    0    3
  84  LOD    0    4
  85  OPR    0   10
  86  JPC    0   91
  87  LOD    0    4
  88  LOD    0    3
  89  OPR    0    3
  90  STO    0    4
  91  LOD    0    4
  92  LOD    0    3
  93  OPR    0   10
  94  JPC    0   99
  95  LOD    0    3
  96  LOD    0    4
  97  OPR    0    3
  98  STO    0    3
  99  JMP    0   79
 100  LOD    0    3
 101  STO    1    8
 102  OPR    0    0
  103 
  103 begin 
  104     read(x,y);  call multiply;
  107     read(x,y);  call divide;
  110     read(x,y);  call gcd;
  113     write(z,q,r,z1);
  121 end.
 103  INT    0    9
 104  RED    0    3
 105  RED    0    4
 106  CAL    0    2
 107  RED    0    3
 108  RED    0    4
 109  CAL    0   31
 110  RED    0    3
 111  RED    0    4
 112  CAL    0   74
 113  LOD    0    5
 114  WRT    0    0
 115  LOD    0    6
 116  WRT    0    0
 117  LOD    0    7
 118  WRT    0    0
 119  LOD    0    8
 120  WRT    0    0
 121  OPR    0    0
START PL/0
24
9
1
5
END PL/0