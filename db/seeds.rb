# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'monthly' }, 
  { :name => 'quarterly' },
  { :name => 'yearly' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Thespee Admin', :email => 'thespee.site@gmail.com', :password => '7823bashar!teg3', :password_confirmation => '7823bashar!teg3'
user.add_role :admin
puts 'admin created: ' << user.name
user2 = User.create! :name => 'monthly', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
user2.add_role :monthly
user3 = User.create! :name => 'quarterly', :email => 'user3@example.com', :password => 'please', :password_confirmation => 'please'
user3.add_role :quarterly
user4 = User.create! :name => 'yearly', :email => 'user4@example.com', :password => 'please', :password_confirmation => 'please'
user4.add_role :yearly
puts "added users: #{user2.name}, #{user3.name}, #{user4.name}"
