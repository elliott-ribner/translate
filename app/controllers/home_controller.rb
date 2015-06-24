class HomeController < ApplicationController

  def index
    @phrase = Phrase.new(params[:phrase])
  end

end
