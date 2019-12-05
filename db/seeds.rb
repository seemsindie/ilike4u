require 'date'

puts 'Cleaning database...'
GivenLike.destroy_all
Job.destroy_all
User.destroy_all

puts 'Creating users...'
petpawer = User.new(email: "petpawer@gmail.com")
petpawer.password = "123456"
petpawer.save!

puts 'Creating jobs...'

techno9 = Job.new(
  image_url: "https://www.instagram.com/p/BTHk91-jSoE/",
  caption: "Meeting someone for the first time ",
  hashtag: "pets",
  user_id: petpawer.id,
  likes_received: 123,
  launched_at: DateTime.new(2019,11,01,9,25,30),
  stopped_at: DateTime.new(2019,11,01,9,27,30)
)
techno9.save!

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

techno10 = Job.new(
  image_url: "https://www.instagram.com/p/BSwCK3njJcf/",
  caption: "miaou too cute to be true",
  hashtag: "kittens",
  user_id: petpawer.id,
  likes_received: 2,
  launched_at: Time.now,
  stopped_at: Time.now + 125
)
techno10.save!


puts 'Creating Given Likes...'

a1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno.id
)
a1.save!

a2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno.id
)
a2.save!

a3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno.id
)
a3.save!

a4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno.id
)
a4.save!

a5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno.id
)
a5.save!

a6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno.id
)
a6.save!

a7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno.id
)
a7.save!

a8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno.id
)
a8.save!

a9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno.id
)
a9.save!

a10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno.id
)
a10.save!

a11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno.id
)
a11.save!

a12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno.id
)

a12.save!

a13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno.id
)
a13.save!

a14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno.id
)
a14.save!

a15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno.id
)
a15.save!

a16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno.id
)
a16.save!

a17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno.id
)
a17.save!

a18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno.id
)
a18.save!

a19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno.id
)
a19.save!

a20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno.id
)
a20.save!

a21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno.id
)
a21.save!

a22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno.id
)
a22.save!

a23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno.id
)
a23.save!

a24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno.id
)
a24.save!

a25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno.id
)
a25.save!

a26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno.id
)
a26.save!

a27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno.id
)
a27.save!

a28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno.id
)
a28.save!

a29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno.id
)
a29.save!

a30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno.id
)
a30.save!

a31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno.id
)
a31.save!

a32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno.id
)
a32.save!

a33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno.id
)
a33.save!

a34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno.id
)
a34.save!

a35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno.id
)
a35.save!

a36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno.id
)
a36.save!

a37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno.id
)
a37.save!

a38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno.id
)
a38.save!

a39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno.id
)
a39.save!

a40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno.id
)
a40.save!

a41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno.id
)
a41.save!

a42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno.id
)
a42.save!

a43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno.id
)
a43.save!

a45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno.id
)
a45.save!

a46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno.id
)
a46.save!

a47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno.id
)
a47.save!

a48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno.id
)
a48.save!


a49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno.id
)
a49.save!

a50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno.id
)
a50.save!

a51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno.id
)
a51.save!

a52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno.id
)
a52.save!

a53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno.id
)
a53.save!

a54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno.id
)
a54.save!











b40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno1.id
)
b40.save!

b41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno1.id
)
b41.save!

b42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno1.id
)
b42.save!

b43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno1.id
)
b43.save!

b45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno1.id
)
b45.save!

b46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno1.id
)
b46.save!

b47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno1.id
)
b47.save!

b48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno1.id
)
b48.save!

b49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno1.id
)
b49.save!

b50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno1.id
)
b50.save!

b51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
b51.save!

b52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno1.id
)
b52.save!

b53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno1.id
)
b53.save!

b54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno1.id
)
b54.save!

b55 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno1.id
)
b55.save!

b18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGYJSgaoU/",
  job_id: techno1.id
)
b18.save!

b19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ovhuIpajf/",
  job_id: techno1.id
)
b19.save!

b20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o6PGXBE-U/",
  job_id: techno1.id
)
b20.save!

b21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ojcaPnNEE/",
  job_id: techno1.id
)
b21.save!

