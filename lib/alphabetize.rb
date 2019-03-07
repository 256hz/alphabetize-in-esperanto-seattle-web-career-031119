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
    sorted = true
    puts "counter: #{counter}\ntemp_array:\n#{temp_array}\n"
    while temp_array.length > 1
      a = get_num(temp_array[0][0], e)
      b = get_num(temp_array[1][0], e)
      #binding.pry
      puts 
      case b <=> a
      when -1
        puts "'#{temp_array[1]}' comes before '#{temp_array[0]}'"
        puts "false sorted triggered"
        output_array << temp_array.delete_at(1)
        sorted = false
      when 0
        puts "#{temp_array[0]} same as #{temp_array[1]}"
        output_array << temp_array.shift
      when 1
        puts "'#{temp_array[0]}' comes before '#{temp_array[1]}'"
        output_array << temp_array.shift
      end
      if temp_array.length == 1
        break
      end
    end
    output_array << temp_array.delete_at(0)
    puts "\noutput at end of loop #{counter}:\n#{output_array}\n\n"
    puts "sorted = #{sorted}"
    counter += 1
    #binding.pry
    if sorted == true
      return output_array
      break
    end
  end
end

example = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

alphabetize(example, e)