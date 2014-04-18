# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create(email: 'leon@leon.com', password: 'mathilda', password_confirmation: 'mathilda')

Article.create(name: 'example article 1', content: 'juste un peu de texte pour tester le moteur de recherche et le reste. Yahoo.')
Article.create(name: 'example article 2', content: 'juste un peu de texte pour tester le moteur de recherche et le reste. Google.')
Article.create(name: 'example article 3', content: 'juste un peu de texte pour tester le moteur de recherche et le reste. Bing.')

ItemMenu.create(name: 'menu_top_1', zone:'main')
ItemMenu.create(name: 'menu_top_2', zone:'main')
ItemMenu.create(name: 'menu_top_3', zone:'main')

ItemMenu.create(name: 'menu_side_1', zone:'sidebar')
ItemMenu.create(name: 'menu_side_2', zone:'sidebar')
ItemMenu.create(name: 'menu_side_3', zone:'sidebar')

ItemMenu.create(name: 'footer_1', zone:'footer')
ItemMenu.create(name: 'footer_2', zone:'footer')
ItemMenu.create(name: 'footer_3', zone:'footer')