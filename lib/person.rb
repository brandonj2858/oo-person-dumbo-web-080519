require 'pry'

# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    
    attr_accessor :bank_account

    def initialize(name)
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
        @name = name
    end 


    def clean?
        if @hygiene > 7
            true 
        else 
            false 
        end 
    end 

    def happy?
        if @happiness > 7
            true
        else 
            false
        end 
    end 


    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 

    def happiness=(new_happiness)
        if new_happiness > 10 
            @happiness = 10
        elsif new_happiness < 0 
            @happiness = 0
        else 
            @happiness = new_happiness
        end 
    end 

    def hygiene=(new_hygiene)
        if new_hygiene > 10 
            @hygiene = 10
        elsif new_hygiene < 0 
            @hygiene = 0
        else 
            @hygiene = new_hygiene
        end 
    end 

    def take_bath
        self.hygiene += 4
        if @hygiene > 10 
            @hygiene = 10 
        elsif @hygiene < 0 
            @hygiene = 0
        else 
            @hygiene
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        if @hygiene > 10 
            @hygiene = 10 
        elsif @hygiene < 0 
            @hygiene = 0
        else 
            @hygiene
        end

        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)

        if topic == "politics" 
            self.happiness -= 2
            friend.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather" 
            self.happiness += 1
            friend.happiness += 1
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah'
        end 

    end 

end 

friend = Person.new("John")

#binding.pry
0