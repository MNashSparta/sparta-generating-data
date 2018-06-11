require 'faker'

# p Faker::Address.city
# p Faker::Date.between(2.days.ago, Date.today) # Broken
# p Faker::Name.first_name
# p Faker::Name.last_name

# p "My name is #{Faker::Name.first_name} #{ Faker::Name.last_name} but on weekends I go by #{Faker::RuPaul.queen}. I'm a #{Faker::Demographic.marital_status} #{Faker::Demographic.sex} #{Faker::Demographic.demonym} who enjoys long walks on the beach. My favourite band is the infamous #{Faker::Kpop.ii_groups}.
#  Their music is like the work of #{Faker::Artist.name}. I have a cat called #{Faker::Dog.name} and a #{Faker::Dog.age} dog called #{Faker::Cat.name}. They're taking the hobbits to #{Faker::LordOfTheRings.location}! #{Faker::SiliconValley.quote}"


p "#{Faker::SiliconValley.quote}. #{Faker::SiliconValley.quote}. #{Faker::SiliconValley.quote}. #{Faker::SiliconValley.quote}"
