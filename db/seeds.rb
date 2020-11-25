# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Baller.destroy_all
Reservation.destroy_all
VipLounge.destroy_all

sam = Baller.create(name: "Sam", age: 50)
ronalyssa = Baller.create(name: "Ronalyssa", age: 2)
max = Baller.create(name: "Max", age: 999)
derick = Baller.create(name: "Derick", age: 1)

gucci = VipLounge.create(name: "Gucci Palace", price: 5000)
versace = VipLounge.create(name: "Versace Palace", price: 1000000)
walmart = VipLounge.create(name: "Walmart Store", price: 2)

rez1 = Reservation.create(baller_id: max.id, vip_lounge_id: versace.id)
rez2 = Reservation.create(baller_id: max.id, vip_lounge_id: gucci.id)
rez3 = Reservation.create(baller_id: derick.id, vip_lounge_id: walmart.id)


