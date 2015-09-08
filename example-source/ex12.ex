defmodule Task do
  def init do {} end
  def add(tuple, task) do Tuple.insert_at(tuple, tuple_size(tuple), getTask(task)) end

  def read(tasks, n) when n + 1 == tuple_size(tasks) do
      IO.puts "#{n+1} Task : #{elem(tasks, n)}"
  end

  def read(tasks, n) do
    IO.puts "#{n+1} Task : #{elem(tasks, n)}"
    read(tasks, n+1)
  end

  def read(tasks) do
    IO.puts "1 Task : #{elem(tasks, 0)}"
    read(tasks, 1)
  end

  defp getTask(n) do
    cond do
      n == 1 ->
        "Ask if R U mine!"
      n == 2 ->
        "Run to the Hills"
      n == 3 ->
        "Another idiot Condition"
    end
  end
end

tasks = Task.init()
        |> Task.add(1)
        |> Task.add(2)
        |> Task.add(3)

Task.read(tasks)
