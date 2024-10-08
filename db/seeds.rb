require 'open-uri'

puts "🗑️ Destroying all yachts..."
Yacht.destroy_all
puts "🗑️ Destroying all users..."
User.destroy_all

puts "🧍 Creating user..."
user = User.create!(email: "pammmm@kool.com", password: "123456")
user_1 = User.create!(email: "hello@lewagon.com", password: "7654321")
user_2 = User.create!(email: "lewagon@hello.com", password: "0987654")

yachts = [
  {
    name: 'Sea Breeze',
    model: 'Sunseeker Predator 74',
    price: 4500.00,
    user: user,
    photo: 'https://images.pexels.com/photos/843633/pexels-photo-843633.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  },
  {
    name: 'Ocean Escape',
    model: 'Azimut 66 Flybridge',
    price: 5000.00,
    user: user,
    photo: 'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  },
  {
    name: 'Wave Rider',
    model: 'Princess V65',
    price: 4700.00,
    user: user_1,
    photo: 'https://images.pexels.com/photos/42091/pexels-photo-42091.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  },
  {
    name: 'Luxury Cruiser',
    model: 'Ferretti 720',
    price: 5500.00,
    user: user_1,
    photo: 'https://images.pexels.com/photos/296278/pexels-photo-296278.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  },
  {
    name: 'Dream Catcher',
    model: 'Pershing 8X',
    price: 5300.00,
    user: user_2,
    photo: 'https://images.pexels.com/photos/144634/pexels-photo-144634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  },
  {
    name: 'Nautical Adventure',
    model: 'Sanlorenzo SL86',
    price: 6000.00,
    user: user_2,
    photo: 'https://images.pexels.com/photos/2775528/pexels-photo-2775528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  }
]

puts "🛥️ Creating yachts..."
yachts.each do |info|
  Yacht.create!(info)
end

puts "✅ Finished!"
