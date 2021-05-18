# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene> 10
        @hygiene= 0 if @hygiene < 0
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
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness=(@happiness - 2)
            friend.happiness=(friend.happiness - 2)
            first = "partisan"
            second = "lobbyist"
        elsif topic == 'weather'
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            first = "sun"
            second = "rain"
        else
            first = "blah"
            second = "blah"
        end

        ret_string = "blah blah #{first} blah #{second}"
    end





end