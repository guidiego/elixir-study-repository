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
Like "functions" will have a same structure **(somethig)** X **do** SOMETHING **end**
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
```
