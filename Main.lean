import Demo

#eval hello

def n:=1
#check n
def t:=Nat
#check t
def tt:=Type
#check tt
def ttt:=Type 1
#check ttt

variable(A B C:Type)


def main : IO Unit :=
  IO.println s!"Hello, {hello}!"
