puts 'Cleaning database...'
GivenLike.destroy_all
Job.destroy_all
User.destroy_all


puts 'Creating users...'
sogadgets = User.new(ig_user_id: "sogadgets@gmail.com")
sogadgets.save!

petpawer = User.new(ig_user_id: "petpawer@gmail.com")
petpawer.save!

football =User.new(ig_user_id: "football@gmail.com")
football.save!


puts 'Creating jobs...'
techno = Job.new(
  image_url: "https://www.instagram.com/p/BZdA_LiHicH",
  caption: "Pilot will translate instanly for you ! Travel like a local",
  hashtag: "#gadgets",
  user_id: clara.id,
  user_ig_media_id: "1611448583379101447",
  likes_received: "76",
  launched_at: "2019-11-18",
  stopped_at: "2019-11-18"
)
techno.save!

pets1 = Job.new(
  image_url: "https://www.instagram.com/p/BTo93XXjz60",
  caption: "Big days ahead of us ! Always look forward and reach your goals! ",
  hashtag: "#cutedogs",
  user_id: petpawer.id,
  user_ig_media_id: "1506726160855154356",
  likes_received: "176",
  launched_at: "2019-11-18",
  stopped_at: "2019-11-18"
)
pets1.save!


pets2 = Job.new(
  image_url: "https://www.instagram.com/p/BTj8svAjgLr",
  caption: "A week ahead of us ! A dog to show us the right attitude :) your gonna rock the week ! :)",
  hashtag: "#dog",
  user_id: petpawer.id,
  user_ig_media_id: "1505313657394692843",
  likes_received: "135",
  launched_at: "2019-11-18",
  stopped_at: "2019-11-18"
)
pets2.save!

pets3 = Job.new(
  image_url: "https://www.instagram.com/p/BTe3pzsj-J3",
  caption: "Friday cuteness!! Wish you all the best!! :)",
  hashtag: "#puppies",
  user_id: petpawer.id,
  user_ig_media_id: "1503884091153441399",
  likes_received: "128",
  launched_at: "2019-11-18",
  stopped_at: "2019-11-18"
)
pets3.save!






