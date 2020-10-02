# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Picture.destroy_all 
Tag.destroy_all

[1,2,3].each do |num|
    User.create(
      username:"user#{num}",
      email: "user#{num}@example.com",
      password: "test123"
    )
  end

  # comments = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  #             "Mauris tristique sapien vitae nisl viverra ultricies.",
  #             "Donec ut sem quis neque tempor venenatis nec ut risus.",
  #             "Praesent gravida nibh id mattis efficitur.",
  #             "Morbi accumsan leo in massa consectetur efficitur."]
   
  ["Nature", "NYC", "Art", "Humor"].each do |tag_name|
    Tag.create(name: tag_name)
  end
   
  array = ["https://randomuser.me/api/portraits/lego/3.jpg",
            "https://randomuser.me/api/portraits/lego/1.jpg",
            "https://randomuser.me/api/portraits/lego/8.jpg",
            "https://randomuser.me/api/portraits/lego/2.jpg",
            "https://randomuser.me/api/portraits/lego/4.jpg",
            "https://randomuser.me/api/portraits/lego/5.jpg",
            "https://randomuser.me/api/portraits/lego/6.jpg",
            "https://randomuser.me/api/portraits/lego/7.jpg",
            "https://randomuser.me/api/portraits/lego/9.jpg"]
   
  4.times {Picture.create( 
    img_url: array.sample,#each{|photo|puts photo},
    title: "Saw a dolphin!",
    owner_id: User.first.id
    # comment: Comment.first.id
  )}

  puts "SEEDED"