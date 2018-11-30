class Word
  @@list = []
  attr_reader :word

  def initialize(attributes)
    @word = attributes[:word]
  end

  def save()
    @@list.push(self)
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

end
