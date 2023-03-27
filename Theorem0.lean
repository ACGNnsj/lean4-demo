

open Classical

theorem dne (p : Prop) (h : ¬¬p) : p :=
  Or.elim (em p)
  (fun (hp : p) => hp)
  (fun (hnp: ¬p) => absurd hnp h)

theorem step (p : Prop) (h : ¬(p ∨ ¬ p)) : ¬p :=
  fun (hp : p) => h (Or.intro_left (¬p) (hp))

theorem exclmid (p : Prop) : p ∨ ¬p :=
  dne (p ∨ ¬p) (
    fun (h : ¬(p ∨ ¬p)) => 
    h (Or.intro_right (p) (step p h))
  )