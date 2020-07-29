class PagesController < ApplicationController
  def home
    @custom_date = CustomDate.all.first
    @bday = @custom_date.bday
    @dday = @custom_date.dday
  end

  def custom_lifespan
    @custom_date = CustomDate.all.first
    @bday = @custom_date.bday
    @dday = @custom_date.dday
  end

  def set_lifespan
    # unless params[:commit].nil?
    #   @bday = params[:birthday]
    #   @dday = params[:deathday]
    #   @years_of_life = @dday.to_date.year - @bday.to_date.year
    #   redirect_back fallback_location: pages_custom_lifespan_path
    # end
  end

  def scratch
  end
end
