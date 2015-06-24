require 'test_helper'

class PhraseTest < ActiveSupport::TestCase


  describe 'no vowels translator' do
    let(:phrase) { Phrase.new(translator: 'no-vowels', original_text: 'Hello, world.') }

    it 'remove the vowels' do
      phrase.translated_text.must_equal 'Hll, wrld.'
    end
  end
  
  describe 'reversed translator' do
    let(:phrase) { Phrase.new(translator: 'reversed', original_text: 'Hello world. How are you.') }

    it 'reverses the order of the words' do
      phrase.translated_text.must_equal 'world Hello. you are How.'
    end
  end

  describe 'chicken translator' do
    let(:phrase) { Phrase.new(translator: 'chicken', original_text: 'How much wood would a woodchuck chuck if a woodchuck could chuck wood.') }

    it 'adds "cluck" every 2 words' do
      phrase.translated_text.must_equal 'How much cluck wood would cluck a woodchuck cluck chuck if cluck a woodchuck cluck could chuck cluck wood.'
    end
  end

end
