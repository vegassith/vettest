# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Doctor.create!(name: 'Mark Murphy', address: '7750 test St', city: 'Las Vegas', state: 'NV', zip: '89115', school: 'Yale', years: '6' )
Doctor.create!(name: 'Susan Doe', address: '6575 East 55th St', city: 'Las Vegas', state: 'NV', zip: '89122', school: 'Harvard', years: '1' )
Doctor.create!(name: 'Bob Doe', address: '98 Las Vegas BLVD', city: 'Las Vegas', state: 'NV', zip: '89116', school: 'UNLV', years: '10' )
Typeofpet.create!(name: 'Dog')
Typeofpet.create!(name: 'Cat')
Typeofpet.create!(name: 'Bird')
Pet.create!(name: 'Cody', typeofpet_id: 1, breed: 'Yellow Lab', age:'2', weight:'75', lastvisit: Date.new(2014,8,15) )
Appointment.create!(doctor_id: 1, date: Date.new(2015,4,19),	pet:'Dexter',	customer:'Karen', reminder:'true',	reason:'Cody needs his annual needles.')