# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
      Ruby is faster than 10 fast languages! It is used only by humans, not
      plants or animals.
      </p>},
    image_url: 'ruby.jpg',
    price: 49.95)

Product.create!(title: 'Haskell',
  description:
    %{<p>
      <em>Haskell</em> is cooler than the 10 most uncool languages! It is used
      by lots of humans.
    </p>},
  image_url: 'rtp.jpg',
  price: 34.95)
