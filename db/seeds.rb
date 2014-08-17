# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user1 = User.new(:name => 'Raj', :email => 'raj@example.com', :password => 'tester123', :password_confirmation => 'tester123', :role => 0) 
@user1.save
@user2 = User.new(:name => 'Sneha', :email => 'sneha@example.com', :password => 'tester321', :password_confirmation => 'tester321', :role => 0) 
@user2.save
@user3 = User.new(:name => 'Krishna', :email => 'krishna@example.com', :password => 'tester1234', :password_confirmation => 'tester1234', :role => 0) 
@user3.save
@user4 = User.new(:name => 'Kanchan', :email => 'kanchan@example.com', :password => 'tester3214', :password_confirmation => 'tester3214', :role => 0) 
@user4.save