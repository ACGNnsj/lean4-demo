def hello := "world"
def Implies(p q:Prop):Prop:=p->q

#check Not
#check Implies
#check And
variable{p q:Prop}
variable(r:Prop)
#check p->q
-- #check (Sort -1) -> (Sort -1)
#check And p q
#check p ∧ q
def n:Nat:=1
def m:Nat:=2
#eval n+m
-- #check n->m
-- #check n->p
#check Nat
#check Nat->Sort
#check Prop
#check Sort 0
#check Sort 1
#check Sort 2
#check Nat->Sort 1

structure Proof(p:Prop):Type where proof:p
#check Proof

axiom and_comm(p q:Prop):Proof (Implies (And p q) (And q p))
#check and_comm

axiom modus_ponens:(p q:Prop)->(Proof (Implies p q))->Proof p->Proof q
#check modus_ponens p q

-- axiom implies_intro : (p q : Prop) → (Proof p → Proof q) → Proof (Implies p q)
axiom implies_intro : (p q : Prop) → Proof q → Proof (Implies p q)

-- theorem t1 : p → q → p := fun hp : p => fun _ : q => hp
/- theorem t1 : p → q → p :=
  fun hp : p =>
  fun _ : q =>
  show p from hp -/
theorem t1 (hp : p) (_ : q) : p := hp
#print t1
#check t1

def f1:p->q->p:=fun hp:p=>fun hq:q=>hp
#check f1
/- variable(hp:p)
variable(hq:q) -/
-- #eval f1 hp hq

def sum0:Nat->Nat->Nat:=fun a:Nat=>fun b:Nat=>a+b
def sum2:Nat->Nat:= sum0 2
#eval sum2 4


axiom hp : p
theorem t2 : q → p := t1 hp

