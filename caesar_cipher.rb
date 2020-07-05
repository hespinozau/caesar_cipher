def caesar_cipher(str,mov)
  #abecedary downcase and uppercase
  abcd_down = "a".."z"
  abcd_upp = "A".."Z"

  #accumulator
  new_string = ""
  index_char = 0
  index_newchar = 0

  #select each char for comparison
  str.each_char do |char|
    if abcd_down.to_a.include?(char)
      index_char = abcd_down.to_a.index(char)
      # 25 is the index of the last element in the abecedary
      # mod 26 is used to keep index bewtween 0 and 25
      index_newchar = (index_char + mov) % 26
      new_char = abcd_down.to_a[index_newchar] 
      new_string += new_char
    
    #the same but for uppercase
    elsif abcd_upp.to_a.include?(char)
      index_char = abcd_upp.to_a.index(char)
      index_newchar = (index_char + mov) % 26
      new_char = abcd_upp.to_a[index_newchar] 
      new_string += new_char
    #spaces and non-letter char
    else
      new_string += char
    end
  
  end
  return new_string
end


puts caesar_cipher("Without training, they lacked knowledge. Without knowledge, they lacked confidence.Without confidence, they lacked victory",18)