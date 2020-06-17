def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == 'h'
      current_total += deal_card
  elsif input == 's'
      current_total
  else
    invalid_command
    prompt_user
  end
  current_total
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
  # code runner here
end
    
