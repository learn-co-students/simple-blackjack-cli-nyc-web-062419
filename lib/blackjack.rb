def welcome
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
  a = gets.chomp
  return a
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a1 = deal_card
  a2 = deal_card
  display_card_total(a1+a2)
  return a1+a2
end

def hit?(current_card_total)
  prompt_user
  u = get_user_input
  if u == "h"
    b = deal_card
    return current_card_total + b
  elsif u == "s"
    return current_card_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

##runner calls on the #welcome method, 
##then on the #initial_round method, 
##then calls #hit? and #display_card_total methods
##-until- the card sum is greater than 21,
##then calls on the #end_game method

def runner
  welcome
  init = initial_round
  if init < 21
    hit?(init)
    display_card_total(init)
  else
  end_game(init)
end
end_game(init)
end
    
