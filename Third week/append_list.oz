declare
fun {AppendLists L1 L2}
   local Aux in
      fun {Aux List List2}
         if List == nil then
            List2
         elseif List2 == nil then
            {Reverse List}
         else
            case List
            of Head|Tail then {Aux Tail (Head | List2)}
            [] nil then List2
            end
         end
      end
      {Aux {Reverse L1} L2} 
   end 
end

{Browse {AppendLists nil [4 5 6]}}
{Browse {AppendLists [4 5 6] nil}}
{Browse {AppendLists [1 2 3] [4 5 6]}}