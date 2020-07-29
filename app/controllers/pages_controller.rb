class PagesController < ApplicationController
  def home
    if Day.all.count == 0
      #
      @partial = 'days/birth_death_range_form'
    else
      #
      @partial = 'pages/life_table'
    end
  end

  def set_lifespan
    unless params[:commit].nil?
      @bday = params[:birthday]
      @dday = params[:deathday]
      @years_of_life = @dday.to_date.year - @bday.to_date.year

      Day.create_days_from_range(@bday,@dday)

      respond_to do |format|
        format.html { render :home }
      end
    end
  end

  def scratch
  end
end
