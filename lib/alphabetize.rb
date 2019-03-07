require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
e = ESPERANTO_ALPHABET.split("")

def get_num(letter, e)
  e.index{ |a| letter == a}
end

def alphabetize(arr, e)
  output_array = [*arr]
  temp_array = []
  counter = 0
  while 
    temp_array = output_array
    output_array = []
    counter += 1
    puts "counter: #{counter}\ntemp_array:\n#{temp_array}\n"
    sorted = true
    while temp_array.length > 1
      a = get_num(temp_array[0][0], e)
      b = get_num(temp_array[1][0], e)
      #binding.pry
      case b <=> a
      when -1
        output_array << temp_array.delete_at(1)
        sorted = false
        puts "found unsorted pair #{a} #{b}"
      when 0
        puts "#{temp_array[0]} same as #{temp_array[1]}"
        output_array << temp_array.delete_at(0)
      when 1
        puts "'#{temp_array[0]}' comes before '#{temp_array[1]}'"
        output_array << temp_array.delete_at(0)
      end
      if temp_array.length == 1
        puts "loop over"
        puts "temp, out:\n#{temp_array}\n#{output_array}\n"
        break
      end
    binding.pry
    end
    if temp_array.length == 1
      output_array << temp_array.delete_at(0)
    end
    puts "#{counter}\n#{output_array}\n\n"
    counter += 1

    if sorted == true
      return output_array
      break
    end
  end
end

example = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

alphabetize(example, e)