declare
fun {Factorial N A}
   if N == 0 then A
   else {Factorial N-1 A*N}
   end
end

{Browse {Factorial 8 1}}
{Browse {Factorial 6 1}}
{Browse {Factorial 5 1}}