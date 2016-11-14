% Example of function composition in Oz

declare
fun {Compose F G}
   fun {$ X}
      {F {G X}}
   end
end

Square2 = {Compose fun {$ I} I*2 end fun {$ I} I*I end}

{Browse {Square2 2}}
{Browse {Square2 3}}
{Browse {Square2 4}}
{Browse {Square2 5}}
