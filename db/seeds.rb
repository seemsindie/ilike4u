puts 'Cleaning database...'
GivenLike.destroy_all
Job.destroy_all
User.destroy_all

puts 'Creating users...'
petpawer = User.new(email: "petpawer@gmail.com")
petpawer.password = "123456"
petpawer.save!

puts 'Creating jobs...'
techno = Job.new(
  image_url: "https://www.instagram.com/p/BTo93XXjz60/",
  caption: "Big days ahead of us !",
  hashtag: "dogs",
  user_id: petpawer.id,
  likes_received: 161,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno.save!

techno1 = Job.new(
  image_url: "https://www.instagram.com/p/BTj8svAjgLr/",
  caption: "A week ahead of us ! A dog to show us the right attitude :) your gonna rock the week ! :)",
  hashtag: "dogs",
  user_id: petpawer.id,
  likes_received: 139,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno1.save!

techno2 = Job.new(
  image_url: "https://www.instagram.com/p/BTe3pzsj-J3/",
  caption: "Friday cuteness!! Wish you all the best!! :)",
  hashtag: "dogsofinstagram",
  user_id: petpawer.id,
  likes_received: 131,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno2.save!

techno3 = Job.new(
  image_url: "https://www.instagram.com/p/BTcV7D2D5SU/",
  caption: "It's Friiiiiday!!! Let's do something :D!! :D",
  hashtag: "doggy",
  user_id: petpawer.id,
  likes_received: 145,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno3.save!

techno4 = Job.new(
  image_url: "https://www.instagram.com/p/BTZt0YnDul_/",
  caption: "Thursday: an inspiring day ! Juste the whole weekend ahead of us",
  hashtag: "dogdog",
  user_id: petpawer.id,
  likes_received: 161,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno4.save!

techno5 = Job.new(
  image_url: "https://www.instagram.com/p/BTUVtlZjY3r/",
  caption: "I saw this pic and I just melted ",
  hashtag: "kitten",
  user_id: petpawer.id,
  likes_received: 133,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno5.save!

techno6 = Job.new(
  image_url: "https://www.instagram.com/p/BTR66HKDhHo/",
  caption: "WAtcha doiiing ?",
  hashtag: "frenchies",
  user_id: petpawer.id,
  likes_received: 125,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno6.save!

techno7 = Job.new(
  image_url: "https://www.instagram.com/p/BTPChRMDuqJ/",
  caption: "he is my new president",
  hashtag: "doggy",
  user_id: petpawer.id,
  likes_received: 110,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno7.save!

techno8 = Job.new(
  image_url: "https://www.instagram.com/p/BTMxaosjOtC/",
  caption: "we are siamese if you please",
  hashtag: "cats",
  user_id: petpawer.id,
  likes_received: 144,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno8.save!

techno9 = Job.new(
  image_url: "https://www.instagram.com/p/BTKPlePj-Ck/",
  caption: "Meeting someone for the first time ",
  hashtag: "pets",
  user_id: petpawer.id,
  likes_received: 123,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno9.save!


puts 'Creating Given Likes...'
first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno.id
)
ten_like.save!


first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!


first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!

six_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
six_like.save!

seven_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
seven_like.save!

eight_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
eight_like.save!

nine_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
nine_like.save!

ten_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
ten_like.save!

first_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
first_like.save!

second_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno1.id
)
second_like.save!

third_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno1.id
)
third_like.save!

fourth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
fourth_like.save!

fifth_like = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
fifth_like.save!
