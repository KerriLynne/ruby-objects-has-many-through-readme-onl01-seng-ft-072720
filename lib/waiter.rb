class Waiter
  attr_accessor :name, :yrs_experience

  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip) #order of arguments for Meal.new() remains the same - a waiter, a customer, a total and a tip.
  end

  def meals
    Meal.all.select do |meal|  # the waiter needs a way to get all the meals they have served.
      meal.waiter == self
    end
  end

end
