module Pizza
  class Pie
    attr_accessor :toppings
    
    # Instantiate a new pizza including all the toppings.
    # 
    # topping - the array of toppings
    #
    # returns a new Pie object
    def initialize(topping)
      @toppings=topping
    end


  end

  class Topping
    attr_accessor :name, :vegetarian

    # Instantiate a new topping.
    #
    # name - the String name of the topping.
    # vegetarian - boolean value for vegetarian.
    #
    # Returns a new Topping object.
    def initialize(name, vegetarian: false)
      @name = name
      @vegetarian = vegetarian
    end
  end
end