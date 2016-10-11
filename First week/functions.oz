declare
fun {Sqr X}
   X*X
end

{Browse {Sqr 10}}
{Browse {Sqr 11}}
{Browse {Sqr 15}}
{Browse {Sqr 10.05}}

declare
fun {SumDigits N}
   (N mod 10) + (N div 10) mod 10 + (N div 100) mod 10
end

{Browse {SumDigits 279}}
{Browse {SumDigits 49}}
{Browse {SumDigits 393}
}   