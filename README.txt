Application that helps you to choose gifts for your relatives and collect them together;
Additionally you can wrap all of yours gifts in wrapper on your choice and put beautiful knot
You can manage how to wrap gift according to receiver preferences

Classes:
GiftsBag
gifts bag assigned to owner(person)
  #price
  #each + Enumerable
    iterates over each gift in collection

Gift 
  determines what the gift is going to be
  #price
  #<=>(other) by price
  *custom:
    String#to_sym, so i can do Gift.new(:yellow_elf) == Gift.new('yellow elf')

Modules:
Wrapper
  determines what kind of wrapper
  @type = color: red or @type = theme: sant with deer
    types = { 
      color: [red, yellow, green,...],
      theme: ['santa with deer', 'christmas tree',...]
    }
  #price
  
*custom:
  ModefiedToSym
    #to_sym