b22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pEbwtluIW/",
  job_id: techno1.id
)
b22.save!

b23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5orv74J2LV/",
  job_id: techno1.id
)
b23.save!

b24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ooSNrBu3f/",
  job_id: techno1.id
)
b24.save!

b25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o4M_SBPr4/",
  job_id: techno1.id
)
b25.save!

b26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGLwrhSMV/",
  job_id: techno1.id
)
b26.save!

b27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGM2mIk5Z/",
  job_id: techno1.id
)
b27.save!

b28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGNpAguLL/",
  job_id: techno1.id
)
b28.save!

b29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGOFUn0vZ/",
  job_id: techno1.id
)
b29.save!

b30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGOTgKL9l/",
  job_id: techno1.id
)
b30.save!

b31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGOXinGE4/",
  job_id: techno1.id
)
b31.save!

b32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pGOkLh-8v/",
  job_id: techno1.id
)
b32.save!

b4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno1.id
)
b4.save!

b5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno1.id
)
b5.save!

b6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno1.id
)
b6.save!

b7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno1.id
)
b7.save!

b8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno1.id
)
b8.save!

b9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno1.id
)
b9.save!

b10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno1.id
)
b10.save!

b11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno1.id
)
b11.save!

b12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno1.id
)
b12.save!

b13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno1.id
)
b13.save!

b14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno1.id
)
b14.save!

b15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno1.id
)
b15.save!

b16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno1.id
)
b16.save!

b17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno1.id
)
b17.save!


c1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIuLVnOKT/",
  job_id: techno2.id
)
c1.save!

c2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3fsow_V/",
  job_id: techno2.id
)
c2.save!

c3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3l1HSbb/",
  job_id: techno2.id
)
c3.save!

c4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3q2AukE/",
  job_id: techno2.id
)
c4.save!

c5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIzEZpOiK/",
  job_id: techno2.id
)
c5.save!

c6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4Pql2Kl/",
  job_id: techno2.id
)
c6.save!

c7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4Ozp3pg/",
  job_id: techno2.id
)
c7.save!

c8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4jegp1q/",
  job_id: techno2.id
)
c8.save!

c9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4ngBn4V/",
  job_id: techno2.id
)
c9.save!

c10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno2.id
)
c10.save!

c11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4vTIKI9/",
  job_id: techno2.id
)
c11.save!

c12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI5IpK1zM/",
  job_id: techno2.id
)
c12.save!

c13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI5ROgqR_/",
  job_id: techno2.id
)
c13.save!

c14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIr26DhZv/",
  job_id: techno2.id
)
c14.save!

c15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI5plgH7w/",
  job_id: techno2.id
)
c15.save!

c16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI50aF1NU/",
  job_id: techno2.id
)
c16.save!

c17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6BAA-Fl/",
  job_id: techno2.id
)
c17.save!

c18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6DdHsGs/",
  job_id: techno2.id
)
c18.save!

c19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno2.id
)
c19.save!

c20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6DNAqO-/",
  job_id: techno2.id
)
c20.save!

c21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6KCA-Yi/",
  job_id: techno2.id
)
c21.save!

c22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6gnFczg/",
  job_id: techno2.id
)
c22.save!

c23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6kon80q/",
  job_id: techno2.id
)
c23.save!

c24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6eTg7Da/",
  job_id: techno2.id
)
c24.save!

c25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI6gonM-O/",
  job_id: techno2.id
)
c25.save!

c26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI5KXi0XK/",
  job_id: techno2.id
)
c26.save!

c27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI7FFIPr-/",
  job_id: techno2.id
)
c27.save!

c28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI71aoI-s/",
  job_id: techno2.id
)
c28.save!

c29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI8hDhxML/",
  job_id: techno2.id
)
c29.save!

c30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI8pXFinr/",
  job_id: techno2.id
)
c30.save!

c31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI8-thP_B/",
  job_id: techno2.id
)
c31.save!

c32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI87xJ6rx/",
  job_id: techno2.id
)
c32.save!

c33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIXkFBj9u/",
  job_id: techno2.id
)
c33.save!

