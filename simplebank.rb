
$balance = 100

# $accounts = {
#     {"savings" => "1000"},
#     {"everyday" => "400"},
#     {"investment" => "20000"},
# }

quit = false

def deposit(amount)
    $balance = $balance + amount
end

def withdraw(amount)
    $balance = $balance - amount
end

def display_balance()
    print $balance 
end

until quit
# puts "Please choose your account: savings, everyday or investment."
# account_select = gets.chomp.to_s

#     # if account_select == "savings"
#     #     $accounts{"savings"}
#     # elsif account_select == "everyday"
#     #     $accounts[1]
#     # else 
#     #     $accounts[2]
#     # end

puts "What would you like to do: deposit, withdraw, balance?"
user_choice = gets.chomp.to_s

    if user_choice == "deposit"
        puts "What amount?"
        user_input = gets.chomp.to_i
        deposit(user_input)
        display_balance()
    elsif user_choice == "withdraw"
        puts "What amount?"
        user_input = gets.chomp.to_i
        withdraw(user_input)
        display_balance()
    else
        display_balance()
    end
    
    if $balance < 0
        puts " You are overdrawn. Please make a deposit to fix this ASAP."
    end

    puts " Do you want to exit?"
    answer = gets.chomp
    if answer == "y"
        quit = true
    end
end