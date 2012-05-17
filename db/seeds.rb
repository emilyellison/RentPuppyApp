# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emily = User.create(:firstname => 'Emily', :lastname => 'Ellison', :username => 'emilyellison',
                    :password => 'foobar', :password_confirmation => 'foobar', :quality => 75)

brian = User.create(:firstname => 'Brian', :lastname => 'Kung', :username => 'brianhingyenkung@gmail.com',
                    :password => 'foobar', :password_confirmation => 'foobar', :quality => 85)
                 
kayvon = User.create(:firstname => 'Kayvon', :lastname => 'Saless', :username => 'kayvon.saless@gmail.com',
                     :password => 'foobar', :password_confirmation => 'foobar', :quality => 80)
                
ilana = User.create(:firstname => 'Ilana', :lastname => 'Milkes', :username => 'ilana@codeacademy.org',
                    :password => 'foobar', :password_confirmation => 'foobar', :quality => 90)

spotty = Puppy.create(:name => 'Spotty', :address => '500 W. Belden Ave., Apt 3')                 
waffles = Puppy.create(:name => 'Waffles', :address => '633 S. Plymouth Ct., Apt 408')
princess = Puppy.create(:name => 'Princess Biggles', :address => 'Merchandise Mart')

10.times do
  spotty.walks.create(:walk_date => Date.today + rand(10).days)
end

10.times do
  waffles.walks.create(:walk_date => Date.today + rand(10).days)
end

10.times do
  princess.walks.create(:walk_date => Date.today + rand(10).days)
end
