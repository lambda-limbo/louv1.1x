declare
fun {NaivePow N M}
   if M == 1 then
      N
   else
      N * {NaivePow N M-1}
   end
end

% Not tail-recursive yet.
fun {Pow1 N M}
   if M == 0 then
      1
   elseif M mod 2 == 1 then 
      N * {Pow1 N (M-1)}
   else Y in
      Y = {Pow1 N (M div 2)}
      Y*Y
   end
end

% Fully tail-recursive, it behaves as a loop.
fun {Pow2 N M}
   local PowAux in
      fun {PowAux Y I A}
         if I == 0 then
            A
         elseif I mod 2 == 1 then
            {PowAux Y (I-1) (Y*A)}
         else  
            {PowAux Y*Y (I div 2) A}
         end
      end
      {PowAux N M 1}
   end
end


{Browse {Pow1 2 200}}
{Browse {Pow2 2 200}}
{Browse {NaivePow 2 200}}