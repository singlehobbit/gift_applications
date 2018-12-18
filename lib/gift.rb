class Gift
  include Wrapper

  STORAGE_ARCHIVE = {}


  def self.add_to_storage(toys_with_price)
    toys_with_price.each { |toy, price| STORAGE_ARCHIVE[toy] = price }
  end

  def self.all_available
    storage = []
    STORAGE_ARCHIVE.each_key { |key| storage << key.to_s }
    storage
  end

  attr_reader :toy

  def initialize(toy)
    raise "no such toy(#{toy}) in storage" unless STORAGE_ARCHIVE.has_key?(toy.to_sym)
    @toy = toy.to_sym
  end

  def to_s
    toy = self.toy.to_s.gsub('_',' ')
    "#{toy}($#{price})"
  end

  def <=>(other)
    price <=> other.price
  end

  def price
    STORAGE_ARCHIVE[toy]
  end
end
