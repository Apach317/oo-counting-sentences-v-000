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
    if self.split do |selfie|
      selfie.end_with?(".", "?", "!")
      count += 1
    else
      return false
      count_sentences
    end
    puts count
  end
end
