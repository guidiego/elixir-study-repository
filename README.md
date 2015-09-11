# Elixir

### Index

 - Install
    - Basic
    - Ubuntu Problems
 - IDE / Text Editor
 - Hello Word
 - Basic Syntax
  - Vars
  - Conditions
  - Functions
  - Modules
  - Loops
  - Docs
  - Example Code
 - MIX


### Install
**Basic Commands**
 - wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
 - sudo apt-get update
 - sudo apt-get install elixir

**Ubuntu 14.04 Problems**
If you have problems with Translation Package, try :
- rm /var/lib/apt/lists/dl.google.com_linux_chrome_deb_dists_stable_main_i18n_Translation-pt%5fBR
- sudo apt-get install
- sudo apt-get install elixir

### IDE / Text Editor
Usually I use Atom / VIM to write code lines, in this case I prefer use [ATOM](https://atom.io) with a [Elixir Plugin](https://atom.io/packages/language-elixir)

### Hello Word (ex1.elixir)
```elixir
  IO.puts "Hello Word"
```

### Basic Syntax

#### Vars
Vars are not typed, but for Immutable Data one time setting this var they didn't will change your type again.
```elixir
  #Declare a var

  #string
  name = "Guilherme"

  #numbers
  int = 1
  float = 0.1

  #atom
  :name = "Atom Name"

  #list
  list = [1,2,3]

  #tugle
  tugle = {1,2,3}

  #boolean
  bool = true
```

#### Conditions
Like "functions" will have a same structure **(somethig)** X **do** SOMETHING **end** - **[Example Code](https://github.com/guidiego/elixir-study-repository/blob/master/example-source/ex5.ex)**

```elixir
  #Single If Condition
  if rU == "mine" do
    "AudioSlave"
  end

  #Else Condition
  if album == "Meteora" do
    "OOOOOOOOOOOOOOOOOH FUCKING AWESOME"
  else
    "NOT GOOD ENOUGH"
  end

  #Else If Condition
  #Here will call this COND, it's something like ElseIf
  cond do
    points == 10 ->
      "It's fine"
    points == 5 ->
      "Hmmm I think that something going wrong"
    points == 0 ->
      "Ok! Have an big error here!"
  end

  #case
  #case it's basic a SwitchCase function, but give u more power in comparations
  case {1,2,3} do
    {1,x,3} when x != 2 -> "Wrong order friend!"
    {1, 2 , 3} -> "You rocks!"
  end
```

#### Loops / Recursive
In functional we didn't use Loop like:
```javascript
  for (var i = 0; i < x.length; i++){
    //Do something
  }
```

In functional we use Recursive functions, like:
```elixir
  defmodule Recursive do
    def sum(tuple, total, i) when i == 0 do
      total + elem(tuple,0)
    end

    def sum(tuple, total, i) do
      sum(tuple, total + elem(tuple,i), i - 1)
    end
  end

  test = {1,2,3}
  IO.puts to_string(Recursive.sum(test, 0, 2))  
```

In resume : we have a overide method, the **when** factor help Elixir to saw what function he need to run, so when you have a index the function **sum** called another function **sum**. [Another Example](https://github.com/guidiego/elixir-study-repository/blob/master/example-source/ex7.ex)

#### Pipeline <3
In elixir we have a pipeline, like pipelines found at UNIX OS, in resume u can use that to not put functions inside functions. The pipeline understand that the last return is the first param of the next! [**Example**](https://github.com/guidiego/elixir-study-repository/blob/master/example-source/ex12.ex)
```elixir
  defmodule Task do
    def init() do {} end
    def add(tuple, task) do insert_at(tuple, tuple_size(tuple), "Task #{tuple_size(tuple)} : #{task}") end
    def reader(tuple, index) do IO.puts elem(tuple, index) end
  end

  tasks = Task.init()
          |> Task.add("Watch Deadpoll")
          |> Task.add("Listen Arctic Monkeys")
          |> Task.add("Do the homework")
          
  Task.reader(tasks, 0)
```
