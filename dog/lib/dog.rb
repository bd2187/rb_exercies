class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(age)
        @age = age
    end

    def bark
        if @age > 3
            @bark = @bark.upcase
        else
            @bark = @bark.downcase
        end
    end

    def favorite_food
        @favorite_foods
    end

    def favorite_food?(food)        
        i = 0
        while i < @favorite_foods.length

            if @favorite_foods[i].downcase == food.downcase
                return true
            end

            i += 1
        end

        return false
    end
end

dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["bacon", "chicken"])
# p dog.name
# p dog.breed
# p dog.age = 42
# dog.age = 5
# p dog.bark
# dog.age = 3
# p dog.bark

# p dog.favorite_food

p dog.favorite_food?("bacon")
p dog.favorite_food?("pear")
p dog.favorite_food?("BACON")