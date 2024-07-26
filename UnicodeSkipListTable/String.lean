/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jean-Baptiste Tristan
-/
import UnicodeSkipListTable.Char

namespace String

/-- True if `s` is a sequence of hexadecimal digits -/
def isNatHex (s : String) : Bool :=
  !s.isEmpty && s.all (·.isHexDigit)

/-- If `s` is provably a sequence of hexadecimal digits
  return its interpretation as a natural number
-/
def toNatHex (s : String) (_h : s.isNatHex) : Nat :=
  s.foldl (fun n c =>  n*16 + (if c.isDigit then c.toNat - '0'.toNat else 10 + (c.toNat - 'A'.toNat))) 0

/-- If `s` is a sequence of hexadecimal digits
  return its interpretation as a natural number
  and none otherwise
-/
def toNatHex? (s : String) : Option Nat :=
  if h : s.isNatHex then s.toNatHex h else none

/-- If `s` is a sequence of hexadecimal digits
  return its interpretation as a natural number
  otherwise, panic
-/
def toNatHex! (s : String) : Nat :=
  if h : s.isNatHex then s.toNatHex h else panic! "Nat in hexadecimal expected"

end String
