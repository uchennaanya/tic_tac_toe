class Accessor
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

accessor = Accessor.new('Uchenna')
puts accessor.name
accessor.name = 'Anya Martins'
puts accessor.name
