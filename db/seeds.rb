# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
response = RestClient.get('https://type.fit/api/quotes')
data = JSON.parse(response)

data.map do |quote|
    Quote.create(text: quote['text'],author: quote['author'])
end