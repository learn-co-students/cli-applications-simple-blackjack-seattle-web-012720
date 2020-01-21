require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total += deal_card
    card_total
  elsif input == 's'
    card_total
  else
    invalid_command
    prompt_user
    get_user_input
    card_total
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
  card_total = initial_round 
  until card_total > 21
    new_total = hit?(card_total)
    if card_total == new_total
      hit?(card_total)
    end
    card_total = new_total
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
