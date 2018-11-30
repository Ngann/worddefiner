
class Word
  @@list_words = []
  @@list_definition = []
  attr_reader :key, :definition, :id, :definition_two 

  def initialize(attributes)
    @key = attributes[:key]
    @definition = attributes[:definition]
    @definition_two = attributes[:definition_two]
    @id = @@list_words.length + 1
  end

  def add_definition
    definition_add = Hash.new()
    @@list_definition.push(definition_add)

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
