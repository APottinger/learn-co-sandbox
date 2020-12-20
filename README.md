class ShoeCollection
  attr_accessor :shoe_name
  
  @@shoe_count = 0
  
  def initialize
    @@shoe_count += 1 
  end
  
  def self.count
    @@shoe_count
  end
  
  def initialize(shoe_name)
    @shoe_name = shoe_name
  end
end

adidas = ShoeCollection.new ("Yeezy")
adidas.shoe_name

nike = ShoeCollection.new ("Boost")
nike.shoe_name = "Bobby Lites"


ShoeCollection.count



