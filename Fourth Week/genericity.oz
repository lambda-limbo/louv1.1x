declare
fun {Map F L}
   case L of
      H|T then {F H}|{Map F T}
      [] nil then nil
   end
end

{Browse {Map fun {$ X} X*X end [2 3 4 5]}}
{Browse {Map fun {$ X} X*X*X end [2 3 4 5]}}
{Browse {Map fun {$ X} X*X+5 end [2 3 4 5]}}
