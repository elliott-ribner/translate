class Phrase
  include ActiveModel::Model
  
  TRANSLATORS = %w{ normal no-vowels reversed chicken }
 
  attr_accessor :original_text, :translator
 
  def translated_text
  end
 
 
  def remove_vowels
    
  end
 
  def reversed
    
  end
 
  def chicken
    
  end
end