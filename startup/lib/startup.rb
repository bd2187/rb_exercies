require "./employee"

class Startup
    
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.key?(title)
    end

    def >(startup)
        @funding > startup.funding
    end

    def hire(employee, title)
        if !valid_title?(title)
            raise "invalid title"
        else
            new_employee = Employee.new(employee, title)
            @employees << new_employee
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)

        employee_fund = @salaries[employee.title]

        if @funding >= employee_fund
            employee.pay(employee_fund)
            @funding -= employee_fund
        else
            raise "not enoug funding"
        end
    end

    def payday
        @employees.each do |employee|
            pay_employee(employee)
        end
    end
    
end

salaries = {
    "CEO"=>5000,
    "CTO"=>4200,
    "Software Engineer"=>3000,
    "Junior Developer"=>2400
}

startup_1 = Startup.new("Mystry Machinr", 22000, salaries)

salaries = {
    "CEO"=>4800,
    "CTO"=>3800,
    "Pilot"=>2500
}
startup_2 = Startup.new("Planet Express", 30000, salaries)

startup_1.hire("Scooby", "CEO")
startup_1.hire("Velma", "CTO")
startup_1.hire("Daphne", "Software Engineer")
startup_1.hire("Fred", "Software Engineer")
startup_1.payday()

p startup_1.employees
p startup_1.funding