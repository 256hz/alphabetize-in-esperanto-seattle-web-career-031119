require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


def get_num(letter, e)
  e.index{ |a| letter == a}
end

def alphabetize(arr)
  e = ESPERANTO_ALPHABET.split("")
  output_array = [*arr]
  temp_array = []

  while 
    temp_array = output_array
    output_array = []
    sorted = true
    while temp_array.length > 1
      case compare(temp_array[0], temp_array[1], e)
      when -1
        output_array << temp_array.delete_at(1)
        sorted = false
      when 0
        output_array << temp_array.shift
      when 1
        output_array << temp_array.shift
      end
      if temp_array.length == 1
        break
      end
    end
    output_array << temp_array.delete_at(0)
    if sorted == true
      return output_array
      break
    end
  end

end

def compare(word1, word2, e)
  compare_index = 0
  words = [word1.length, word2.length]
  while compare_index <= words.min
    a = get_num(word1[compare_index], e)
    b = get_num(word2[compare_index], e)
    case b <=> a
    when -1
      return -1
    when 1
      return 1
    when 0
      compare_index += 1
    end
  end
end

example = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

alphabetize(example)