require_relative 'crud'

users = [
    {username: 'bas', password:'test1'},
    {username: 'cass', password:'test2'},
    {username: 'alice', password:'test3'}
]

hashed_users = Crud.create_secure_passwords(users)
puts hashed_users