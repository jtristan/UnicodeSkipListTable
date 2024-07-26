import Lake
open Lake DSL

package "UnicodeSkipListTable" where
  -- add package configuration options here

lean_lib «UnicodeSkipListTable» where
  -- add library configuration options here

@[default_target]
lean_exe "unicodeskiplisttable" where
  root := `Main
