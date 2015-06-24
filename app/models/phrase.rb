class Phrase
  include ActiveModel::Model
  
  TRANSLATORS = %w{ normal no-vowels reversed chicken }

  attr_accessor :original_text, :translator

  def translated_text
    original_text
  end

end
