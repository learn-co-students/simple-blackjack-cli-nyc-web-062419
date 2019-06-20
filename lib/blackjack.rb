def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(player_card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    return player_card_total
  elsif input == "h"
    new_total = player_card_total + deal_card
    #puts "DEBUG AFTER HIT: #{new_total}"
    return new_total
  else
    invalid_command
    return player_card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  card_total = initial_round()
  #puts "DEBUG: #{total}"
  until card_total > 21
    #puts "DEBUG BEFORE HIT: #{card_total}"
    card_total = hit?(card_total)
    display_card_total(card_total)
    #puts "DEBUG AFTER HIT: #{card_total}"
  end
  end_game(card_total)
end
    
