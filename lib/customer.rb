class Customer
   attr_accessor :name, :age

   @@all = []  #knows about all cusotmers

   def initialize(name, age)
     @name = name
     @age = age
     @@all << self  #knows about all cusotmers
   end

   def self.all  #knows about all cusotmers
     @@all
   end


end
