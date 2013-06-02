User.delete_all
Box.delete_all
Item.delete_all
Subscription.delete_all
Tag.delete_all
Shipment.delete_all

u1 = User.create(email: 'user1@user1.com', name: "John Malcom", password: '12345678', password_confirmation: '12345678')
u2 = User.create(email: 'user2@user2.com', name: "Michale Johnson", password: '12345678', password_confirmation: '12345678')
u3 = User.create(email: 'user3@user3.com', name: "Erick Bryant", password: '12345678', password_confirmation: '12345678')
u3 = User.create(email: 'user3@user3.com', name: "Elton Kobe", password: '12345678', password_confirmation: '12345678')

b1 = Box.create(name: 'The London Box', description: "Look like you speak the Queen's English.", frequency: 'weekly', ship_date: '2013-02-02', price: 120, img_lg: "pics/box-1.png")
b2 = Box.create(name: 'The Surf Club', description: 'For the surfer in us all', frequency: 'biweekly', ship_date: '2013-02-03', price: 150, img_lg: "pics/box-2.png")
b3 = Box.create(name: 'The Luxury Box', description: 'The box of life.', frequency: 'monthly', ship_date: '2013-02-03', price: 75, img_lg: "pics/box-3.png")
b4 = Box.create(name: 'The Manhattan', description: 'Live like you live in Manhttan', frequency: 'monthly', ship_date: '2013-02-03', price: 90, img_lg: "pics/box-4.png")
b5 = Box.create(name: 'Peace of Mind Collection', description: 'Love and peace for the new age.', frequency: 'monthly', ship_date: '2013-02-03', price: 75, img_lg: "pics/box-5.png")
b6 = Box.create(name: 'Urban Sampler', description: 'Fine urban clothing for the urban man.', frequency: 'monthly', ship_date: '2013-02-03', price: 110, img_lg: "pics/box-6.png")

sh1 = Shipment.create(ship_date: '2013-05-15')

i1 = Item.create(name: 'Shoes', description: 'cool shoes', img: "pics/crop-1.png")
i2 = Item.create(name: 'Sandals', description: 'cool sandals', img: "pics/crop-2.png")
i3 = Item.create(name: 'Sneakers', description: 'cool kicks', img: "pics/crop-3.png")
# i4 = Item.create(name: 'Shades', description: 'nice shades', img: "pics/crop-4.png")
# i5 = Item.create(name: 'Surf board', description: 'surfing up', img: "pics/crop-5.png")
# i6 = Item.create(name: 'Baby Panda', description: 'a baby panda', img: "pics/crop-6.png")
i7 = Item.create(name: 'Laptop sleeves', description: 'cool shoes', img: "pics/crop-7.png")
i8 = Item.create(name: 'Sandals', description: 'cool sandals', img: "pics/crop-8.png")
i9 = Item.create(name: 'Shoes', description: 'cool shoes', img: "pics/crop-9.png")
# i10 = Item.create(name: 'Sandals', description: 'cool sandals', img: "pics/full-10.png")
# i11 = Item.create(name: 'Shoes', description: 'cool shoes', img: "pics/full-11.png")
# i12 = Item.create(name: 'Sandals', description: 'cool sandals', img: "pics/full-12.png")

t1 = Tag.create(name: 'footwear')
t2 = Tag.create(name: 'shoes')
t3 = Tag.create(name: 'sandals')

u1.boxes << b1
u2.boxes << b2
u3.boxes << b3 << b4

# s1 = Subscription.create(user_id: u1.id, box_id: b2.id)

b2.shipments << sh1
sh1.items << i1 << i2 << i3 << i7 << i8 << i9
# << i4 << i5 << i6 << i7 << i8 << i9 << i10 << i11 << i12
b1.shipments << sh1
i1.tags << t1 << t2
i2.tags << t1 << t3

# b2 = Box.create(name: 'Box2', description: 'Box2', img_lg: "pics/full-.png" frequency: 'biweekly', ship_date: '2013-02-03', price: 10)
# b3 = Box.create(name: 'Box3', description: 'Box3', frequency: 'monthly', ship_date: '2013-02-03', price: 10)
# b4 = Box.create(name: 'Box4', description: 'Box4', frequency: 'monthly', ship_date: '2013-02-03', price: 40)






