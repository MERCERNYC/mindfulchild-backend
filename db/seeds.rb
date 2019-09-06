category = Category.create(title: 'Breath')
category_two = Category.create(title: 'Calm down')
activity = Activity.create(category_id:1, name:'breathing with a pinwheel', description:'breathing affect how our mind and bodies feel', url:'http://localhost3000/category/activities')
activity_two = Activity.create(category_id:2, name:'count to five ', description:'feel calm and peaceful and take five', url:'http://localhost3000/category/activities')