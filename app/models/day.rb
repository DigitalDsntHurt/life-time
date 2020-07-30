class Day < ApplicationRecord

  validates_presence_of :date, :year, :month, :week, :week_id
  
  before_validation :set_year, :set_month, :set_week, :set_week_id


  ## CREATION ##
  def self.create_days_from_range(birthdate,deathdate)
    @dates = []
    (birthdate.to_date..deathdate.to_date).each{|date|
      @dates << Day.new(date: date)
    }
    Day.import @dates
  end

  ## DATA & QUERIES ##



  def self.year_groups
    Day.all.group_by{ |day| day.year }
  end

  def week_groups_within_year_groups
    # year_groups.map{ |year_group| year_group[0] => year_group[1].group_by{ |day| day.week } }
  end

  def self.group_all_days_by_cweek
    Day.all.map{ |day| day.week_id }#.map{ |weekid| }
  end

  def self.years
    Day.all.pluck(:year).sort
  end

  def self.unique_years
    years.uniq
  end

  def self.unique_years_count
    unique_years.count
  end

  def self.unique_weeks_within_year_count(year)
    Day.where(year: year).pluck(:week).uniq.count
  end

  def self.life_weeks_old(bday,dday)
    # accepts date objects
    birth_year = bday.to_date.year
    dday.to_date

    birth_year_week_grouped_days = Day.where(year: birth_year).group_by{|day| day.week_id }
    return [birth_year, birth_year_week_grouped_days]
  end

  def self.life_weeks_new(bday,dday)
    # accepts date objects
    wart = bday.to_date
    wend = bday.to_date + 6
    all_weeks = []
    until wart > dday.to_date
      @week = [wart, wend]
      all_weeks << @week
      wart += 7
      wend += 7
    end
    
    all_weeks.in_groups_of(52)
  end

  def self.special_bday
    Date.new(1990,4,8)
  end

  def self.special_dday
    Date.new(2092,10,28)
  end



  private

  def set_year
    self.year = self.date.year
  end

  def set_month
    self.month = self.date.month
  end

  def set_week
    self.week = self.date.cweek
  end

  def set_week_id
    self.week_id = "#{self.date.year}#{self.date.cweek}".to_i
  end
end