c34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI9MdJjOs/",
  job_id: techno2.id
)
c34.save!

c35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIvCGpdJ8/",
  job_id: techno2.id
)
c35.save!

c36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIzQTFKsT/",
  job_id: techno2.id
)
c36.save!

c37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI9YaCw5L/",
  job_id: techno2.id
)
c37.save!

c38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI7c1j8-I/",
  job_id: techno2.id
)
c38.save!

c39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI92DFenJ/",
  job_id: techno2.id
)
c39.save!

c40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI-EnB_7-/",
  job_id: techno2.id
)
c40.save!

c41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI-f2l0tM/",
  job_id: techno2.id
)
c41.save!

c42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI_CEAwnX/",
  job_id: techno2.id
)
c42.save!

c43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ovhuIpajf/",
  job_id: techno2.id
)
c43.save!

c45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o6PGXBE-U/",
  job_id: techno2.id
)
c45.save!

c46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ojcaPnNEE/",
  job_id: techno2.id
)
c46.save!

c47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pJ0qpKbR4/",
  job_id: techno2.id
)
c47.save!

c48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pEbwtluIW/",
  job_id: techno2.id
)
c48.save!

c49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5orv74J2LV/",
  job_id: techno2.id
)
c49.save!

c50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ooSNrBu3f/",
  job_id: techno2.id
)
c50.save!

c51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o4M_SBPr4/",
  job_id: techno2.id
)
c51.save!

c52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5ogd7bhjJ2/",
  job_id: techno2.id
)
c52.save!

c53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5oMK_CFWZ0/",
  job_id: techno2.id
)
c53.save!

c54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pJ1XVlapY/",
  job_id: techno2.id
)
c54.save!

c55 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIuLVnOKT/",
  job_id: techno2.id
)
c55.save!

c56 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3fsow_V/",
  job_id: techno2.id
)
c56.save!

c57 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3l1HSbb/",
  job_id: techno2.id
)
c57.save!

c58 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3q2AukE/",
  job_id: techno2.id
)
c58.save!

c59 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIzEZpOiK/",
  job_id: techno2.id
)
c59.save!

c60= GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4Pql2Kl/",
  job_id: techno2.id
)
c60.save!

c61= GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4Ozp3pg/",
  job_id: techno2.id
)
c61.save!

c64 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4jegp1q/",
  job_id: techno2.id
)
c64.save!

c65 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4ngBn4V/",
  job_id: techno2.id
)
c65.save!

c66 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno2.id
)
c66.save!

c67 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI4vTIKI9/",
  job_id: techno2.id
)
c67.save!

c68 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI5IpK1zM/",
  job_id: techno2.id
)
c68.save!



d1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno3.id
)
d1.save!

d2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno3.id
)
d2.save!

d3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno3.id
)
d3.save!

d4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno3.id
)
d4.save!

d5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno3.id
)
d5.save!

d6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno3.id
)
d6.save!

d7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno3.id
)
d7.save!

d8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno3.id
)
d8.save!

d9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno3.id
)
d9.save!

d10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno3.id
)
d10.save!

d11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno3.id
)
d11.save!

d12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno3.id
)
d12.save!

d13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno3.id
)
d13.save!

d14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno3.id
)
d14.save!

d15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno3.id
)
d15.save!

d16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno3.id
)
d16.save!

d17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno3.id
)
d17.save!

d18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno3.id
)
d18.save!

d19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno3.id
)
d19.save!

d20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno3.id
)
d20.save!

d21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno3.id
)
d21.save!

d22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno3.id
)
d22.save!

d23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno3.id
)
d23.save!

d24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno3.id
)
d24.save!

d25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno3.id
)
d25.save!

d26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno3.id
)
d26.save!

d27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno3.id
)
d27.save!

d28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno3.id
)
d28.save!

d29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno3.id
)
d29.save!

d30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno3.id
)
d30.save!

d31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno3.id
)
d31.save!

d32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno3.id
)
d32.save!

d33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno3.id
)
d33.save!

d34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno3.id
)
d34.save!

d35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno3.id
)
d35.save!

d36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno3.id
)
d36.save!

