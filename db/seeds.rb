# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name:'Chateau Montelena', year:2010, winery:'Napa Valley', country:'USA', varietal:'Chardonnay')
Wine.create(name:'Raisins Sans Valeur', year:'1908', winery:'French Lick', country:'France', varietal:'Merlot')
Wine.create(name:"Uva Senza Valore", year:2014, winery:'Pizza', country:'Italy', varietal:'Cabernet Sauvingon')
Wine.create(name:'Wertlos Trauben', year:'1734', winery:"4th Reich", country:'Germany', varietal:'Riesling')