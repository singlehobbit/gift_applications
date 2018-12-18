#i want to transfer string with spaces in it
#to sumbol with underscores
# 'some words'.to_sym => some_words
module ModefiedToSym

  def to_sym
    unless self.include? ' '
      super
    else
      self.gsub(' ', '_').to_sym
    end
  end

end

String.prepend ModefiedToSym
