

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...12)
  card
end
  # code #deal_card here

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
  # code #display_card_total here
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  input = gets.chomp
  input
  # code #get_user_input here
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1+card2
  display_card_total(card_total)
  # code #initial_round here
end

def hit?(card_total)
  num = card_total
  prompt_user
  cmd = get_user_input
  if cmd == "h"
    new_card = deal_card
    num = card_total + new_card
    num
  elsif cmd == "s"
    num
  elsif cmd != "h" || cmd != "s"
    invalid_command
  end
  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
  display_card_total(sum)
  end
  end_game(sum)
end
