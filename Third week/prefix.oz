% Returns wheter or not a list is prefix of another list

declare
fun {Prefix L1 L2} 
   case L1
   of nil then true
   [] H|T then
      if (H == L2.1) then
         {Prefix T L2.2}
      elseif (H \= L2.1) then
         false
      end
   end
end

{Browse {Prefix ['a' 'b' 'c'] ['a' 'b' 'c' 'd']}}
{Browse {Prefix ['a' 'b' 'c'] ['a' 'c' 'd']}}
{Browse {Prefix ['a' 'b' 'c'] ['a' 'b' 'D' 'c']}}
{Browse {Prefix nil nil}}

