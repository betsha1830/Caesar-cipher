# Caesar-cipher
Caesar cipher encryption algorithm exercise using ruby.

It ciphers text by shifting each letter to the right with regards to the shifting factor.

Description

# PROBLEM
  Encrypt a text by shifting the position of a letter with a given shift factor(position attribute)

# SOLUTION
  1- Store the ascii code of all the letters (Capital and small)
  2- Iterate through each letter and check if the addition of shift factor will push the letter out of bounds
    2.1- If out of bounds continue shifting from the first letter
 
# CASES
  1- Add the shift factor to ascii code and check 
    1.1- If code is out of bounds substract the ascii code (which is out of bounds) from z's ascii code and add the result to a's acii code.
  ASCII code
  A-Z 65-90
  a-z 97-122
