puts 'Cleaning database...'
GivenLike.destroy_all
Job.destroy_all
User.destroy_all


puts 'Creating users...'
clara = User.new(ig_user_id: "clara@lr.com")
clara.save!



puts 'Creating jobs...'
techno = Job.new(
  image_url: "www.instagram/sogadgets/3168419555",
  caption: "I love gadgets",
  hashtag: "#technology",
  user_id: clara.id,
  user_ig_media_id: "1234567894561231236_33215652",
  likes_received: "5",
  launched_at: "2019-11-18",
  stopped_at: "2019-11-18"
)
techno.save!
