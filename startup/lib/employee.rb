class Employee

    attr_accessor :name, :title
    attr_reader :earnings

    def initialize(name, title)
        @name = name
        @title = title
        @earnings = 0
    end

    def name
        @name
    end

    def title
        @title
    end

    def pay(amount)
        @earnings += amount
    end
end

employee = Employee.new("Shaggy", "Junior Developer")
employee.pay(42)
employee.pay(50)
p employee.earnings