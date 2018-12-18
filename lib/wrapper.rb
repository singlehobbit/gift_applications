module Wrapper
  COLORED_WRAPPERS = {}
  THEMED_WRAPPERS = {}

  def self.add_colored(color, price)
    COLORED_WRAPPERS[color.to_sym] = price
  end

  def self.add_themed(theme, price)
    THEMED_WRAPPERS[theme.to_sym] = price
  end
  
  attr_reader :wrapper, :wrapper_type

def add_themed_wrapper(title)
  raise "no such themed wrapper: #{title}"if THEMED_WRAPPERS[title.to_sym].nil?
  @wrapper_type = :themed
  @wrapper = title.to_sym
end

def add_colored_wrapper(color)
  raise "no such colored wrapper: #{color}" if COLORED_WRAPPERS[color.to_sym].nil?
  @wrapper_type = :colored
  @wrapper = color.to_sym
end
  def is_there_such_type?(type)
    type == :themed || type == :colored
  end

  def wrapper_price
    if wrapper_type == :themed
      THEMED_WRAPPERS[wrapper]
    elsif wrapper_type == :colored
      COLORED_WRAPPERS[wrapper]
    end
  end
end