d37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno3.id
)
d37.save!

d38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno3.id
)
d38.save!

d39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno3.id
)
d39.save!

d40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno3.id
)
d40.save!

d41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno3.id
)
d41.save!

d42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno3.id
)
d42.save!

d43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno3.id
)
d43.save!

d45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno3.id
)
d45.save!

d46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno3.id
)
d46.save!

d47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno3.id
)
d47.save!

d48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno3.id
)
d48.save!

d49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno3.id
)
d49.save!

d50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno3.id
)
d50.save!

d51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno3.id
)
d51.save!

d52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno3.id
)
d52.save!

d53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno3.id
)
d53.save!

d54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno3.id
)
d54.save!

d55 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIuLVnOKT/",
  job_id: techno3.id
)
d55.save!

d56 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3fsow_V/",
  job_id: techno3.id
)
d56.save!

d57 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3l1HSbb/",
  job_id: techno3.id
)
d57.save!

d58 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3q2AukE/",
  job_id: techno3.id
)
d58.save!



e1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno4.id
)
e1.save!

e2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno4.id
)
e2.save!

e3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno4.id
)
e3.save!

e4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno4.id
)
e4.save!

e5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno4.id
)
e5.save!

e6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno4.id
)
e6.save!

e7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno4.id
)
e7.save!

e8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno4.id
)
e8.save!

e9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno4.id
)
e9.save!

e10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno4.id
)
e10.save!

e11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno4.id
)
e11.save!

e12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno4.id
)
e12.save!

e13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno4.id
)
e13.save!

e14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno4.id
)
e14.save!

e15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno4.id
)
e15.save!

e16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno4.id
)
e16.save!

e17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno4.id
)
e17.save!

e18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno4.id
)
e18.save!

e19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno4.id
)
e19.save!

e20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno4.id
)
e20.save!

e21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno4.id
)
e21.save!

e22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno4.id
)
e22.save!

e23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno4.id
)
e23.save!

e24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno4.id
)
e24.save!

e25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno4.id
)
e25.save!

e26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno4.id
)
e26.save!

e27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno4.id
)
e27.save!

e28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno4.id
)
e28.save!

e29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno4.id
)
e29.save!

e30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno4.id
)
e30.save!

e31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno4.id
)
e31.save!

e32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno4.id
)
e32.save!

e33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno4.id
)
e33.save!

e34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno4.id
)
e34.save!

e35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno4.id
)
e35.save!

e36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno4.id
)
e36.save!

e37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno4.id
)
e37.save!

e38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno4.id
)
e38.save!

e39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno4.id
)
e39.save!

e40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno4.id
)
e40.save!

e41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno4.id
)
e41.save!

e42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno4.id
)
e42.save!

e43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno4.id
)
e43.save!

e45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno4.id
)
e45.save!

e46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno4.id
)
e46.save!



f1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno5.id
)
f1.save!

f2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno5.id
)
f2.save!

f3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno5.id
)
f3.save!

f4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno5.id
)
f4.save!

f5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno5.id
)
f5.save!

f6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno5.id
)
f6.save!

f7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno5.id
)
f7.save!

f8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno5.id
)
f8.save!

f9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno5.id
)
f9.save!

f10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno5.id
)
f10.save!

f11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno5.id
)
f11.save!

f12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno5.id
)
f12.save!

f13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno5.id
)
f13.save!

f14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno5.id
)
f14.save!

f15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno5.id
)
f15.save!

f16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno5.id
)
f16.save!

f17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno5.id
)
f17.save!

f18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno5.id
)
f18.save!

f19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno5.id
)
f19.save!

f20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno5.id
)
f20.save!

f21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno5.id
)
f21.save!

f22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno5.id
)
f22.save!

f23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno5.id
)
f23.save!

f24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno5.id
)
f24.save!

f25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno5.id
)
f25.save!

f26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno5.id
)
f26.save!

f27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno5.id
)
f27.save!

f28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno5.id
)
f28.save!

f29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno5.id
)
f29.save!

f30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno5.id
)
f30.save!

f31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno5.id
)
f31.save!

