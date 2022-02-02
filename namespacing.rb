module Mammal
  class Dog
    def bark
      puts "Arf!"
    end
  end
  
  class Cat
    def meow
      puts "Meow"
    end
  end
end

sparky = Mammal::Dog.new
sparky.bark

paws = Mammal::Cat.new
paws.meow
