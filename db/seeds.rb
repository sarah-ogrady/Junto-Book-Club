# genre: 'Thriller', isbn: '0008234183'
require "open-uri"
puts 'Deleting'
User.destroy_all
Book.destroy_all

puts 'Repopulating database...'

puts 'Creating users...'

user1 = User.create(
  first_name: "Nadine",
  last_name: "O'Hara",
  location: "E10",
  email: "nohara@gmail.com",
  password: '123123',
  )
  file = URI.open('https://res.cloudinary.com/arxmush/image/upload/v1553214529/Gallery/brianna_one_bb9rj8.jpg')
  user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user2 = User.create(
  first_name: "Tanya",
  last_name: "Silverman",
  location: "E1",
  email: "tanya_s@gmail.com",
  password: '123123',
  )
  file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
  user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user3 = User.create(
  first_name: "Emily",
  last_name: "Wong",
  location: "TW1",
  email: "emily_wong@gmail.com",
  password: '123123',
  )
  file = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQH-3X4Qx0gq_w/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=FOE9E-1DHa-cCwMA5RsMFXQWBiKR_7gLYj8br9Kwa4o')
  user3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user4 = User.create(
  first_name: "Mo",
  last_name: "Hussain",
  location: "E10",
  email: "mo_1992@gmail.com",
  password: '123123',
  )
  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg')
  user4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user5 = User.create(
  first_name: "Aleena",
  last_name: "Sheraz",
  location: "SE13",
  email: "asheraz@gmail.com",
  password: '123123',
  )
  file = URI.open('https://images.unsplash.com/photo-1517945577684-acd9255116a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
  user5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user6 = User.create(
  first_name: "Scott",
  last_name: "Buckland",
  location: "SE9",
  email: "scotty_b@gmail.com",
  password: '123123',
  )
  file = URI.open('https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F9c88e092-9691-11e8-85e3-d844d3177259.jpg?crop=3000%2C1687%2C0%2C31&resize=1180')
  user6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user7 = User.create(
  first_name: "Megan",
  last_name: "Lovett",
  location: "E14",
  email: "meggie_love@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://images1.the-dots.com/763358/screen-shot-2017-03-17-at-15-51-22.png?p=socialSquare')
  user7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user8 = User.create(
  first_name: "Vincent",
  last_name: "Onuegbu",
  location: "N13",
  email: "vincent@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://c.stocksy.com/a/XJC000/z9/47339.jpg')
  user8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user9 = User.create(
  first_name: "Tahira",
  last_name: "Syed",
  location: "N1",
  email: "tsyed@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQFIXM7lYTeqtw/profile-displayphoto-shrink_200_200/0?e=1585180800&v=beta&t=BsWw9n7w5Poz8Y5Or6MeyxcblATuye93WZwq0RauuNo')
  user9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user10 = User.create(
  first_name: "Joe",
  last_name: "Thomas",
  location: "W3",
  email: "joethomas@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://pbs.twimg.com/profile_images/426035427326189568/BXYWW0uz_400x400.jpeg')
  user10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user11 = User.create(
  first_name: "Luke",
  last_name: "Monroe",
  location: "E5",
  email: "lmonroe@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://media.istockphoto.com/videos/young-man-smiling-video-id1008268548?s=640x640')
  user11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user12 = User.create(
  first_name: "Mia",
  last_name: "Nguyen",
  location: "E15",
  email: "mian@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQFLLevw_988cQ/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=MIXW_g67Lx3qaKfUijR58mcx_yNDCH-jYCAzSQ7VO0c')
  user12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user13 = User.create(
  first_name: "Halima",
  last_name: "Khan",
  location: "SW20",
  email: "halima12@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://www.cgu.edu/wp-content/uploads/2016/06/Ruqayya_Khan.jpg')
  user13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user14 = User.create(
  first_name: "Axel",
  last_name: "Lopez",
  location: "W10",
  email: "axellopez@hotmail.com",
  password: '123123',
  )
  file = URI.open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
  user14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

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

  @book.title = api_hash["title"]
  @book.author_name = api_hash["authors"]
  @book.year = api_hash["publishedDate"]
  @book.description = api_hash["description"]

  cover_file = find_image
  @book.photo.attach(io: cover_file, filename: 'cover.jpg', content_type: 'image/jpg')
end

puts 'Creating books...'

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
p "finished isbn_array1"

sleep(10)

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
p "finished isbn_array2"

sleep(10)

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
p "finished isbn_array3"

sleep(10)

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
p "finished isbn_array4"

sleep(10)

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
p "finished isbn_array5"

sleep(10)

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
p "finished isbn_array6"

sleep(5)

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

p "finished isbn_array7"

sleep(10)

index8 = 0

isbn_array8 = [{genre: 'True Crime', isbn: '9781631494512'}, {genre: 'True Crime', isbn: '1786495988'}, {genre: 'Historical fiction', isbn: '1841883735'}, {genre: 'True Crime', isbn: '0385478003'}, {genre: 'True Crime', isbn: '1250001781'}]
5.times do
  p index8
  @book = Book.new(genre: "#{isbn_array8[index8][:genre]}", user_id: user8.id, isbn: "#{isbn_array8[index8][:isbn]}")
  scrape(isbn_array8[index8][:isbn])
  @book.user_id = user8.id
  @book.save
  index8 += 1
end

p "finished isbn_array8"

sleep(10)

index9 = 0

isbn_array9 = [{genre: 'Historical fiction', isbn: '0241364906'}, {genre: 'Non-fiction', isbn: '1784741728'}, {genre: 'Classic', isbn: '9781853260209'}, {genre: 'Non-fiction', isbn: '9781784705039'}, {genre: 'Fantasy', isbn: '9781408855652'}]
5.times do
  p index9
  @book = Book.new(genre: "#{isbn_array9[index9][:genre]}", user_id: user9.id, isbn: "#{isbn_array9[index9][:isbn]}")
  scrape(isbn_array9[index9][:isbn])
  @book.user_id = user9.id
  @book.save
  index9 += 1
end

p "finished isbn_array9"

sleep(10)

index10 = 0

isbn_array10 = [{genre: 'Fantasy', isbn: '1408855682'}, {genre: 'Fantasy', isbn: '1408855674'}, {genre: 'Classic', isbn: '9780099549482'}, {genre: 'Classic', isbn: '9781784752460'}, {genre: 'Drama', isbn: '9780747585893'}]
5.times do
  p index10
  @book = Book.new(genre: "#{isbn_array10[index10][:genre]}", user_id: user10.id, isbn: "#{isbn_array10[index10][:isbn]}")
  scrape(isbn_array10[index10][:isbn])
  @book.user_id = user10.id
  @book.save
  index10 += 1
end
p "finished isbn_array10"

sleep(5)

index11 = 0

isbn_array11 = [{genre: 'Non-fiction', isbn: '0141189576'}, {genre: 'Thriller', isbn: '9780857054036'}, {genre: 'Non-fiction', isbn: '0984699465'}, {genre: 'Non-fiction', isbn: '9780140276053'}, {genre: 'Non-fiction', isbn: '1982137274'}]
5.times do
  p index11
  @book = Book.new(genre: "#{isbn_array11[index11][:genre]}", user_id: user11.id, isbn: "#{isbn_array11[index11][:isbn]}")
  scrape(isbn_array11[index11][:isbn])
  @book.user_id = user11.id
  @book.save
  index11 += 1
end

p "finished isbn_array11"

sleep(10)

index12 = 0

isbn_array12 = [{genre: 'Science fiction', isbn: '9780008117498'}, {genre: 'Historical fiction', isbn: '1447250931'}, {genre: 'Thriller', isbn: '1529002435'}, {genre: 'Fantasy', isbn: '0330519549'}, {genre: 'Historical fiction', isbn: '0099558785'}]
5.times do
  p index12
  @book = Book.new(genre: "#{isbn_array12[index12][:genre]}", user_id: user12.id, isbn: "#{isbn_array12[index12][:isbn]}")
  scrape(isbn_array12[index12][:isbn])
  @book.user_id = user12.id
  @book.save
  index12 += 1
end
p "finished isbn_array12"

sleep(10)

index13 = 0

isbn_array13 = [{genre: 'Science fiction', isbn: '9780008117498'}, {genre: 'Fantasy', isbn: '071815780X'}, {genre: 'Drama', isbn: '9781447294832'}, {genre: 'Non-fiction', isbn: '0141189576'}, {genre: 'Historical fiction', isbn: '1408871777'}]
5.times do
  p index13
  @book = Book.new(genre: "#{isbn_array13[index13][:genre]}", user_id: user13.id, isbn: "#{isbn_array13[index13][:isbn]}")
  scrape(isbn_array13[index13][:isbn])
  @book.user_id = user13.id
  @book.save
  index13 += 1
end
p "finished isbn_array13"

sleep(10)

index14 = 0

isbn_array14 = [{genre: 'Thriller', isbn: '1503280780'}, {genre: 'Thriller', isbn: '1094710962'}, {genre: 'Romance', isbn: '9781447294832'}, {genre: 'Drama', isbn: '9781602707023'}, {genre: 'Drama', isbn: '014132970X'}]
5.times do
  p index14
  @book = Book.new(genre: "#{isbn_array14[index14][:genre]}", user_id: user14.id, isbn: "#{isbn_array14[index14][:isbn]}")
  scrape(isbn_array14[index14][:isbn])
  @book.user_id = user14.id
  @book.save
  index14 += 1
end
p "finished isbn_array14"

puts 'Books done...'

puts 'Creating book clubs...'

Bookclub.create(name: 'Gangster Grandmas Book Club',
  genre: 'True Crime',
  location: 'SL0 9AF',
  capacity: 10,
  description: 'For grandmas or anybody else that loves true crime.',
  user_id: User.first.id)

Bookclub.create(name: 'It’s a Hardback Life',
  genre: 'Fantasy',
  location: 'SS8 7EH',
  capacity: 18,
  description: 'Take a break from your boring life with a fantasy novel or ten.',
  user_id: User.first.id)

Bookclub.create(name: 'Agree To Diss A Brie',
  genre: 'Any',
  location: 'E1 7HS',
  capacity: 15,
  description: 'A classic book club for cheese lovers.',
  user_id: User.first.id)

Bookclub.create(name: 'A Gouda Book',
  genre: 'Any',
  location: 'SS8 7EH',
  capacity: 22,
  description: 'We love a pun and we love cheese. Come join the pun!',
  user_id: User.first.id)

Bookclub.create(name: 'A Novel Idea',
  genre: 'Any',
  location: 'SL3 7QP',
  capacity: 20,
  description: 'All books welcome. A community book club for all bookworms',
  user_id: User.first.id)

Bookclub.create(name: 'Famished for fiction',
  genre: 'Any',
  location: 'RG1 1HN',
  capacity: 15,
  description: 'A fiction only book club. We like to snack as we read - please bring food to share.',
  user_id: User.first.id)

Bookclub.create(name: 'Better Read than Dead',
  genre: 'Any',
  location: 'RG12 0TG',
  capacity: 18,
  description: 'Poetry is our jam. Both classic and modern',
  user_id: User.first.id)

Bookclub.create(name: 'Great Expectations',
  genre: 'Any',
  location: 'OX1 1DB',
  capacity: 18,
  description: "If you're into classic novels and love Dickens, join us!",
  user_id: User.first.id)

Bookclub.create(name: 'Hooked on Books',
  genre: 'Any',
  location: 'CV34 4BE',
  capacity: 21,
  description: 'Mostly Science fiction with a sprinkling of fantasy',
  user_id: User.first.id)

Bookclub.create(name: 'Cover to Cover',
  genre: 'Any',
  location: 'CV31 1BW',
  capacity: 35,
  description: 'Drama is our middle name',
  user_id: User.first.id)

Bookclub.create(name: "What's in a name?",
  genre: 'Any',
  location: 'E1 6NU',
  capacity: 30,
  description: 'We cannot get enough of classic plays',
  user_id: User.first.id)

Bookclub.create(name: "Tattered Page Book Club",
  genre: 'Feminist',
  location: 'E1 6BW',
  capacity: 30,
  description: 'We are all fairly new to reading regularly and support new members to read more',
  user_id: User.first.id)

Bookclub.create(name: "Safari Book Club",
  genre: 'Any',
  location: 'E1 6NU',
  capacity: 10,
  description: 'Want inspo for your next trip? Come read travel journals with us',
  user_id: User.first.id)

Bookclub.create(name: "Just Read",
  genre: 'Feminist',
  location: 'E1 6NU',
  capacity: 25,
  description: 'Modern feminist literature. All welcome.',
  user_id: User.first.id)

Bookclub.create(name: "The Mighty Pen",
  genre: 'Fantasy',
  location: 'E1 6NU',
  capacity: 15,
  description: 'Think Harry Potter meets Lord of the Rings',
  user_id: User.first.id)

Bookclub.create(name: "Page Turner",
  genre: 'Any',
  location: 'E1 6NU',
  capacity: 22,
  description: 'A no pressure book club. We love to read and are open to members young and wise',
  user_id: User.first.id)

Bookclub.create(name: "Fantastic Books and Where to Find Them",
  genre: 'Any',
  location: 'E1 6NU',
  capacity: 15,
  description: 'Delve into the world of magical creatures and wizardry',
  user_id: User.first.id)

Bookclub.create(name: "S.P.E.W.",
  genre: 'Feminist',
  location: 'E1 6NU',
  capacity: 25,
  description: 'Society for the Promotion of Empowered Women.',
  user_id: User.first.id)


Bookclub.create(name: "Prose for Pros",
  genre: 'Any',
  location: 'E1 6NU',
  capacity: 19,
  description: 'Everything fiction. All books, all people, all ideas welcome',
  user_id: User.first.id)


Bookclub.create(name: "Cranial Crunch",
  genre: 'Non-fiction',
  location: 'E1 6NU',
  capacity: 19,
  description: 'Strictly non-fiction.',
  user_id: User.first.id)


puts 'Finished seeding.'