f32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno5.id
)
f32.save!

f33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno5.id
)
f33.save!

f34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno5.id
)
f34.save!

f35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno5.id
)
f35.save!

f36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno5.id
)
f36.save!

f37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno5.id
)
f37.save!

f38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno5.id
)
f38.save!

f39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno5.id
)
f39.save!

f40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno5.id
)
f40.save!

f41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno5.id
)
f41.save!

f42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno5.id
)
f42.save!

f43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno5.id
)
f43.save!

f45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno5.id
)
f45.save!

f46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno5.id
)
f46.save!

f47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno5.id
)
f47.save!

f48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno5.id
)
f48.save!

f49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno5.id
)
f49.save!

f50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno5.id
)
f50.save!

f51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno5.id
)
f51.save!

f52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno5.id
)
f52.save!

f53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno5.id
)
f53.save!

f54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno5.id
)
f54.save!

f55 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pIuLVnOKT/",
  job_id: techno5.id
)
f55.save!

f56 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3fsow_V/",
  job_id: techno5.id
)
f56.save!

f57 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3l1HSbb/",
  job_id: techno5.id
)
f57.save!

f58 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3q2AukE/",
  job_id: techno5.id
)
f58.save!

f59 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3l1HSbb/",
  job_id: techno5.id
)
f59.save!

f60 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5pI3q2AukE/",
  job_id: techno5.id
)
f60.save!




g1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno6.id
)
g1.save!

g2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno6.id
)
g2.save!

g3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno6.id
)
g3.save!

g4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno6.id
)
g4.save!

g5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno6.id
)
g5.save!

g6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno6.id
)
g6.save!

g7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno6.id
)
g7.save!

g8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno6.id
)
g8.save!

g9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno6.id
)
g9.save!

g10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno6.id
)
g10.save!

g11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno6.id
)
g11.save!

g12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno6.id
)
g12.save!

g13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno6.id
)
g13.save!

g14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno6.id
)
g14.save!

g15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno6.id
)
g15.save!

g16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno6.id
)
g16.save!

g17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno6.id
)
g17.save!

g18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno6.id
)
g18.save!

g19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno6.id
)
g19.save!

g20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno6.id
)
g20.save!

g21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno6.id
)
g21.save!

g22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno6.id
)
g22.save!

g23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno6.id
)
g23.save!

g24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno6.id
)
g24.save!

g25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno6.id
)
g25.save!

g26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno6.id
)
g26.save!

g27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno6.id
)
g27.save!

g28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno6.id
)
g28.save!

g29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno6.id
)
g29.save!

g30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno6.id
)
g30.save!

g31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno6.id
)
g31.save!

g32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno6.id
)
g32.save!

g33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno6.id
)
g33.save!

g34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno6.id
)
g34.save!

g35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno6.id
)
g35.save!

g36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno6.id
)
g36.save!

g37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno6.id
)
g37.save!

g38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno6.id
)
g38.save!

g39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno6.id
)
g39.save!

g40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno6.id
)
g40.save!

g41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno6.id
)
g41.save!

g42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno6.id
)
g42.save!

g43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno6.id
)
g43.save!

g45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno6.id
)
g45.save!

g46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno6.id
)
g46.save!

g47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno6.id
)
g47.save!

g48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno6.id
)
g48.save!

g49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno6.id
)
g49.save!

g50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno6.id
)
g50.save!

g51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno6.id
)
g51.save!

g52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno6.id
)
g52.save!

g53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno6.id
)
g53.save!

g54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno6.id
)
g54.save!



h1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno7.id
)
h1.save!

h2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno7.id
)
h2.save!

h3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno7.id
)
h3.save!

h4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno7.id
)
h4.save!

h5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno7.id
)
h5.save!

h6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno7.id
)
h6.save!

h7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno7.id
)
h7.save!

h8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno7.id
)
h8.save!

h9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno7.id
)
h9.save!

h10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno7.id
)
h10.save!

h11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno7.id
)
h11.save!

h12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno7.id
)
h12.save!

h13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno7.id
)
h13.save!

h14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno7.id
)
h14.save!

