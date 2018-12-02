class Word
  @@list_words = []
  attr_accessor :definition_two, :definition_array
  attr_reader :key, :definition, :id

  def initialize(attributes)
    @key = attributes[:key]
    @definition = attributes[:definition]
    @definition_two = attributes[:definition_two]
    @definition_array = []
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

  def add_def(string)
    @definition_two = string
    @definition_array.push(@definition_two)
  end
end
# word = Word.new({:key=> "Apropos",:definition=>"of the times"})
# word.save()
# word = Word.new({:key=> "Pops", :definition=>"soda , dads"})
# word.save()
# Word.find(1).add_def("test")
# Word.find(1).add_def("second def")
# Word.find(2).add_def("aaaaaa")
# Word.find(2).add_def("bbbb")
# Word.all
# Word.find(1).definition_array
# Word.find(1).definition_array[0]
