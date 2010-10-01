class HomeController < ApplicationController
  def index
    if params[:name1] && params[:name2]
      @new_session = false
      @name1 = params[:name1]
      @name2 = params[:name2]
      @blank_names = @name1.blank? || @name2.blank?
      @relation = Flames.compute(@name1, @name2) unless @blank_names
    else
      @new_session = true
    end
  end
end
