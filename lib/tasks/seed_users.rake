namespace :seed do
  desc "Seed the users table with data"
  task :users => :environment do
    100.times do
      first = Faker::Name.first_name
      last  = Faker::Name.last_name
      nickname = "#{first.downcase}#{last.downcase}"
      puts "Creating User #{first} #{last}"
      User.create(:first => first, :last => last, :nickname => nickname)
    end
  end
end

