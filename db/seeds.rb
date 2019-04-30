# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pat = Author.create!(given_name: 'Pat', family_name: 'shia')
ruthy = Author.create!(given_name: 'Ruthy', family_name: 'Njeri')
jimmy = Author.create!(given_name: 'Jimmy', family_name: 'Kiny')

oreilly = Publisher.create!(name: "O'Rielly")


Book.create!(title: 'Ruby Under a Microscope',
             subtitle: 'An Illustrated Guide to Ruby Internals',
             isbn_10: '1595575697',
             isbn_13: '9781598445617',
             description: 'Ruby Under a Microscope is a cool book!',
             released_on: '2013-09-01',
             publisher: oreilly,
             author: pat)

Book.create!(title: 'Ruby on Rails Tutorial',
             subtitle: 'Learn Web Development with Rails',
             isbn_10: '0134044309',
             isbn_13: '9780334057703',
             description: 'The Rails Tutorial is great!',
             released_on: '2013-05-09',
             publisher: nil,
             author: ruthy)

Book.create!(title: 'Agile Web Development with Rails 4',
             subtitle: '',
             isbn_10: '1937788064',
             isbn_13: '9781907785567',
             description: 'Stay agile!',
             released_on: '2015-10-11',
             publisher: oreilly,
             author: jimmy)
