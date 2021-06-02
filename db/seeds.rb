puts "Deleting seeds! 🗑"
Seller.destroy_all
Item.destroy_all

puts "Creating seeds! 🌸"
#sellers
leo = Seller.create(name: "Leo", description: "A programmer", seller_rating: 5, profile_img: "https://ca.slack-edge.com/T02MD9XTF-U01NAPPCWBD-5819ef0465aa-512", email: "test@gmail.com")
kent = Seller.create(name: "Kent", description: "I sell everything", seller_rating: 5, profile_img: "https://ca.slack-edge.com/T02MD9XTF-U01SEAZ2FFA-d2c787c372fc-512", email: "test@gmail.com")

#leos items
ss_tv = Item.create(name: "Samsung TV", description: "Smart TV with applications", price: 1200, qty: 15, item_rating: 4, item_img: "https://image-us.samsung.com/SamsungUS/home/televisions-and-home-theater/tvs/all-tvs/04272021/Q90A-GalleryImage-1600x1200.jpg?$product-details-jpg$", seller_id: leo.id)
jbl_spk = Item.create(name: "JBL Speaker", description: "A bass oriented speaker", price: 145, qty: 11, item_rating: 2, item_img: "https://images-na.ssl-images-amazon.com/images/I/91HnLmz7bsL._AC_SL1500_.jpg", seller_id: leo.id)
sny_hdphns = Item.create(name: "Sony Headphones", description: "Immersive and loud headphones",price: 200, qty: 0, item_rating: 5, item_img: "https://www.bhphotovideo.com/images/images2500x2500/sony_wh1000xm4_s_wh_1000xm4_wireless_noise_canceling_over_ear_1582976.jpg", seller_id: leo.id)


#kents items
iphone = Item.create(name: "Apple iPhone 12 Pro (128GB, Gold)", description: "iPhone with A14 Bionic chip",price: 999, qty: 5, item_rating: 4.8, item_img: "https://m.media-amazon.com/images/I/71fVoqRC0wL._FMwebp__.jpg", seller_id: kent.id)
fuji = Item.create(name: "Fujifilm X-T4 Mirrorless Camera Body - Silver", description: "FUJIFILM X-T4 is a hybrid camera that uses cutting-edge technology to excel in creating both stills and motion imagery.",price: 1699, qty: 10, item_rating: 4.6, item_img: "https://images-na.ssl-images-amazon.com/images/I/81FwHpGOsXL._AC_SL1500_.jpg", seller_id: kent.id)
elac = Item.create(name: "ELAC Debut 2.0 B6.2 Bookshelf Speakers, Black (Pair)", description: "The life of Sound",price: 250, qty: 8, item_rating: 5, item_img: "https://images-na.ssl-images-amazon.com/images/I/71WSTdeKNfL._AC_SL1500_.jpg", seller_id: kent.id)

puts "Done creating seeds ✅"