class Phrase
  include ActiveModel::Model

  TRANSLATORS = %w{ normal no-vowels reversed chicken }

  attr_accessor :original_text, :translator

  def translated_text
    case translator
      when 'no-vowels'
        remove_vowels
      when 'reversed'
        reversed
      when 'chicken'
        chicken
      else
        original_text
    end
  end

  def remove_vowels
    original_text.gsub(/[aeiou]/i, '')
  end

  def reversed
    str = Array.new
    original_text.split(".").each{|x| str << x.split(" ").reverse.join(" ") }
    str.join(". ") + "."
  end

  def chicken
    index  = 1
    str    = ''

    original_text.split(" ").each do |word|
      if index.even?
        str = str.strip + " "  + word.strip + " cluck "
      else
        str =   str.strip + " "  + word.strip
      end

      index += 1
    end

    str
  end
end
