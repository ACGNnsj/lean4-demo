def hello := "world"
def Implies(p q:Prop):Prop:=p->q

#check Not
#check Implies
#check And
variable(p q r:Prop)
#check p->q
#check And p q
#check p ∧ q
def n:Nat:=1
def m:Nat:=2
#eval n+m
-- #check n->m
#check Nat->Prop
#check Prop

structure Proof(p:Prop):Type where proof:p
#check Proof

axiom and_comm(p q:Prop):Proof (Implies (And p q) (And q p))
#check and_comm p q