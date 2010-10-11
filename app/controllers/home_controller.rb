class HomeController < ApplicationController
  before_filter :load_hitcount

  def index
    @name1 = params[:name1] || ''
    @name2 = params[:name2] || ''
    if params[:name1] && params[:name2]
      @new_session = false
      @blank_names = @name1.blank? || @name2.blank?
      if (@relation = Flames.compute(@name1, @name2) unless @blank_names)
        increment_hitcount
      end
    else
      @new_session = true
    end
  end

  private

  def load_hitcount
    @hitcounter = Hitcount.first
    @hitcount = @hitcounter.count
  end

  def increment_hitcount
    @hitcounter.count += 1
    @hitcounter.save!
    @hitcount = @hitcounter.count
  end
end
