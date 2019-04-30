FactoryBot.define do
  factory :book, aliases: [:ruby_microscope] do
    title { "Ruby Under a Microscope" }
    subtitle { "An illustrated guide to Ruby Internals" }
    isbn_10 { "1567348373" }
    isbn_13 { "9383933883388" }
    description { "Ruby under a Microscope is a cool book" }
    released_on { "2019-04-25" }
    publisher
    author
  end

  factory :ruby_on_rails_tutorial, class: Book do
    title { "Ruby on Rails Tutorial" }
    subtitle { "Learn Web Development With Rails"}
    isbn_10 { "7298279389" }
    isbn_13 { "9282373838789" }
    description { "The rails tutorial is great" }
    released_on { "2013-05-09" }
    publisher_id { nil }
    association :author, factory: :michael_hartl
  end

  factory :agile_web_development, class: Book do
    title { "Agile Web Development with Rails 4" }
    subtitle { "" }
    isbn_10 { "8373847448" }
    isbn_13 { "9833628273782" }
    description { "Stay Agile" }
    released_on { "2015-10-11" }
    publisher
    association :author, factory: :sam_ruby
  end
end
