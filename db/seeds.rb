puts "Deleting seeds! 🗑"
Seller.destroy_all
Item.destroy_all

puts "Creating seeds! 🌸"
#sellers
leo = Seller.create(name: "Leo", description: "A programmer", seller_rating: 5, profile_img: "img", email: "test@gmail.com")
kent = Seller.create(name: "Kent", description: "I sell everything", seller_rating: 5, profile_img: "img", email: "test@gmail.com")

#leos items
ss_tv = Item.create(name: "Samsung TV", description: "Smart TV with applications", price: 1200, qty: 15, item_rating: 4, item_img: "img", seller_id: 1)
jbl_spk = Item.create(name: "JBL Speaker", description: "A bass oriented speaker", price: 145, qty: 11, item_rating: 2, item_img: "img", seller_id: 1)
sny_hdphns = Item.create(name: "Sony Headphones", description: "Immersive and loud headphones",price: 200, qty: 0, item_rating: 5, item_img: "img", seller_id: 1)


#kents items
iphone = Item.create(name: "Apple iPhone 12 Pro (128GB, Gold)", description: "iPhone with A14 Bionic chip",price: 999, qty: 5, item_rating: 4.8, item_img: "https://m.media-amazon.com/images/I/71fVoqRC0wL._FMwebp__.jpg", seller_id: 2)
fuji = Item.create(name: "Fujifilm X-T4 Mirrorless Camera Body - Silver", description: "FUJIFILM X-T4 is a hybrid camera that uses cutting-edge technology to excel in creating both stills and motion imagery.",price: 1699, qty: 10, item_rating: 4.6, item_img: "https://images-na.ssl-images-amazon.com/images/I/81FwHpGOsXL._AC_SL1500_.jpg", seller_id: 2)
elac = Item.create(name: "ELAC Debut 2.0 B6.2 Bookshelf Speakers, Black (Pair)", description: "The life of Sound",price: 250, qty: 8, item_rating: 5, item_img: "https://images-na.ssl-images-amazon.com/images/I/71WSTdeKNfL._AC_SL1500_.jpg", seller_id: 2)

puts "Done creating seeds ✅"