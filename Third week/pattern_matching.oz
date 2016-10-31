% not tail-recursive
declare
fun {Sum L}
   case L
   of H|T then H+{Sum T}
   [] nil then 0
   end
end

{Browse {Sum [5 6 7]}}

% tail-recursive implementation
declare
fun {Sum2 L A}
   case L
   of H|T then {Sum2 T H+A}
   [] nil then A
   end
end

{Browse {Sum2 [5 40 7] 0}}

% Pattern engineering (with less iterations)

declare
fun {Sum3 L A}
   case L
   of H|H1|T then {Sum3 T H+H1+A}
   [] H|T then {Sum3 T H+A}
   [] nil then A
   end
end

{Browse {Sum3 [5 40 7] 0}}

declare
proc {TestPattern L}
   case L
   of M then {Browse 1}
   [] H|T then {Browse 2}
   [] nil then {Browse 3}
   end
end

{TestPattern nil}
{TestPattern [a b]}
{TestPattern [a]}
{TestPattern [a b c d]}