h15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno7.id
)
h15.save!

h16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno7.id
)
h16.save!

h17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno7.id
)
h17.save!

h18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno7.id
)
h18.save!

h19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno7.id
)
h19.save!

h20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno7.id
)
h20.save!

h21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno7.id
)
h21.save!

h22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno7.id
)
h22.save!

h23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno7.id
)
h23.save!

h24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno7.id
)
h24.save!

h25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno7.id
)
h25.save!

h26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno7.id
)
h26.save!

h27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno7.id
)
h27.save!

h28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno7.id
)
h28.save!

h29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno7.id
)
h29.save!

h30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno7.id
)
h30.save!

h31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno7.id
)
h31.save!

h32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno7.id
)
h32.save!

h33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno7.id
)
h33.save!

h34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno7.id
)
h34.save!

h35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno7.id
)
h35.save!

h36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno7.id
)
h36.save!

h37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno7.id
)
h37.save!

h38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno7.id
)
h38.save!

h39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno7.id
)
h39.save!

h40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno7.id
)
h40.save!

h41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno7.id
)
h41.save!

h42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno7.id
)
h42.save!

h43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno7.id
)
h43.save!

h45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno7.id
)
h45.save!

h46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno7.id
)
h46.save!

h47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno7.id
)
h47.save!

h48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno7.id
)
h48.save!

h49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno7.id
)
h49.save!

h50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno7.id
)
h50.save!

h51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno7.id
)
h51.save!

h52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno7.id
)
h52.save!

h53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno7.id
)
h53.save!

h54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno7.id
)
h54.save!


i1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno8.id
)
i1.save!

i2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno8.id
)
i2.save!

i3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno8.id
)
i3.save!

i4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno8.id
)
i4.save!

i5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno8.id
)
i5.save!

i6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno8.id
)
i6.save!

i7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno8.id
)
i7.save!

i8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno8.id
)
i8.save!

i9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno8.id
)
i9.save!

i10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno8.id
)
i10.save!

i11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno8.id
)
i11.save!

i12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno8.id
)
i12.save!

i13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno8.id
)
i13.save!

i14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno8.id
)
i14.save!

i15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno8.id
)
i15.save!

i16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno8.id
)
i16.save!

i17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno8.id
)
i17.save!

i18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno8.id
)
i18.save!

i19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno8.id
)
i19.save!

i20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno8.id
)
i20.save!

i21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno8.id
)
i21.save!

i22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno8.id
)
i22.save!

i23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno8.id
)
i23.save!

i24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno8.id
)
i24.save!

i25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno8.id
)
i25.save!

i26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno8.id
)
i26.save!

i27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno8.id
)
i27.save!

i28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno8.id
)
i28.save!

i29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno8.id
)
i29.save!

i30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno8.id
)
i30.save!

i31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno8.id
)
i31.save!

i32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno8.id
)
i32.save!

i33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno8.id
)
i33.save!

i34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno8.id
)
i34.save!

i35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno8.id
)
i35.save!

i36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno8.id
)
i36.save!

i37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno8.id
)
i37.save!

i38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno8.id
)
i38.save!

i39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno8.id
)
i39.save!

i40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno8.id
)
i40.save!

i41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno8.id
)
i41.save!

i42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno8.id
)
i42.save!

i43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno8.id
)
i43.save!

i45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno8.id
)
i45.save!

i46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno8.id
)
i46.save!

i47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno8.id
)
i47.save!

i48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno8.id
)
i48.save!

i49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno8.id
)
i49.save!

i50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno8.id
)
i50.save!

i51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno8.id
)
i51.save!

i52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno8.id
)
i52.save!

i53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno8.id
)
i53.save!

i54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno8.id
)
i54.save!



j1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno9.id
)
j1.save!

j2 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5jpzy3jhmV/",
  job_id: techno9.id
)
j2.save!

j3 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m4d02H5qW/",
  job_id: techno9.id
)
j3.save!

j4 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5myy60HqpR/",
  job_id: techno9.id
)
j4.save!

j5 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno9.id
)
j5.save!

j6 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno9.id
)
j6.save!

