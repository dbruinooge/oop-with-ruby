class Animal
  def initialize
  end
end

class GoodDog < Animal
  def initialize(name)
    super()
    @name = name
  end
end

sparky = GoodDog.new('Sparky')

p sparky
