class Day < ApplicationRecord

  



  validates_presence_of :date, :year, :month, :week, :week_id
  

  before_validation :set_year, :set_month, :set_week, :set_week_id

  def self.create_days_from_range(birthdate,deathdate)
    @dates = []
    (birthdate..deathdate).each{|date|
      @dates << Day.new(date: date)
    }
    Day.import @dates
  end

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
