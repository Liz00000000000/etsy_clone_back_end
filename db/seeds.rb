User.destroy_all 
Item.destroy_all 
Purchase.destroy_all
Review.destroy_all

30.times do 
User.create(email:'fake@email.com', password: 'password1', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, bio: Faker::TvShows::Seinfeld.quote)
end 

50.times do 
    Item.create(user_id: User.all.sample.id, title: Faker::Commerce.product_name, picture: 'https://www.pngitem.com/pimgs/m/583-5834015_main-product-photo-class-gallery-placeholder-image-swarovski.png', price: Faker::Commerce.price, category: Faker::Commerce.department)
end 

60.times do 
    Purchase.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end 

122.times do 
    Review.create(item_id: Item.all.sample.id, user_id: User.all.sample.id, rating: rand(1..6), content: Faker::TvShows::TheFreshPrinceOfBelAir.quote )
end 