# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clear out previous data

Week.delete_all
Day.delete_all
Speaker.delete_all

# Create all Weeks

n = 1

12.times do 
  Week.create(:ordinal => n)
  n+= 1
end

# Create days for semester 003

d1 = Day.create(
  :date => ,
  :ordinal => 1,
  :week_id => 1,
  )


