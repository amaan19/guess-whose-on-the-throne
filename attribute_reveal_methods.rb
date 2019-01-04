#Round 1 attributes

def married?
  if $current_character.spouse == ""
    string = "The character is single"
  puts string
  else string = "The character is married"
    puts string
  end
  $known_info << string
end

def dead_or_alive?
  if $current_character.died == true
    string = "The character is dead"
    puts string
  else string = "The character is alive!"
    "The character is alive!"
    puts string
  end
  $known_info << string
end

def gender
  string = "The character is #{$current_character.gender}."
  $known_info << string
end


#Round 2 attributes



def first_appearance
  string = "The character first appeared in #{$current_character.series_debut}".
  puts string
  $known_info << string
end

def final_appearance
  if $current_character.died == true
    string = "The character last appeared in #{$current_character.final_appearance}"
    puts string
  elsif $current_character.died != true
    string = "The character is still alive."
    puts string
  end
$known_info << string
end

#Round 3 attributes

def culture
  string = "The character is a #{$current_character.culture}"
  puts string
  $known_info << string
end

def allegiance
  string
end

def title
  string
end

def alias
  string
end

#Round 4 attributes

def actor
  string = "The character is played by #{$current_character.played_by}."
  puts string
  $known_info << string
end

binding.pry
.
