module Pizza
  class Pie
    attr_accessor :toppings
    
    # Instantiate a new pizza including all the toppings.
    # 
    # topping - the array of toppings
    #
    # returns a new Pie object
    def initialize(toppings = [Pizza::Topping.new('cheese', vegetarian: true)])
      @toppings = toppings
    end

    # Check if a pizza has all vegtarian toppings.
    #
    # Returns a Boolean value.
    def vegetarian?
      @toppings.all? { |topping| topping.vegetarian }
    end

    # Add a Pizza::Topping Object to the @toppings Array in the Pizza::Pie Object.
    # 
    # topping - the Pizza::Topping Object
    #
    # Returns the @toppings array with the new Pizza::Topping Object appended to it.
    def add_topping(topping)
      @toppings << topping
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