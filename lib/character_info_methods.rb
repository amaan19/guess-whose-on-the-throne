
require 'pry'

def marital_status
  character = $random_character
  got_info.each {|people|
  if people["name"] == character && people["spouse"] = ""
    $known_info << "The character is single"
     puts "The character is single"
  elsif people["name"] == character
    $known_info << "The character is married"
    return "The character is married"
  end
}
end

def first_appearance
  got_info.each {|people|
  if people["name"] == $random_character
    $known_info << "The character first appeared in #{people["tvSeries"][0]}"
     puts "The character first appeared in #{people["tvSeries"][0]}"
  end
}
end

def dead_or_alive
  got_info.each {|people|
  if people["name"] == $random_character && people["died"] = ""
    $known_info << "The character is alive at the end of season 5"
     puts "The character is alive at the end of season 5"
  elsif people["name"] == character
    $known_info << "The character is dead"
    return "The character is dead"
  end
}
end
