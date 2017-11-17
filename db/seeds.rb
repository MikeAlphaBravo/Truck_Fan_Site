Truck.destroy_all

truck_list = [
  [ "https://i.ytimg.com/vi/qOtrxsoXMj4/maxresdefault.jpg", "jeep", "rubicon", "2015", "Tom Rogers" ],
  [ "https://scontent-sea1-1.cdninstagram.com/t51.2885-15/e35/13744105_564876877018349_354395768_n.jpg", "toyota", "4runner", "2016", "Susan Wendlehoff" ],
  [ "http://image.fourwheeler.com/f/187870487+w660+h440+re0+cr1+ar0/001a-international-scout-lead-photo.jpg", "international", "scout", "1983", "DAWEsome" ],
  [ "https://gearheads.org/wp-content/uploads/2016/10/off-road-bronco.jpg", "ford", "bronco", "1978", "Finigan Smotherbottom" ],
  [ "http://truckszilla.com/wp-content/uploads/2017-Land-Rover-Defender-front-side.jpg", "land rover", "defender", "2017", "Riley Tomfoolery" ],
  [ "http://cdn.cnn.com/cnnnext/dam/assets/160128143458-land-rover-defender-11-super-169.jpg", "land rover", "defender", "1996", "William Ford" ],
  [ "http://assets.nydailynews.com/polopoly_fs/1.2621972.1462219487!/img/httpImage/image.JPG_gen/derivatives/article_1200/2017-ford-f-150-raptor.JPG", "ford", "f-150 raptor", "2018", "Susan Whitley" ]
]

truck_list.each do |link, make, model, year, author|
  Truck.create( link: link, make: make, model: model, year: year, author: author )
end

50.times do |index|
  Truck.create( link: "https://i.pinimg.com/736x/6f/04/94/6f0494b9cd5809c9600e17a16fc7719b--chevy-x-lifted-chevy.jpg",
                make: (Faker::Vehicle.manufacture).downcase!,
                model: "Cool Truck".downcase!,
                year: "1978",
                author: "MB" )
end

p "You have now have #{Truck.count} trucks in your db"
