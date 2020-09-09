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

    def grades
        @grades
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

    def student_to_teacher_ratio()
        (@students.length / @teachers.length).round
    end

    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            true
        else
            false
        end        
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)

        if !@students.include?(student) || @grades[student].length == 0
            nil
        else
            sum_of_grades = @grades[student].inject(0){ |sum, grade| sum + grade }
            avg = sum_of_grades / @grades[student].length
            avg
        end


    end

end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)

bootcamp.hire("Jeff")
bootcamp.hire("Matthias")

bootcamp.enroll("Alice")
bootcamp.add_grade("Alice", 100)
bootcamp.add_grade("Alice", 75)
p bootcamp.average_grade("Alice")

bootcamp.enroll("Bob")
bootcamp.add_grade("Bob", 80)
p bootcamp.average_grade("Bob")

p bootcamp.average_grade('lexi')