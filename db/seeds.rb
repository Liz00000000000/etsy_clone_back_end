
Item.destroy_all 
Purchase.destroy_all
Review.destroy_all

30.times do 
User.create(email:'fake@email.com', password: 'password1', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, bio: Faker::TvShows::Seinfeld.quote)
end 

150.times do 
    Item.create(user_id: User.all.sample.id, title: Faker::Commerce.product_name, picture: 'https://www.pngitem.com/pimgs/m/583-5834015_main-product-photo-class-gallery-placeholder-image-swarovski.png', price: Faker::Commerce.price, category: Faker::Commerce.department)
end 

400.times do 
    Purchase.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end 

122.times do 
    Review.create(item_id: Item.all.sample.id, user_id: User.all.sample.id, rating: rand(1..6), content: Faker::Restaurant.review )
end 

200.times do 
    Message.create(content: Faker::TvShows::HeyArnold.quote, seller_id: User.all.sample.id, buyer_id: User.all.sample.id, item_id: Item.all.sample.id)
end 

300.times do 
    Reply.create(content: Faker::TvShows::HeyArnold.quote, user_id: User.all.sample.id, message_id: Message.all.sample.id)
end 