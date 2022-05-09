# USE THIS ISBN FOR DEMO: 9780857054036 - thriller

# genre: 'Thriller', isbn: '0008234183'
require "open-uri"

puts 'Deleting'
Bookclub.destroy_all
Message.destroy_all
Swap.destroy_all
Book.destroy_all
User.destroy_all

puts 'Repopulating database...'

puts 'Creating users...'
sleep(1)

user1 = User.create(
  first_name: "Nadine",
  last_name: "O'Hara",
  location: "E9 5EN",
  email: "nohara@gmail.com",
  password: '123123',
  description: 'I read all kinds of books both fiction and non-fiction. I am a fast reader so tend to have a few on the go so I never get bored!',
  )
  file = open('https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
  user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 1"
sleep(1)

user2 = User.create(
  first_name: "Tanya",
  last_name: "Silverman",
  location: "E1 6QR",
  email: "tanya_s@gmail.com",
  password: '123123',
  description: 'Science fiction and dramatic novels are my bread and butter. There is nothing better than lighting some candles and reading in the bath',
  )
file = open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 2"
sleep(1)

user3 = User.create(
  first_name: "Emily",
  last_name: "Wong",
  location: "TW1 1AG",
  email: "emily_wong@gmail.com",
  password: '123123',
  description: 'I am a very calm and peaceful person which is why I love to read historical fiction in my free time. I am a yoga teacher and always read with a nice cup of tea.',
  )
file = open('https://images.unsplash.com/photo-1541823709867-1b206113eafd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
user3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 3"
sleep(1)

user4 = User.create(
  first_name: "Mo",
  last_name: "Hussain",
  location: "E10 7QZ",
  email: "mo_1992@gmail.com",
  password: '123123',
  description: 'My job is very hectic so reading is my escape into another world. I read mainly romance novels and non-fiction.',
  )
file = open('https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg')
user4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 4"
sleep(1)

user5 = User.create(
  first_name: "Sarah",
  last_name: "Moxon",
  location: "SE13 6RD",
  email: "smoxon@gmail.com",
  password: '123123',
  description: 'I am a big book lover and cannot wait to get swapping. I am happy to travel to swap books. I love a good thriller and am keen to join a bookclub',
  )
file = File.open('app/assets/images/sarah-avatar.png')
user5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/png')

puts "finished user 5"
sleep(1)

user6 = User.create(
  first_name: "Gareth",
  last_name: "Buckland",
  location: "SE7 7HY",
  email: "gareth_b@gmail.com",
  password: '123123',
  description: 'Ever since my wife lent me one of her romance novels I am hooked. What can I say, I am a sucker for romance',
  )
file = open('app/assets/images/gareth-avatar.jpg')
user6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 6"
sleep(1)

user7 = User.create(
  first_name: "Megan",
  last_name: "Lovett",
  location: "E14 2BE",
  email: "meggie_love@hotmail.com",
  password: '123123',
  description: "Any Dickens or Bronte send them my way! There is nothing better than a classic novel. I can't wait to read more",
  )
file = open('https://images1.the-dots.com/763358/screen-shot-2017-03-17-at-15-51-22.png?p=socialSquare')
user7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 7"
sleep(1)

user8 = User.create(
  first_name: "Vincent",
  last_name: "Onuegbu",
  location: "N13 5UD",
  email: "vincent@hotmail.com",
  password: '123123',
  description: "I have three kids so when I have time alone I like to hideaway with a good true crime novel and try to work out 'who dunnit'.",
  )
file = open('https://c.stocksy.com/a/XJC000/z9/47339.jpg')
user8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 8"
sleep(1)

user9 = User.create(
  first_name: "Tahira",
  last_name: "Syed",
  location: "N1 6SH",
  email: "tsyed@hotmail.com",
  password: '123123',
  description: "I discovered recently that I am most engaged in a book when it's based on something that really happened. Historical fiction is far more interesting to me than any drama.",
  )

file = open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
user9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 9"
sleep(1)

user10 = User.create(
  first_name: "Joe",
  last_name: "Thomas",
  location: "W3 7RU",
  email: "joethomas@hotmail.com",
  password: '123123',
  description: 'I have read the first Harry Potter with my granddaughter at least three times. I am also interested in non-fiction.  ',
  )
file = open('https://pbs.twimg.com/profile_images/426035427326189568/BXYWW0uz_400x400.jpeg')
user10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 10"
sleep(1)

user11 = User.create(
  first_name: "Luke",
  last_name: "Monroe",
  location: "E5 0LH",
  email: "lmonroe@hotmail.com",
  password: '123123',
  description: "I don't really enjoy novels so I stick to what I love which is non-fiction. I have lots of recommendations.",
  )
file = open('https://media.istockphoto.com/videos/young-man-smiling-video-id1008268548?s=640x640')
user11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 11"
sleep(1)

user12 = User.create(
  first_name: "Mia",
  last_name: "Nguyen",
  location: "E15 2LB",
  email: "mian@hotmail.com",
  password: '123123',
  description: 'I tend to read books about women who have inspiring stories. I read in coffee shops and go to a bookclub everyweek.',
  )
file = open('https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80')
user12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 12"
sleep(1)

user13 = User.create(
  first_name: "Halima",
  last_name: "Khan",
  location: "SW20 9NS",
  email: "halima12@hotmail.com",
  password: '123123',
  description: 'I love reading insightful literature. Anything that gets me thinking or inspires my love of cooking is right up my street.',
  )
file = open('https://www.cgu.edu/wp-content/uploads/2016/06/Ruqayya_Khan.jpg')
user13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 13"
sleep(1)

user14 = User.create(
  first_name: "Axel",
  last_name: "Lopez",
  location: "W10 6RP",
  email: "axellopez@hotmail.com",
  password: '123123',
  description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
  )
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 14"
sleep(1)

user15 = User.create(
first_name: "Axel",
last_name: "Lopez",
location: "W10 6RP",
email: "Hello@hotmail.com",
password: '123123',
description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
)

file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user15.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 15"
sleep(1)

user16 = User.create(
first_name: "Carl",
last_name: "Lopez",
location: "W10 6RP",
email: "chicken@hotmail.com",
password: '123123',
description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
)
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user16.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finished user 16"
sleep(1)

  user17 = User.create(
first_name: "Alex",
last_name: "Lopez",
location: "W10 6RP",
email: "why@hotmail.com",
password: '123123',
description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
)
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user17.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finshed user 17"
sleep(1)

user18 = User.create(
  first_name: "Tony",
  last_name: "Lopez",
  location: "W10 6RP",
  email: "popcorn@hotmail.com",
  password: '123123',
  description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
  )
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user18.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finshed user 18"
sleep(1)

user19 = User.create(
  first_name: "Ruth",
  last_name: "Lopez",
  location: "W10 6RP",
  email: "car@hotmail.com",
  password: '123123',
  description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
  )
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user19.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finshed user 19"
sleep(1)

user20 = User.create(
  first_name: "Sam",
  last_name: "Lopez",
  location: "W10 6RP",
  email: "Sam@hotmail.com",
  password: '123123',
  description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
)
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user20.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "finshed user 20"
sleep(1)

user21 = User.create(
  first_name: "Charlie",
  last_name: "Smith",
  location: "W10 6RP",
  email: "snake@hotmail.com",
  password: '123123',
  description: 'I am a self-proclaimed history nerd. I love to read fiction set in the past and imagine the great adventures of those times.',
)
file = open('https://i.pinimg.com/originals/cb/3a/17/cb3a175b03e01ebd10a908e65725b3a9.jpg')
user21.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
puts "finshed user 21"

def api_hash
  @book_info["items"].select{ |item| item["volumeInfo"]["language"] == "en" }.first["volumeInfo"]
end

def find_image
  images = api_hash["imageLinks"]
  if images
    image = images["thumbnail"]
    open(image)
  else
    use_open_library("L")
  end
end

def use_open_library(size)
  url = open_library_url(@book.isbn, "L")
  begin
    open(url)
  rescue StandardError
    if size == "L"
      use_open_library("M")
    elsif size == "M"
      use_open_library("S")
    elsif size == "S"
      # Noooope
      # none of this has worked
      open("https://islandpress.org/sites/default/files/400px%20x%20600px-r01BookNotPictured.jpg")
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

# isbn_array2 = [{genre: 'Drama', isbn: '9780349142920'}, {genre: 'Romance', isbn: '0008172145'}, {genre: 'Science fiction', isbn: '1481447939'}, {genre: 'Science fiction', isbn: '9781405927024'}]
# 5.times do
#   p index2
#   @book = Book.new(genre: "#{isbn_array2[index2][:genre]}", user_id: user2.id, isbn: "#{isbn_array2[index2][:isbn]}")
#   scrape(isbn_array2[index2][:isbn])
#   @book.user_id = user2.id
#   @book.save
#   index2 += 1
# end
# p "finished isbn_array2"

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

isbn_array5 = [{genre: 'Thriller', isbn: '0008234183'}, {genre: 'Thriller', isbn: '0008358923'}, {genre: 'Historical fiction', isbn: '1784707244'}, {genre: 'Drama', isbn: '154204118X'}]
4.times do
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

isbn_array7 = [{genre: 'Classic', isbn: '185326041X'}, {genre: 'Classic', isbn: '9780141187761'}, {genre: 'Classic', isbn: '0141182709'}, {genre: 'Classic', isbn: '1840227788'}]
4.times do
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

isbn_array11 = [{genre: 'Thriller', isbn: '9781444720723'}, {genre: 'Non-fiction', isbn: '0141189576'}, {genre: 'Non-fiction', isbn: '0984699465'}, {genre: 'Non-fiction', isbn: '9780140276053'}]
4.times do
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

isbn_array12 = [ {genre: 'Thriller', isbn: '0995693307'}, {genre: 'Historical fiction', isbn: '1447250931'}, {genre: 'Thriller', isbn: '1529002435'}, {genre: 'Fantasy', isbn: '0330519549'}, {genre: 'Historical fiction', isbn: '0099558785'}]
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

isbn_array13 = [{genre: 'Science fiction', isbn: '9780008117498'}, {genre: 'Fantasy', isbn: '071815780X'}, {genre: 'Non-fiction', isbn: '0141189576'}, {genre: 'Historical fiction', isbn: '1408871777'}]
4.times do
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

Bookclub.create(name: 'It’s a Hardback Life',
  genre: 'Fantasy',
  location: 'TW13 6DH',
  capacity: 18,
  description: 'Take a break from your boring life with a fantasy novel or ten.',
  user_id: user1.id,
  image_url: 'https://live.staticflickr.com/1838/43781428232_f93e7a5320_b.jpg'
  )

Bookclub.create(name: 'Agree To Diss A Brie',
  genre: 'Classic',
  location: 'E1 7HS',
  capacity: 15,
  description: 'A classic book club for cheese lovers.',
  user_id: user2.id,
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/12/93/41/f5/gulshan-the-book-shop.jpg'
  )

Bookclub.create(name: 'A Novel Idea',
  genre: 'Thriller',
  location: 'SL3 7QP',
  capacity: 20,
  description: 'All books welcome. A community book club for all bookworms.',
  user_id: user3.id,
  image_url: 'https://therabbiisin.files.wordpress.com/2015/08/book-774837_640.jpg?w=640'
  )

Bookclub.create(name: 'Gangster Grandmas',
  genre: 'True Crime',
  location: 'SL0 9AF',
  capacity: 10,
  description: 'For grandmas or anybody else that loves true crime.',
  user_id: user4.id,
  image_url: 'https://static.timesofisrael.com/jewishwdev/uploads/2018/06/7483010074_8d159cecc2_k.jpg'
  )

Bookclub.create(name: 'A Gouda Book',
  genre: 'Romance',
  location: 'E9 5EN',
  capacity: 22,
  description: 'We love a pun and we love cheese. Come join the pun!',
  user_id: user5.id,
  image_url: 'https://www.litro.co.uk/wp-content/uploads/2011/10/bookshop-cum-cafe.jpg'
  )

Bookclub.create(name: 'Famished for fiction',
  genre: 'Historical fiction',
  location: 'W3 6RT',
  capacity: 15,
  description: 'A fiction only book club. We like to snack as we read - please bring food to share.',
  user_id: user6.id,
  image_url: 'https://specials-images.forbesimg.com/imageserve/499373254/960x0.jpg?fit=scale'
  )

Bookclub.create(name: 'Better Read than Dead',
  genre: 'Classic',
  location: 'N21 3RS',
  capacity: 18,
  description: 'Classic novels are bread and butter.',
  user_id: user7.id,
  image_url: 'https://www.kilkennypeople.ie/resizer/-1/-1/true/1567072816821.jpg--.jpg?1567072816000'
  )

Bookclub.create(name: 'Great Expectations',
  genre: 'Thriller',
  location: 'SW14 8QE',
  capacity: 18,
  description: "If you love thrillers, join us!",
  user_id: user8.id,
  image_url: 'https://shoppeblack.us/wp-content/uploads/2018/04/tealees-int-01.jpg'
  )

Bookclub.create(name: 'Hooked on Books',
  genre: 'Fantasy',
  location: 'WD25 7JN',
  capacity: 21,
  description: 'Mostly Science fiction with a sprinkling of fantasy.',
  user_id: user9.id,
  image_url: 'https://bigseventravel.com/wp-content/uploads/2020/03/Books-and-Beans.jpg'
  )

Bookclub.create(name: 'Cover to Cover',
  genre: 'Drama',
  location: 'SE22 0RX',
  capacity: 35,
  description: 'Drama is our middle name.',
  user_id: user10.id,
  image_url: 'https://images.unsplash.com/photo-1528402772935-4134bc18b474?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'
  )

Bookclub.create(name: "What's in a name?",
  genre: 'Political fiction',
  location: 'E1 6NU',
  capacity: 30,
  description: 'We cannot get enough of political fiction.',
  user_id: user11.id,
  image_url: 'https://images.squarespace-cdn.com/content/v1/58e7ac39e3df286cf6db3b43/1498798016804-4QKGLJ816G0X6R1KU0NC/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/A82A2262.jpg'
  )

Bookclub.create(name: "Tattered Page",
  genre: 'Feminist',
  location: 'EC2A 4SH',
  capacity: 30,
  description: 'We are all fairly new to reading regularly and support new members to read more.',
  user_id: user12.id,
  image_url: 'https://bookriot.com/wp-content/uploads/2017/02/BookClub-HEADER-1280x720.jpg'
  )

Bookclub.create(name: "Safari Book Club",
  genre: 'Travel',
  location: 'E1 6NU',
  capacity: 10,
  description: 'Want inspo for your next trip? Come read travel journals with us.',
  user_id: user13.id,
  image_url: 'https://static01.nyt.com/images/2019/04/20/books/00POWERNICHEBOOKCLUB3/merlin_153693897_740181d2-95c3-4c1b-8c8f-286101f0c279-superJumbo.jpg'
  )

Bookclub.create(name: "Just Read",
  genre: 'Non-fiction',
  location: 'W12 7GF',
  capacity: 25,
  description: 'All things philosophical. All welcome.',
  user_id: user14.id,
  image_url: 'https://wpcdn.us-midwest-1.vip.tn-cloud.net/www.rimonthly.com/content/uploads/2019/01/JA9EC50CUR-1024x683.jpg'
  )

Bookclub.create(name: "The Mighty Pen",
  genre: 'Fantasy',
  location: 'NW3 2PT',
  capacity: 15,
  description: 'Think Harry Potter meets Lord of the Rings.',
  user_id: user15.id,
  image_url: 'https://compote.slate.com/images/3c13ee18-6c75-440d-a6e5-4b2ab9ff893f.jpg'
  )

Bookclub.create(name: "Page Turner",
  genre: 'Political fiction',
  location: 'E5 0LH',
  capacity: 22,
  description: 'A no pressure book club. We love to read and are open to members young and wise.',
  user_id: user16.id,
  image_url: 'https://video-images.vice.com/articles/5d44c9622980b0000824a7e3/lede/1564789576071-GettyImages-949118068.jpeg?crop=1xw%3A0.8419xh%3B0xw%2C0.1581xh&resize=2000%3A*'
  )

Bookclub.create(name: "Fantastic Books...",
  genre: 'Fantasy',
  location: 'SW15 2DD',
  capacity: 15,
  description: '...and Where to Find Them. Delve into the world of magical creatures and wizardry.',
  user_id: user17.id,
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQUAPWR11WtvJ-XpFNKaf2fhgAMOJGo1SFGr4COPW1f1XeKug4q'
  )

Bookclub.create(name: "S.P.E.W.",
  genre: 'Feminist',
  location: 'W2 1LA',
  capacity: 25,
  description: 'Society for the Promotion of Empowered Women.',
  user_id: user18.id,
  image_url: 'https://www.rd.com/wp-content/uploads/2016/12/04_how_start_book_club_location_monkeybusinessimages.jpg'
  )


Bookclub.create(name: "Prose for Pros",
  genre: 'Drama',
  location: 'SE11 4NT',
  capacity: 19,
  description: 'Everything fiction. All books, all people, all ideas welcome.',
  user_id: user19.id,
  image_url: 'https://fastertomaster.com/wp-content/uploads/2019/03/best-books-on-social-people-communications-skills.jpg'
  )


Bookclub.create(name: "Cranial Crunch",
  genre: 'Non-fiction',
  location: 'N1 4BZ',
  capacity: 19,
  description: 'Strictly non-fiction.',
  user_id: user20.id,
  image_url: 'https://reformedforum.org/wp-content/blogs.dir/1/files/2016/06/best-books-book-youll-ever-read.jpg'
  )


puts 'Finished seeding.'
