class Word
  @@list_words = []
  attr_reader :key, :definition, :id

  def initialize(attributes)
    @key = attributes[:key]
    @definition = attributes[:definition]
    @id = @@list_words.length + 1
  end

  def save()
    @@list_words.push(self)
  end

  def self.all()
    @@list_words
  end

  def self.clear()
    @@list_words = []
  end

  def self.find(id)
    word_id = id.to_i()
    @@list_words.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

end
