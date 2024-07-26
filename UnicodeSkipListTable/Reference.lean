/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jean-Baptiste Tristan
-/
import UnicodeSkipListTable.Unicode

variable {T : Type}
variable [UnicodeData T]

def referenceTable (ucd : Array T) (property : T → Bool) : Array Nat :=
  (ucd.filter property).map UnicodeData.codepoint

def referenceSearch (table : Array Nat) (c : Char) : Bool :=
  table.contains c.toNat
