# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@current_year = 0
@current_week = 0

Day.all.each{|day|
  if @current_year != day.year
    # create a new tr
  else
  end
  @current_year += day.year
  @current_week += day.week

}


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

