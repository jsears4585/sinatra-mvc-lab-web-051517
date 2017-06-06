require 'pry'

class PigLatinizer

  def piglatinize word
    v = /a|e|i|o|u/i
    if word[0..2].scan(v).empty?
      "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
    elsif word[0..1].scan(v).empty?
      "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
    elsif word[0].scan(v).empty?
      "#{word[1..-1]}" + "#{word[0]}" + "ay"
    else
      word + "way"
    end
  end

  def to_pig_latin sentence
    sentence.split(" ").map! {|word| piglatinize word}.join(" ")
  end

end
