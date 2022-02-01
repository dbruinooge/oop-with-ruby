# To create an object, we need to define a class and then call #new on the class.

# A module is a collection of behaviors that can be used in other classes via mixin. To mixin the module and make its methods available to a class, we invoke the #include keyword in the class definition. 

# Modules are one way of achieving polymorphism in Ruby. They can also be used for namespacing i.e. to group related classes.

module Runable
  def speak(sound)
    puts sound
  end
end

class BadDog
  include Runable
end

fido = BadDog.new

fido.speak('Arf!')
