declare
fun {FindString S1 S2}
   if (S1 == nil) then
      true
   elseif (S2 == nil) then
      false
   elseif (S1.1 == S2.1) then
      {FindString S1.2 S2.2}
   else
      {FindString S1 S2.2}
   end
end


{Browse {FindString ['a' 'b' 'c'] ['a' 'b' 'c' 'd']}}
{Browse {FindString [1 3] [1 'a' 'b' 'D' 'c' 3]}}
{Browse {FindString ['a' 'b' 'c'] ['a' 'c' 'd']}}
{Browse {FindString nil nil}}

   

   
