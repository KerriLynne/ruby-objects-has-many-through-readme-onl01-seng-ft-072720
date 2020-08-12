class Customer
   attr_accessor :name, :age # has a name and an age (can change)

   @@all = []  #knows about all cusotmers

   def initialize(name, age)
     @name = name    #name and age are set upon initialization
     @age = age
     @@all << self  #knows about all cusotmers (tracks every instance of customer upon creation)
   end

   def self.all  #knows about all cusotmers
     @@all
   end

   def new_meal(waiter, total, tip=0)
     Meal.new(waiter, self, total, tip)
   end    


end
