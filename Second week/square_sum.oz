declare
fun {Sum N}
   local SumAux in
      fun {SumAux N Acc}
         if N == 0 then
            Acc
         else
            {SumAux (N-1) (N*N+Acc)}
         end
      end
      {SumAux N 0}
   end
end

{Browse {Sum 6}}