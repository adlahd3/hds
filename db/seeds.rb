# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create([{name:'admin'},{name:'driver'},{name:'frontdesk'},{name:'coordinator'}])

cities = City.create([{name:'Riyadh'}])

District.create(name:'Olaya',city:cities.first)

OrderType.create([{name:'Normal'},{name:'Recurring'}])

Status.create([{name:'open'},{name:'closed'},{name:'force closed'},{name:'cancelled'},{name:'assigned'}])

User.create(name:'Adel Alahmed',email:'adel@alahmed.com',password:'test@1234')
