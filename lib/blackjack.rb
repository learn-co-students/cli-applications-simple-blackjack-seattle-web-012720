def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  prng = Random.new
  prng.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  value = 0
  2.times{|x|
    value+=deal_card
  }
  display_card_total(value)
  value
end

def hit?(arg)
  prompt_user
  input = get_user_input
  if(input == 'h')
     arg+=deal_card
  elsif (input != 's')
    invalid_command
    hit?(arg)
  end
  arg
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
  until (total > 21) do
    total=hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
