# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
Quote.destroy_all

Event.create(name: "Fall of the Berlin Wall", date: "11/08/1989", desc: "Marked the falling of the Iron Curtain and the start of the fall of communism in Eastern and Central Europe", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/West_and_East_Germans_at_the_Brandenburg_Gate_in_1989.jpg/480px-West_and_East_Germans_at_the_Brandenburg_Gate_in_1989.jpg")
Event.create(name: "Apollo 11", date: "7/20/1969", desc: "Spaceflight that first landed humans on the Moon", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Aldrin_Apollo_11_original.jpg/520px-Aldrin_Apollo_11_original.jpg")
Event.create(name: "I Have a Dream Speech", date: "8/28/1963", desc: "'I Have a Dream' is a public speech that was delivered by American civil rights activist Martin Luther King Jr. during the March on Washington for Jobs and Freedom on August 28, 1963, in which he called for civil and economic rights and an end to racism in the United States.", img:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Martin_Luther_King_-_March_on_Washington.jpg/480px-Martin_Luther_King_-_March_on_Washington.jpg")

response = RestClient.get('https://type.fit/api/quotes')
data = JSON.parse(response)

data.map do |quote|
    Quote.create(text: quote['text'],author: quote['author'])
end




