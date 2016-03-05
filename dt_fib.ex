#from dave thomas's tutorial:

#fib(0) -> 1
#fib(1) -> 1
#fib(n) = fib(n-2) = fib(n-1)

defmodule Play do

  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n) when n >= 2, do: fib(n-2) + fib(n-1)

end

#load to iex, type iex dt_fib.ex  after changing code, type r Play
