class PagesController < ApplicationController
  def about
  end

  def contact
    @wagons = ["Berlin", "Paris", "Poland", "Mauritius"]
    search = params[:wagon]
    if search
      @wagons = @wagons.select do |wagon|
        wagon.start_with? search.capitalize
      end
    end
  end

  def home
  end
end
