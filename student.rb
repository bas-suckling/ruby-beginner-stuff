require_relative 'crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username ,:password
    #this replaces the need for individual getters and setters for each attribute

    def initialize (firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{first_name}, Last name: #{last_name}, Username: #{username}, Email address: #{email}"
    end

end

bas = Student.new("Bas", "Suckling", "Bas123", "bas@email.com", "password1")
john = Student.new("John", "Doe", "John123", "john@email.com", "password2")

hashed_password = bas.create_hash_digest(bas.password)
puts hashed_password
puts bas