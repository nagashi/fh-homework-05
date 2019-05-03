class Person
  attr_reader :name

  def initialize (arg)
    @name = arg.chomp
    @original = arg
    @history = []
    @history.push(@name)
  end

  def to_s
    @history.push(@name.to_s)
    @name = @name.to_s
  end

  def name
    @name = @history[0]
  end

  def titlelize
    @history.push(@name.capitalize)
    @name = @name.capitalize
    self
  end

  def hyphenize
    @history.push(@name.split('').join('-'))
    @name = @name.split('').join('-')
    self
  end

  def upcase
    @history.push(@name.upcase)
    @name = @name.upcase
    self
  end

  def downcase
    @history.push(@name.downcase)
    @name = @name.downcase
    self
  end
 
  def reverse
    @history.push(@name.reverse)
    @name = @name.reverse
    self
  end

  def undo
    if @history.empty?
      @name = @original  
      
    else
      @history.pop
      @name = @history[@history.length - 1] 
    end
    self
  end

end 