class Person

   attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

   def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

   # Why
  def happiness=(happiness)
    @happiness = happiness
    if self.happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

   def hygiene=(hygiene)
    @hygiene = hygiene
    if self.hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end # why doesn't this work: else @hygiene = hygiene
  end

   def happy?
    if self.happiness > 7
      true
    else false
    end
  end

   def clean?
    if self.hygiene > 7
      true
    else false
    end
  end

   def get_paid(salary)
    @salary = salary
    @bank_account += @salary
    return "all about the benjamins"
  end

   def take_bath
    self.hygiene += 4
    if self.hygiene > 10
      self.hygiene = 10
    end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

   def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

   def call_friend(person) # What happens if there are 3 people?
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?" # Forgot .name
  end

   def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else return "blah blah blah blah blah"
    end
  end

 end
