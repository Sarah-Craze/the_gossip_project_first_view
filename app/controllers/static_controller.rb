class StaticController < ApplicationController
  def team
  end

  def contact
  end
  
  def home
    respond_to do |format|
      format.html 
    end

    def welcome
      @name = params[:name]

  end

def welcome

end
end
end