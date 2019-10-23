class Dog

  attr_reader :name, :breed, :bark, :favorite_foods, :age

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def age=(num)
    @age = num
  end

  def bark
    @age > 3 ? @bark.upcase : @bark.downcase
  end

  def favorite_food?(food)
    @favorite_foods.map(&:downcase).include?(food.downcase)
  end

end
