class GiftsBag
  include Enumerable

  attr_reader :gifts

  def initialize
    @gifts = []
  end

  def add(*gifts)
    gifts.each { |gift| @gifts << gift }
  end

  def each
    gifts.each { |gift| yield(gift) }
  end

  def total_price
    total = inject(0) do |total, gift|
      total += gift.price
    end

    total += price_for_wrappers
  end

  def price_for_wrappers
    inject(0) do |total, gift|
      total += gift.wrapper_price
    end
  end
end
