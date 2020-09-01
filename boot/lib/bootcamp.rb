class Bootcamp
    
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, key| hash[key] = []}        
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def student_capacity
        @student_capacity
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            true
        else
            false
        end
    end

    def enrolled?(student)

        i = 0
        while i < @students.length

            if(@students[i].downcase == student.downcase)
                return true
            end

            i += 1
        end

        return false
    end

end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)

# bootcamp.hire("Jeff")
# bootcamp.hire("Matthias")
# p bootcamp.teachers

bootcamp.enroll("bob")
bootcamp.enroll("john")
bootcamp.enroll("jane")
bootcamp.enroll("jill")
bootcamp.enroll("tim")
bootcamp.enroll("cheryl")
# p bootcamp.enroll("steph")
# p bootcamp

p bootcamp.enrolled?("Jane")
p bootcamp.enrolled?("Brandon")