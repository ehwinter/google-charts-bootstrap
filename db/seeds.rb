# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r=Random.new
company=Faker::Company
address=Faker::Address
name=Faker::Name
internet=Faker::Internet
lorem=Faker::Lorem

if User.first.nil?
  puts 'SETTING UP DEFAULT USER LOGIN'
  user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
  puts 'New user created: ' << user.name
  user = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
  puts 'New user created: ' << user.name
  user.add_role :admin
  user.add_role :super_admin
end

unless User.find_by_email('admin@example.com')
  puts 'Creating random users and admins.'
  user = User.create! :name => "admin", :email =>   'admin@example.com',   :password => 'please', :password_confirmation => 'please'
  user.add_role :admin
  
  user = User.create! :name => 'Clark Kent', :email => 'superadmin@example.com', :password => 'please', :password_confirmation => 'please'
  puts 'New user created: ' << user.name
  user.add_role :admin
  user.add_role :super_admin

  (1..5).each do |i|
    user = User.create! :name => "admin"+Faker::Name.name, :email => Faker::Internet.email, :password => 'please', :password_confirmation => 'please'
    user.add_role :admin    
  end
  
  #regular users
  (1..5).each do |i|
    user = User.create! :name => "user"+Faker::Name.name, :email => Faker::Internet.email, :password => 'please', :password_confirmation => 'please'  
  end  
end

puts 'Creating random posts.'
(1..User.all.size).each do |i|
  Post.create! user_id: rand(1..User.all.size), content: Faker::Lorem.paragraph(2)  
end

unless Snippet.find_by_name('shuttle-beats-subtitle')
  puts 'Creating snippets.'
  Snippet.create name: "shuttle-beats-subtitle", content: "Share your story with others" 
end

unless OttoViewRawTrip.all.size > 50
  (1..5).each do |user_count|
    user = User.find rand(1..User.all.size)
    serial_number = rand(10000)
    
    (1..rand(10)).each do |trip_count|
      start=Time.now + trip_count.days
      distance = 0.0
        fuel=0.0
      (0..rand(10)).each do |sample_count|
        distance += 0.7
        fuel +=0.43
        OttoViewRawTrip.create serial_number: serial_number,
          trip_number: trip_count,
          current_time: start + (sample_count*2).minutes,
          trip_distance: distance,  
          trip_fuel_usage: fuel
          
      end
    end
  end
end


Faq.create! question:  "Registration: I didn't receive a letter from Transport Canada but would like to participate in Shuttle. What can I do?",
answer: "We'll be holding more Shuttle Challenges in 2013. Please contact us and leave your name and contact information so we can notify you during the next registration phase"

Faq.create! question:  "Registration: If I register for Transport Canada's Canadian Vehicle Use Study, do I need to register separately for the Shuttle Challenge?",
answer: "No. By registering for Transport Canada's Canadian Vehicle Use Study you are automatically registered for the Shuttle Challenge. "


Faq.create! question:  "Signing In: I'm trying to sign-in but it's not working. What should I do?",
answer: "If it's your first time signing in, ensure you're using your reference code provided in the letter from Transport Canada that accompanied your data logger. You can only sign in once you've received your data logger." + 
 "If you've received your data logger and your sign-in is still not working, please wait a day or two and then try again. There may be a delay registering you into the Shuttle system. If problems persist, please contact us for assistance" +
 "If you've already selected your sign-in name and password and are having difficulty signing in, please contact us for assistance"

Faq.create! question:  "I don't know my reference code. Where can I find this?", 
answer: "All letters from Transport Canada and emails from Summerhill Impact list your reference code. Please save this code as you will need it to complete the surveys and Eco Driver Training.   "

