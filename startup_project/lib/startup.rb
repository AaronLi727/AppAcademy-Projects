require "employee"

class Startup
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end
    
    def name
        @name
    end

    def funding
        @funding
    end
    
    def salaries
        @salaries
    end

    def employees
        @employees
    end

    def valid_title?(title)
        if @salaries.has_key?(title)
            return true
        else
            return false
        end
    end

    def >(another_startup)
        if @funding > another_startup.funding
            return true
        else
            return false
        end
    end

    def hire(employee_name,title)
        if valid_title?(title)
            @employees << Employee.new(employee_name,title)
        else
            raise "Title does not exist"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        amount = salaries[employee.title]
        if amount > @funding
            raise "not enough funding" 
        else
            employee.pay(amount)
            @funding-=amount
        end
    end

    def payday
        @employees.each {|employee| pay_employee(employee)}
    end

    def average_salary
    sum = 0
    @employees.each { |employee| sum += salaries[employee.title] }
    sum / @employees.length
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(other_startup)
    @funding += other_startup.funding

    other_startup.salaries.each do |title, amount|
      if !@salaries.has_key?(title)
        @salaries[title] = amount
      end
    end

    @employees = @employees + other_startup.employees
    other_startup.close()
  end
end
