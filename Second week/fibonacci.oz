declare
fun {NaiveFib N}
   if N =< 0 then
      0
   elseif N == 1 then
      1
   else
      {NaiveFib N-1} + {NaiveFib N-2}
   end
end

fun {Fib N}
   local FibAux in
      fun {FibAux N Acc1 Acc2}
         if N == 0 then
            Acc1
         elseif N < 0 then
            Acc2
         else 
            {FibAux N-1 Acc2 (Acc2+Acc1)}
         end
      end
      {FibAux N 0 1}
   end
end
   
{Browse {Fib 100}}
{Browse {NaiveFib 50}}
