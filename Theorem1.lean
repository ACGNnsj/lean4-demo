variable (p : Prop)

open Classical

theorem dne (h : ¬¬p) : p :=
  Or.elim (em p)
  (fun (hp : p) => hp)
  (fun (hnp: ¬p) => absurd hnp h)

theorem step (h : ¬(p ∨ ¬ p)) : ¬p :=
  fun (hp : p) => h (Or.intro_left (¬p) (hp))

theorem exclmid : p ∨ ¬p :=
  dne (p ∨ ¬p) (
    fun (h : ¬(p ∨ ¬p)) => 
    h (Or.intro_right (p) (step p h))
  )

#check dne
#check p ∨ ¬p
#check dne (p ∨ ¬p) 