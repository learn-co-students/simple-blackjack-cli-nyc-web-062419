def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  ans = gets.chomp
  return ans
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  c1 = deal_card
  c2 = deal_card
  total = c1 + c2
  display_card_total(total)
  return total
end

def hit?(total)
  # code hit? here
  prompt_user
  ans = get_user_input
  if ans == 'h'
    total+= deal_card
    return total
  elsif ans == 's'
    return total
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

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
