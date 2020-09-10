class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

    def game_over?()
        @game_over
    end

    def check_num(num)

        @num_attempts += 1

        if num == @secret_num
           @game_over = true 
           p "you win"

        elsif num > @secret_num
            p "too big"

        elsif num < @secret_num
            p "too small"
        else
            @game_over = false
        end

        return @game_over
    end

    def ask_user()
        p "enter a number"

        num = gets.chomp.to_i    
        
        check_num(num)
    end
end

game = GuessingGame.new(0, 100)

p game.ask_user()