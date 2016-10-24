% Function to reverse a number, given a number for example: 4321 transform to:
% 1234
declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
         if Int == 0 then
            Acc
         else 
            {Mirror (Int div 10) (Int mod 10) + Acc * 10}
         end
      end
      {Mirror Int 0}
   end
end

{Browse {MainMirror 4321}}
{Browse {MainMirror 4325}}
{Browse {MainMirror 4004}}
{Browse {MainMirror 10000021}}
