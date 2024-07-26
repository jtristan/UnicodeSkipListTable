/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jean-Baptiste Tristan
-/

namespace Char

/-- Maximum valid Unicode codepoint -/
protected def max : Char := Char.ofNat 1114111

/-- Is the character in `0123456789ABCDEF`? -/
def isHexDigit (c : Char) : Bool :=
  c.val ≥ 48 && c.val ≤ 57 || c.val ≥ 65 && c.val ≤ 70

end Char
