class PagesController < ApplicationController
  def home
    # if params[:birthday]
    #   @params_present = "we have params and they are : BDAY: #{params[:birthday]} | DDAY: #{params[:deathday]}"
    # else
    #   @params_absent = "we have no params. here they are: #{params}"
    # end

    # @p = params
    # @bday = params[:birthday]
    # @dday = params[:deathday]
  end

  def set_lifespan
    # @params = params

    if params[:commit].nil?
      # @p = params
      # respond_to do |format|
      #   format.html { render :home }
      # end
    else
      @bday = params[:birthday]#.to_i
      @dday = params[:deathday]#.to_i
      @years_of_life = @dday.to_date.year - @bday.to_date.year
      # @year_groups = Day.year_groups
      # @week_groups_within_year_groups = Day.week_groups_within_year_groups
      # @week_groups = Day.group_all_days_by_cweek

      respond_to do |format|
        format.html { render :home }
      end
    end
    
  end

  def scratch
  end
end
