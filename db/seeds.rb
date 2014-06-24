# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ['Stool',
              'Barber Chair',
              'Broken Chair',
              'Desk Chair',
              'Office Chair',
              'folding Chair',
              'Outdoor Chair',
              'Coder Chair',
              'Lounge Chair',
              'Long Chair',
              'Fauteuil',
              'High Chair',
              'Designer Chair',
              'Rocking Chair',
              'Quirky Chair',
              'Low Chair',
              'Beanbag',
              'Floor',
              'Big Chair',
              'Small Chair',
              'Bench',
              'Throne',
              'Iron Throne',
              'Antique Chair',
              'Modern Chair',
              'Captains chair',
              'Kitchen Chair',
              'Special Chair',
              'Living Room Chair',
              'Mobile Chair'
              ]

categories.each do |cat|
  Category.find_or_create_by(name: cat)
end
