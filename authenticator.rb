users = [
    {username: 'bas', password:'test1'},
    {username: 'cass', password:'test2'},
    {username: 'alice', password:'test3'}
]

def auth_user (username, password, list_of_users)
    list_of_users.each do |user_record| 
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "credentials not correct"
end



puts "Welcome to the authenticator."
25.times {print '-'}
puts

attempts = 1
while attempts < 5
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    auth_var = auth_user(username, password, users)
    puts auth_var

    puts "press n to quit or any other key to continue"
    input = gets.chomp.downcase
    break if input == 'n'
    
    attempts += 1
end
