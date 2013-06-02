User.delete_all
Box.delete_all
Item.delete_all
Subscription.delete_all
Tag.delete_all

u1 = User.create(email: 'user1@user1.com', password: '12345678', password_confirmation: '12345678')
u2 = User.create(email: 'user2@user2.com', password: '12345678', password_confirmation: '12345678')
u3 = User.create(email: 'user3@user3.com', password: '12345678', password_confirmation: '12345678')


b1 = Box.create(name: 'Box1', description: 'Box1', frequency: 'weekly', ship_date: '2013-02-02', price: 20)
b2 = Box.create(name: 'Box2', description: 'Box2', frequency: 'biweekly', ship_date: '2013-02-03', price: 10)
b3 = Box.create(name: 'Box3', description: 'Box3', frequency: 'monthly', ship_date: '2013-02-03', price: 10)

i1 = Item.create(name: 'Shoes', description: 'cool shoes')
i2 = Item.create(name: 'Sandals', description: 'cool sandals')

t1 = Tag.create(name: 'footwear')
t2 = Tag.create(name: 'shoes')
t3 = Tag.create(name: 'sandals')

u1.boxes << b1
u2.boxes << b2
u3.boxes << b3

s1 = Subscription.create(user_id: u1.id, box_id: b2.id)

b1.items << i1 << i2
i1.tags << t1 << t2
i2.tags << t1 << t3