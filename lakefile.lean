import Lake
open Lake DSL

package demo {
  -- add package configuration options here
}

lean_lib Demo {
  -- add library configuration options here
}

@[defaultTarget]
lean_exe demo {
  root := `Main
}
