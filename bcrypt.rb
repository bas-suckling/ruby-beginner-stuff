require 'bcrypt'

users = [
    {username: 'bas', password:'test1'},
    {username: 'cass', password:'test2'},
    {username: 'alice', password:'test3'}
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_passwords(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

new_users = create_secure_passwords(users)
puts new_users

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return "Credentials are correct for #{user_record[:username]}"
        end
    end
    "Credentials were not correct"
end

puts authenticate_user("bas", "test1", users)