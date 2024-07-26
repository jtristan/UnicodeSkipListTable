/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jean-Baptiste Tristan
-/

open System IO

class UnicodeData where
  codepointRaw : String
  codepoint : Nat
  deriving Repr, DecidableEq, Inhabited, Nonempty

def printUnicodeData (ucd : Array UnicodeData) : IO Unit := do
  for entry in ucd do
    println <| reprStr entry
