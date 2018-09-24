module MapMaker
  # MAP MAKER
  # puts 'Your string to map:'
  string = '
     X ┃ X ┃ X
    ━━━╋━━━╋━━━
     T ┃ T ┃ T
    ━━━╋━━━╋━━━
     O ┃ O ┃ O

  '

  puts string

  # STRING LENGTH
  puts "String length: #{string.length}"

  # TRANSFORM to array
  array = string.split(//).to_a

  # MAPPING
  @@row1 = []
  @@row2 = []
  @@row3 = []
  array.each_with_index {|ch, i|
    @@row1 << i if ch == 'X'
    @@row2 << i if ch == 'T'
    @@row3 << i if ch == 'O'
  }

  # POSITIONS
  puts "\nPOSITONS"
  puts @@row1.to_s
  puts @@row2.to_s
  puts @@row3.to_s

  # MAKE IT EMPTY
  @@array_empty = array.map {|x|
  if x == 'X' || x == 'T' || x == 'O'
    ' '
  else
    x
  end
  }

  # EMPTY DATA
  puts "\nEMPTY"
  print @@array_empty.join.to_s
  print @@array_empty
end
