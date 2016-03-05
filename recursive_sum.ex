#from dave thomas' tutorial

#sum([]) -> 0
#sum([head | tail]) -> head + sum(tail)

defmodule Play do

  def sum([]),  do: 0
  def sum([ head | tail ]), do: head + sum(tail)

end

#Play.sum([1,222,3,4])
#=> 230
