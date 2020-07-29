# *** #
# *** #
# *** #

# WHICH SEED ACTION TO RUN #

initial_seed = false
reset_all_data = true
delete_all = false

# HOW MANY YEARS TO SEED IN THE DB #

start_year = 1980
num_of_years = 140

# *** #
# *** #
# *** #

custom_bday = Date.new(1990,4,8)
custom_age = 102
yr = custom_bday.year + custom_age
custom_dday = Date.new(yr,10,28)

start_date = Date.new(start_year,1,1)
end_date = start_date + (num_of_years+1).years


if initial_seed == true
  ## INITIAL SEED ##
  puts "* ### * ### * ### * ### *"
  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"

  Day.create_days_from_range(start_date,end_date)
  CustomDate.new(bday: custom_bday, dday: custom_dday ).save

  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  puts "* ### * ### * ### * ### *"
end

if reset_all_data == true
  ## RESET ALL DATA ##

  puts "* ### * ### * ### * ### *"
  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  puts
  
  Day.delete_all
  CustomDate.delete_all

  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  puts 

  Day.create_days_from_range(start_date,end_date)
  CustomDate.new(bday: custom_bday, dday: custom_dday ).save

  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  puts "* ### * ### * ### * ### *"
end



if delete_all == true
  puts "* ### * ### * ### * ### *"
  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  Day.delete_all
  CustomDate.delete_all
  puts "#{Day.all.count} days in db"
  puts "#{CustomDate.all.count} custom dates in db"
  puts "* ### * ### * ### * ### *"
end

## grouping for table ##

# Day.unique_years.sort.each{|year|
#   p "**#{year}**<tr>"
#   year_days = Day.where(year: year)
#   p "#{year_days.count} days in #{year}"
#   week_groups = year_days.group_by{ |date| date.week }
#   p "#{week_groups.count} week groups"
#   puts ""
# }

# puts Day.years.count
# puts Day.years.uniq.count


# ## BREAKTHROUGH STUFF HERE ##
# bday = Date.new(1900,4,8)
# dday = Date.new(1905,4,8)

# p Day.life_weeks_new(bday,dday)
# ## END BREAKTHROUGH STUFF ##

# starter = Day.life_weeks(bday,dday)
# p "Day.life_weeks(bday,dday) returns an #{starter.class} with #{starter.count} elements"
# year = starter[0]
# p "The first element is a year: #{year}"
# weeks_hsh = starter[1]
# p "The second elelemnt is an #{weeks_hsh.class} with #{weeks_hsh.count} elements"
# p "in which the keys are #{weeks_hsh.keys.sample.class}s and the values are #{weeks_hsh.values.sample.class}s"
# p "\n Now, let's work with the keys..."
# p weeks_hsh.keys.sort
# # p "#{weeks.count} weeks in #{year}"
# # p weeks.values.sample.sample.class
# # puts ""

# # [
# #   [year, 
# #     [] 
# #   ],
# #   [1900, 
# #     []
# #   ]
# # ]





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# @current_year = 0
# @current_week = 0

# Day.all.each{|day|
#   if @current_year != day.year
#     # create a new tr
#   else
#   end
#   @current_year += day.year
#   @current_week += day.week

# }


## GROUPING BY CWEEK ##
# Day.all.each{|day|
#   day.update(week_id: "#{day.year}#{day.week}".to_i)
# }

# Day.all.each{|day|
#   p "#{day.year}#{day.week}".to_i
#   p "#{day.year}#{day.week}".to_i.class
#   puts ""
# }

# p Day.all.map{ |day| day.year }.zip(Day.all.map{ |day| day.week } ).map{|pair| "#{pair[0]}-#{pair[1]}"}.count
# p Day.all.map{ |day| day.year }.zip(Day.all.map{ |day| day.week } ).map{|pair| "#{pair[0]}-#{pair[1]}"}.uniq.count
# Day.group_all_days_by_cweek.each{|group|
  
#   days = group[1]
#   dayscount = group[1].count
#   year = group[0][0]
#   weeknum = group[0][1]
  
  
#   if dayscount != 7 
#     puts ""
#     puts year
#     puts weeknum
#     puts dayscount
#   end

# }

# # ## DAYS ##

# puts "=== === === ==="
# p Day.all.count
# puts "=== === === ==="

# s = Date.new(1990,4,8)
# e = Date.new(2092,10,28)
# Day.create_days_from_range(s,e)

# puts "=== === === ==="
# p Day.all.count
# puts "=== === === ==="









