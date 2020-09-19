require 'pry'

class Person
    
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


   def happiness=(num)
    @happiness = num 
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
   end

   def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
   end

   def happy?
    @happiness > 7
   end

   def clean?
    @hygiene > 7
   end 

   def get_paid(salary)
    self.bank_account += salary 
    "all about the benjamins"
   end

   def take_bath 
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
   end


   def call_friend(friend)
    [self, friend].each { |h| h.happiness += 3}
    "Hi #{friend.name}! It's #{self.name}. How are you?"
   end 

   #This was my original method but couldnt get it to work for a while so needed the solution :(
#    def start_conversation(person, topic)
#         tings = [person, topic]
#         if topic == "politics"
#             tings.each { |h| h.happiness -=2}
#             "blah blah blah partisan blah lobbyist"
#         elsif topic == "weather"
#             tings.each { |h| h.happiness += 1}
#             "blah blah sun blah rain"
#         else 
#             'blah blah blah blah blah'
#     end

def start_conversation(person, topic)
          objects = [self, person]
          if topic == "politics"
            objects.each { |o| o.happiness -= 2}
            first, second = ["partisan", "lobbyist"]
          elsif topic == "weather"
            objects.each { |o| o.happiness += 1}
            first, second = ["sun", "rain"]
          end
          first ||= "blah"
          second ||= "blah"
          base_string = "blah blah #{first} blah #{second}"
        end


end

