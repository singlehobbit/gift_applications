class SetUp
  def initialize
    unless @done
      require_relative 'lib/modefied_to_sym.rb'
      require_relative 'lib/wrapper.rb'
      require_relative 'lib/gift.rb'
      require_relative 'lib/gifts_bag.rb'
      puts 'all files loaded'
      @done = true
    end
  end
end
