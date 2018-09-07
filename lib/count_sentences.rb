require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    if self.end_with?(".", "?", "!")
      count += 1
    else
      return false
    end
    count_sentences
    puts count
  end
end
