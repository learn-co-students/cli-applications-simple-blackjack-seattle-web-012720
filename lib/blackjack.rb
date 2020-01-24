def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
  number
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  case input
  when 's'
    card_total
  when 'h'
    card_total += deal_card
    card_total
  else 
    invalid_command
    prompt_user
    input = get_user_input
  end 
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
# If I wanted to create a game out of this I would make a method to create a dealer hand.
# Dealer hand would be very similar, but it would use an if / else statement instead of user input.
# I'd say if dealer_hand is less than 15 hit, else stay.' 
# Then compare dealer_hand to player_hand and whoever is close to 21 wins.