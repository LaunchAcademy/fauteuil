#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

User.delete_all
Review.delete_all
Chair.delete_all

#------------------------RANDOM USERS----------------------#

#create array of profile pics
profile_photos = Dir.entries("#{Rails.root}/profile_images")

profile_photos.each do |photo|
  profile_photos.reject! { |photo| photo[-3..-1] != "jpg" }
end


40.times do |i|
  User.create(username: Faker::Name.last_name+"#{i}",
              email: Faker::Internet.safe_email,
              encrypted_password: "hellothisareallylongstring2178t8173113rsfa")

end


User.all.each_with_index do |user, i|
  user.avatar.store!(File.open(File.join(Rails.root,
                     "/profile_images/#{profile_photos[i]}")))
  user.save!
end

#----------------------------RANDOM CHAIRS------------------#
chair_names = [
   'Bachelors Chair',
   'Balans Chair',
   'Ball Chair',
   'Bar Stool',
   'Barbers Chair',
   'Barcelona Chair',
   'Barrel Chair',
   'Bath Chair',
   'Beach Chair',
   'Bean Bag Chai',
   'Bench',
   'Bergere',
   'Bikini Chair',
   'Bofinger Chair',
   'Brewster Chair',
   'Bubble Chair',
   'The butterfly chair',
   'Cantilever Chair',
   'Captains Chair',
   'Caquetoire',
   'Car Chair',
   'Carver Chair',
   'Chaise A Bureau',
   'Chaise Longue',
   'Chesterfield Chair',
   'Club Chair',
   'Cogswell Chair',
   'Corner Chair',
   'Curule Chair',
   'Dante Chair',
   'Deckchair',
   'Dentist Chair',
   'Dining Chair',
   'Directors Chair',
   'Eames Lounge Chair',
   'easy chair',
   'Egg Chair',
   'Electric Chair',
   'Farthingale Chair',
   'Fauteuil',
   'Fiddleback Chair',
   'Fighting Chair',
   'Folding Chair',
   'Friendship Bench',
   'Gaming Chair',
   'Sweetheart Chair',
   'Swivel Chairs',
   'Toilet Chair',
   'Tulip Chair',
   'Visitors Chair',
   'Voyeuse Chair',
   'Wassily Chair',
   'Watchmans Chair',
   'Wheelchair',
   'Wheeled Computer Chair',
   'Wicker Chair',
   'Wiggle Chair',
   'Windsor chair',
   'Patio Chair',
   'Pew Stacker Chair',
   'Planters Chair',
   'Poofbag Chair',
   'Potty Chair',
   'Pressback Chair',
   'Pushchair',
   'Revolving Chair',
   'Rex Chair',
   'Chair',
   'Saddle Chair',
   'Savonarola Chair',
   'Sedan Chair',
   'Sgabello',
   'Shaker Rocker',
   'Shower Chair',
   'Side Chair',
   'Sitstand Chair',
   'Sling Chair',
   'Slumber Chair',
   'Spinning Chair',
   'Stacking Chair',
   'Steno Chair',
   'Stool'
]

#create array of chair pics
chair_photos = Dir.entries("#{Rails.root}/chair_images")

chair_photos.each do |photo|
  chair_photos.reject! { |photo| photo[-3..-1] != "jpg" }
end


chair_names.each do |name|
  Chair.create(name: name, location: Faker::Address.city,
    manufacturer: Faker::Company.name, user_id: rand(39), category_id: rand(20))
end

Chair.all.each_with_index do |chair, i|
  chair.picture.store!(File.open(File.join(Rails.root,
                     "/chair_images/#{chair_photos[i+1]}")))
  chair.save!
end

model = BigramModel.new
model.train_with_url "http://www.overstock.com/Home-Garden/Vintage-Tabouret-Stacking-Chair-Set-of-4/6839588/customer-reviews.html?rsort=4"

150.times do |i|
  Review.create(body: model.random_paragraph, rating: (rand(5.0).round_half))
end

class Fixnum
  def round_half
    (self * 2).round / 2.0
  end
end

categories = [
  'Stool',
  'Barber Chair',
  'Kid Chair',
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
  'Mobile Chair',
  'Wheel Chair'
]

categories.each do |category|
  Category.find_or_create_by(name: category)
end
