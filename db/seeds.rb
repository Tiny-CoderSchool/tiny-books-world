# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

verne = Author.create(
  name: 'Jules Verne',
  biography: "Jules Verne, a 19th century French author, is famed for such revolutionary science-fiction novels as 'Around the World in Eighty Days' and 'Twenty Thousand Leagues Under the Sea.'"
)

book = Book.create(
  title: 'Twenty Thousand Leagues Under the Sea',
  description: 'Twenty Thousand Leagues Under the Sea (French: Vingt mille lieues sous les mers) is a classic science fiction novel by French writer Jules Verne, published in 1870. It is about the fictional Captain Nemo and his submarine, Nautilus, as seen by one of his passengers, Professor Pierre Aronnax.',
  publisher: 'NXB Văn Học',
  published_date: Time.utc(2017, 2),
  book_type: 'soft-cover',
  page: 200,
  cover: 'https://vcdn.tikicdn.com/cache/w1200/media/catalog/product/b/i/bia-1---hai-nam-tren-hoang-dao.u547.d20170220.t171641.1904.jpg'
)

verne.books << book
