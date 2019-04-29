class PigLatinizer
  
  def piglatinize(text)
    str_arr = text.split
    binding.pry
    new_str_arr = []
    for x in 0...str_arr.size do
      index = str_arr[x].downcase.index(/[aeiou]/)
      new_str = ''
      if index == 0
        new_str = str_arr[x] + 'way'
        new_str_arr << new_str
      elsif index > 0
        #binding.pry
        new_str = str_arr[x][index..-1] + str_arr[x][0..index-1] + "ay"
        new_str_arr << new_str
        #binding.pry
      else
        new_str = str_arr[x] + "ay"
        new_str_arr << new_str
      end
      #binding.pry
    end
    new_str_arr.join(' ')
  end
end