declare
fun {Fact N}
   local FactAux in
      fun {FactAux N Acc Acc2 List}
         if Acc > N+1 then
            {Reverse List}
         else 
            {FactAux N Acc+1 Acc2*Acc (Acc2 | List)}
         end
      end
      {FactAux N 2 1 nil}
   end
end

{Browse {Fact 5}}
{Browse {Fact 6}}
