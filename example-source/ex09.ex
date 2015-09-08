# Test 1 - Simples Annonimous Function
say_hi = fn(name) -> "Hi #{name}" end
IO.puts say_hi.("Guilherme")

# Test 2 - Mutiple Bodies
div = fn
  {a,b} when b == 0 -> "Infinity"
  {a,b} -> a/b
end
IO.puts div.({1,2})
IO.puts div.({1,0})

# Test 3 - Functions Returns Functions
prefix = fn x -> (fn y -> x <> " " <> y end) end
mr = prefix.("Mr.")
IO.puts mr.("Guilherme")

# Test 4 - ShortCut Functions
square = &(&1*&1)
IO.puts square.(2)
