# genre: 'Thriller', isbn: '0008234183'
puts 'Deleting'
User.destroy_all
Book.destroy_all

puts 'Repopulating database...'

puts 'Creating books...'

user1 = User.create(
  first_name: "Nadine",
  last_name: "Smith",
  location: "E10",
  email: "nsmith@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1551158390-3235cf6a4d97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=934&q=80'
  )

user2 = User.create(
  first_name: "Tanya",
  last_name: "Silverman",
  location: "E1",
  email: "tanya_gibson@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
  )

user3 = User.create(
  first_name: "Emily",
  last_name: "Wong",
  location: "TW1",
  email: "emily_wong@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1542200843-f8ee535b631f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
  )

user4 = User.create(
  first_name: "Mo",
  last_name: "Hussain",
  location: "E10",
  email: "mo_1992@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1518779158850-b302524a03d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80'
  )

user5 = User.create(
  first_name: "Aleena",
  last_name: "Sheraz",
  location: "SL0",
  email: "asheraz@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1517945577684-acd9255116a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'
  )

user6 = User.create(
  first_name: "Scott",
  last_name: "Buckland",
  location: "SL0",
  email: "scotty_b@gmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1542156822-6924d1a71ace?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  )

user7 = User.create(
  first_name: "Megan",
  last_name: "Lovett",
  location: "SL0",
  email: "meggie_love@hotmail.com",
  password: '123123',
  avatar: 'https://images.unsplash.com/photo-1499358517822-d8578907a095?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80'
  )

def api_hash
  @book_info["items"].select{ |item| item["volumeInfo"]["language"] == "en" }.first["volumeInfo"]
end

def find_image
  images = api_hash["imageLinks"]
  if images
    image = images["thumbnail"]
    URI.open(image)
  else
    use_open_library("L")
  end
end

def use_open_library(size)
  url = open_library_url(@book.isbn, "L")
  begin
    URI.open(url)
  rescue StandardError
    if size == "L"
      use_open_library("M")
    elsif size == "M"
      use_open_library("S")
    elsif size == "S"
      # Noooope
      # none of this has worked
      URI.open("https://islandpress.org/sites/default/files/400px%20x%20600px-r01BookNotPictured.jpg")
    end
  end
end

def open_library_url(isbn, size)
  "http://covers.openlibrary.org/b/isbn/#{isbn}-#{size}.jpg?default=false"
end

def scrape(isbn)
  url_info = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{@book.isbn}"

  info_serialized = open(url_info).read
  @book_info = JSON.parse(info_serialized)

  if @book_info["totalItems"].zero?
    flash[:alert] = "that isbn didn't work"
    return render :new
  end

  @book.title = api_hash["%w{title}"]
  @book.author_name = api_hash["authors"]
  @book.year = api_hash["publishedDate"]
  @book.description = api_hash["description"]

  cover_file = find_image
  @book.photo.attach(io: cover_file, filename: 'cover.jpg', content_type: 'image/jpg')
end

index1 = 0

isbn_array1 = [{genre: 'Thriller', isbn: '1473676398'}, {genre: 'Historical fiction', isbn: '1447286030'}, {genre: 'Drama', isbn: '0552551643'}, {genre: 'Fantasy', isbn: '1408890046'}, {genre: 'Political fiction', isbn: '0241979064'}]
5.times do
  p index1
  @book = Book.new(genre: "#{isbn_array1[index1][:genre]}", user_id: user1.id, isbn: "#{isbn_array1[index1][:isbn]}")
  scrape(isbn_array1[index1][:isbn])
  @book.user_id = user1.id
  @book.save
  index1 += 1
end

index2 = 0

isbn_array2 = [{genre: 'Drama', isbn: '9780349142920'}, {genre: 'Romance', isbn: '0008172145'}, {genre: 'Drama', isbn: '1409175227'}, {genre: 'Science fiction', isbn: '1481447939'}, {genre: 'Science fiction', isbn: '9781405927024'}]
5.times do
  p index2
  @book = Book.new(genre: "#{isbn_array2[index2][:genre]}", user_id: user2.id, isbn: "#{isbn_array2[index2][:isbn]}")
  scrape(isbn_array2[index2][:isbn])
  @book.user_id = user2.id
  @book.save
  index2 += 1
end

index3 = 0

isbn_array3 = [{genre: 'Historical fiction', isbn: '0241975239'}, {genre: 'Historical fiction', isbn: '0708898408'}, {genre: 'Science fiction', isbn: '1101973951'}, {genre: 'Drama', isbn: '1784742430'}, {genre: 'Drama', isbn: '9780141036601'}]
5.times do
  p index3
  @book = Book.new(genre: "#{isbn_array3[index3][:genre]}", user_id: user3.id, isbn: "#{isbn_array3[index3][:isbn]}")
  scrape(isbn_array3[index3][:isbn])
  @book.user_id = user3.id
  @book.save
  index3 += 1
end

index4 = 0

isbn_array4 = [{genre: 'Non-fiction', isbn: '1925240703'}, {genre: 'Non-fiction', isbn: '185702835X'}, {genre: 'Non-fiction', isbn: '0198788606'}, {genre: 'Non-fiction', isbn: '1784706817'}, {genre: 'Romance', isbn: '1471156265'}]
5.times do
  p index4
  @book = Book.new(genre: "#{isbn_array4[index4][:genre]}", user_id: user4.id, isbn: "#{isbn_array4[index4][:isbn]}")
  scrape(isbn_array4[index4][:isbn])
  @book.user_id = user4.id
  @book.save
  index4 += 1
end

index5 = 0

isbn_array5 = [{genre: 'Action', isbn: '0995693307'}, {genre: 'Thriller', isbn: '9781444720723'}, {genre: 'Thriller', isbn: '0008358923'}, {genre: 'Historical fiction', isbn: '1784707244'}, {genre: 'Drama', isbn: '154204118X'}]
5.times do
  p index5
  @book = Book.new(genre: "#{isbn_array5[index5][:genre]}", user_id: user5.id, isbn: "#{isbn_array5[index5][:isbn]}")
  scrape(isbn_array5[index5][:isbn])
  @book.user_id = user5.id
  @book.save
  index5 += 1
end

index6 = 0

isbn_array6 = [{genre: 'Romance', isbn: '1999936205'}, {genre: 'Romance', isbn: '1785032437'}, {genre: 'Non-fiction', isbn: '1788310322'}, {genre: 'Romance', isbn: '9780141378640'}, {genre: 'Historical fiction', isbn: '1526611635'}]
5.times do
  p index6
  @book = Book.new(genre: "#{isbn_array6[index6][:genre]}", user_id: user6.id, isbn: "#{isbn_array6[index6][:isbn]}")
  scrape(isbn_array6[index6][:isbn])
  @book.user_id = user6.id
  @book.save
  index6 += 1
end

index7 = 0

isbn_array7 = [{genre: 'Classic', isbn: '185326041X'}, {genre: 'Classic', isbn: '9780141187761'}, {genre: 'Classic', isbn: '1853260010'}, {genre: 'Classic', isbn: '0141182709'}, {genre: 'Classic', isbn: '1840227788'}]
5.times do
  p index7
  @book = Book.new(genre: "#{isbn_array7[index7][:genre]}", user_id: user7.id, isbn: "#{isbn_array7[index7][:isbn]}")
  scrape(isbn_array7[index7][:isbn])
  @book.user_id = user7.id
  @book.save
  index7 += 1
end


# User.create email: 'me@mail.com', password: '123456'

# user1 = User.create(
#   first_name: "Bob",
#   last_name: "Smith",
#   location: "E10",
#   email: "bob@bob.com",
#   password: '123123'
#   )
# book1 = Book.create(title: 'Pride and Prejudice',
#   year: 1813,
#   description: "Mr Bennet of Longbourn estate has five daughters, but his property is entailed and can only be passed to a male heir. His wife also lacks an inheritance, so his family will be destitute upon his death. Thus it is imperative that at least one of the girls marry well to support the others, which is a motivation that drives the plot. The novel revolves around the importance of marrying for love, not for money or social prestige, despite the communal pressure to make a wealthy match.",
#   genre: 'Classic',
#   author_name: 'Jane Austen', user_id: user1.id)

# user2 = User.create(
#   first_name: "kate",
#   last_name: "Lansdale",
#   location: "E1",
#   email: "kate@kate.com",
#   password: '123123'
#   )
# book2 = Book.create(title: "Harry Potter and the Philosopher's Stone",
#   year: 1997,
#   description: "Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just 15 months old.",
#   genre: 'Fantasy',
#   author_name: 'J.K. Rowling', user_id: user2.id)

# user3 = User.create(
#   first_name: "Sarah",
#   last_name: "Jones",
#   location: "TW1",
#   email: "sarah@sarah.com",
#   password: '123123'
#   )
# book3 = Book.create(title: "A Midsummer Night's Dream",
#   year: 1596,
#   description: "Portrays the events surrounding the marriage of the Duke of Athens, Theseus, and Hippolyta. These include the adventures of four young Athenian lovers and a group of six amateur actors (mechanicals), who are controlled and manipulated by the fairies who inhabit the forest in which most of the play is set.",
#   genre: 'Comedy',
#   author_name: 'William Shakespeare', user_id: user3.id)

# user4 = User.create(
#   first_name: "Jake",
#   last_name: "Marshall",
#   location: "E10",
#   email: "jake@jake.com",
#   password: '123123'
#   )
# book4 = Book.create(title: 'All the Light We Cannot See',
#   year: 2014,
#   description: 'Set in occupied France during World War II, the novel centers on a blind French girl and a German boy whose paths eventually cross.',
#   genre: 'Historical',
#   author_name: 'Anthony Doerr', user_id: user4.id)

# user5 = User.create(
#   first_name: "Carl",
#   last_name: "Edwards",
#   location: "SL0",
#   email: "carl@carl.com",
#   password: '123123'
#   )
# book5 = Book.create(title: 'The Picture of Dorian Gray',
#   year: 1890,
#   description: 'Newly understanding that his beauty will fade, Dorian Gray expresses the desire to sell his soul, to ensure that his picture, rather than he, will age and fade. The wish is granted, and Dorian pursues a libertine life of varied amoral experiences while staying young and beautiful; all the while, his portrait ages and records every sin.',
#   genre: 'Gothic fiction',
#   author_name: 'Oscar Wilde', user_id: user5.id)

puts 'Creating book clubs...'

Bookclub.create(name: 'Gangster Grandmas Book Club',
  genre: 'True Crime',
  capacity: 10,
  description: 'For grandmas or anybody else that loves true crime.',
  user_id: User.first.id)

Bookclub.create(name: 'It’s a Hardback Life',
  genre: 'Fantasy',
  capacity: 18,
  description: 'Take a break from your boring life with a fantasy novel or ten.',
  user_id: User.first.id)

Bookclub.create(name: 'Agree To Diss A Brie Book Club',
  genre: 'Any',
  capacity: 15,
  description: 'A classic book club for cheese lovers.',
  user_id: User.first.id)

puts 'Done.'

