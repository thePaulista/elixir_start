defmodule  Play do

  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def map([], _func), do []   #use _ in _func to tell elixir you are not using it
  def map([ head | tail ], func) do
    [ func.(head) | map(tail, func) ]
    end
end

# Play.map [1,2,3,4,5], fn x -> x* x end
#=> [1,4,9,16,25]

# can be rewritten as
      #Play.map [1,2,3,4,5], &1*&1
      #=> [1,4,9,16,25]

#passing argumetns with the pipe operator
      #[1,2,3,4,5] |> Play.map(&1*&1)
      #=> [1,4,9,16,25]

#Chaining with pipe operator:
      #[1,2,3,4,5] |> Play.map(&1*&1) |> Play.sum
      #=> 55