j7 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m_ODFlnS1/",
  job_id: techno9.id
)
j7.save!

j8 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5m1Fdtg81d/",
  job_id: techno9.id
)
j8.save!

j9 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno9.id
)
j9.save!

j10 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nJFd2gFc6/",
  job_id: techno9.id
)
j10.save!

j11 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-CruhgeQ/",
  job_id: techno9.id
)
j11.save!

j12 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C-upvUR/",
  job_id: techno9.id
)
j12.save!

j13 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-C9nBNJF/",
  job_id: techno9.id
)
j13.save!

j14 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-DnbgtC2/",
  job_id: techno9.id
)
j14.save!

j15 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o9pwZJfZ3/",
  job_id: techno9.id
)
j15.save!

j16 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EH9o-Ol/",
  job_id: techno9.id
)
j16.save!

j17 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-EmGAI_l/",
  job_id: techno9.id
)
j17.save!

j18 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Bn6JrD-/",
  job_id: techno9.id
)
j18.save!

j19 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o99cfq5Gz/",
  job_id: techno9.id
)
j19.save!

j20 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GVFhfO1/",
  job_id: techno9.id
)
j20.save!

j21 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-GkfHUml/",
  job_id: techno9.id
)
j21.save!

j22 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
  job_id: techno9.id
)
j22.save!

j23 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IHODZx-/",
  job_id: techno9.id
)
j23.save!

j24 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IMvH8aS/",
  job_id: techno9.id
)
j24.save!

j25 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IPXpUDn/",
  job_id: techno9.id
)
j25.save!

j26 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IUaHNj3/",
  job_id: techno9.id
)
j26.save!

j27 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IexFXZZ/",
  job_id: techno9.id
)
j27.save!

j28 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-IZGlgu1/",
  job_id: techno9.id
)
j28.save!

j29 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-KCshKQR/",
  job_id: techno9.id
)
j29.save!

j30 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o943NlhcI/",
  job_id: techno9.id
)
j30.save!

j31 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-K4il8S9/",
  job_id: techno9.id
)
j31.save!

j32 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LGFn0GN/",
  job_id: techno9.id
)
j32.save!

j33 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-LmbnnvW/",
  job_id: techno9.id
)
j33.save!

j34 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-L0iIWqe/",
  job_id: techno9.id
)
j34.save!

j35 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MNMAOgB/",
  job_id: techno9.id
)
j35.save!

j36 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5nOgFRhOGw/",
  job_id: techno9.id
)
j36.save!

j37 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-MpbnAU8/",
  job_id: techno9.id
)
j37.save!

j38 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5qLSe0pwn0/",
  job_id: techno9.id
)
j38.save!

j39 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5muSsWowAj/",
  job_id: techno9.id
)
j39.save!

j40 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-M5rhoC5/",
  job_id: techno9.id
)
j40.save!

j41 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NKWHMIQ/",
  job_id: techno9.id
)
j41.save!

j42 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PTtHfHy/",
  job_id: techno9.id
)
j42.save!

j43 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-RpUHua6/",
  job_id: techno9.id
)
j43.save!

j45 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-NCxANf7/",
  job_id: techno9.id
)
j45.save!

j46 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TUoBhRB/",
  job_id: techno9.id
)
j46.save!

j47 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5kC5hdh_L_/",
  job_id: techno9.id
)
j47.save!

j48 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-TjOqPUn/",
  job_id: techno9.id
)
j48.save!

j49 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UBMhpWL/",
  job_id: techno9.id
)
j49.save!

j50 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UMVFBsI/",
  job_id: techno9.id
)
j50.save!

j51 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5mZCmziUg8/",
  job_id: techno9.id
)
j51.save!

j52 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-PaAIbAD/",
  job_id: techno9.id
)
j52.save!

j53 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-UoPlDRF/",
  job_id: techno9.id
)
j53.save!

j54 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5o-VE_HsFo/",
  job_id: techno9.id
)
j54.save!


k1 = GivenLike.new(
  ig_media_id: "https://www.instagram.com/p/B5p6kMhp25n/",
  job_id: techno10.id
)
k1.save!
