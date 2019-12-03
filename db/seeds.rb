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

