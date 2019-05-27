class Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

book1 = Book.new(nil, nil, nil)

book1.title = "Harry Potter"
book1.author = "J.K. Rowling"
book1.pages = 400

puts book1.title
puts book1.pages


book2 = Book.new(nil, nil, nil)

book2.title = "Lord of The Rings"
book2.author = "Tolkien"
book2.pages = 700

puts book2.title

book3 = Book.new("The Shining", "Stephen King", 350)

puts book3.title

class Student
    attr_accessor :name, :major, :gpa

    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end


    def has_honors
        if @gpa >= 3.0
            return true
        end
        
        return false
    end
end

student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.2)

puts student1.has_honors
puts student2.has_honors