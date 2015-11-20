# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.create(band: 'Dimmu Borgir',
								venue: 'Air Canada Centre',
								city: 'Toronto',
								date: DateTime.now,
								price: 50,
								description: "El grupo de metal más emblemático de Noruega viene a Toronto a destruir la ciudad con su música satántica. No te puedes perder lo que va a ser un espectáculazo!")

Concert.create(band: 'Basshunter',
								venue: 'Verizon Centre',
								city: 'Washington',
								date: DateTime.now + 30,
								price: 70,
								description: "El popular artista de EDM viene a EEUU a mostrar a esos yanquis que aquí los que dominan no son ellos, sino los suecos.")

Concert.create(band: 'Andrea Bocelli',
								venue: 'Centro de Bellas Artes Luis A. Ferré',
								city: "San Juan",
								date: DateTime.now + 30,
								price: 120,
								description: "El talento de Bocelli llega a Puerto Rico, con éxitos tales como 'Por tí volaré'. No te pierdas la oportunidad de presenciar este espectáculo!")

Concert.create(band: 'Daddy Yankee',
								venue: 'Estadio José Miguel Agrelot',
								city: "San Juan",
								date: DateTime.now + 90,
								price: 1, 
								description: "A este payaso no vale la pena verlo,pero si realmente deseas triturarte el cerebro como un flan en el horno, pues invito a ese público a presenciar este espectáculo que promete ser un quema-neuronas")

