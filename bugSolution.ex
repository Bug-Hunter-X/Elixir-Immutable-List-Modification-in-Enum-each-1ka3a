```elixir
list = [1, 2, 3, 4, 5]

# Correct approach 1:  Use Enum.filter to create a new list
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list) # Output: [1, 2, 4, 5]

# Correct approach 2: Use List.delete to create a new list and reassign
list = List.delete(list, 3)
IO.inspect(list) # Output: [1, 2, 4, 5]

# Incorrect approach (demonstrates the bug):
list = [1, 2, 3, 4, 5]
Enum.each(list, fn x ->
  if x == 3 do
    list = List.delete(list, x) 
  end
  IO.puts(x)
end)
IO.inspect(list) # Output: [1, 2, 3, 4, 5] (original list unchanged)
```