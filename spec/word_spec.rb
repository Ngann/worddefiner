require('rspec')
require('words')

describe("Word") do
  before() do
    Word.clear()
  end

  describe(".all") do
    it("returns an empty array") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the word to a list of words") do
      word = Word.new({:key=> "Apropos"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe(".clear") do
    it("clears all words from the list") do
      word = Word.new({:key=> "Apropos"})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments the id by 1 each time a word is created") do
      word = Word.new({:key=> "Apropos"})
      word.save()
      word2 = Word.new({:key=> "Props"})
      word2.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds a word base on its id") do
      word = Word.new({:key=> "Apropos"})
      word.save()
      word2 = Word.new({:key=> "Props"})
      word2.save()
      expect(Word.find(1)).to(eq(word))
      expect(Word.find(2)).to(eq(word2))
    end
  end
end
