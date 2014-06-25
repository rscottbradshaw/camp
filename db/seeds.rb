# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

liu = Counselor.create(first_name: "Liu", last_name: "Kang")
shao = Counselor.create(first_name: "Shao", last_name: "Kahn")
johnny = Counselor.create(first_name: "Johnny", last_name: "Cage")

kano = Camper.create(name: "Kano")
scorpion = Camper.create(name: "Scorpion")
raiden = Camper.create(name: "Raiden")
jax = Camper.create(name: "Jax")
kitana = Camper.create(name: "Kitana")
baraka = Camper.create(name: "Baraka")


Activity.create(counselor: liu, camper: kano, when: Time.zone.now)
Activity.create(counselor: liu, camper: scorpion, when: Time.zone.now)
Activity.create(counselor: shao, camper: raiden, when: Time.zone.now)
Activity.create(counselor: shao, camper: jax, when: Time.zone.now)
Activity.create(counselor: johnny, camper: kitana, when: Time.zone.now)
Activity.create(counselor: johnny, camper: baraka, when: Time.zone.now)