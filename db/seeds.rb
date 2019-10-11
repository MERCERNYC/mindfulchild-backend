category = Category.create(title: 'Breath', detail:'Breathing with a Pinwheel', url:'http://i.imgur.com/N3Ti063.png') 
category_two = Category.create(title: 'Listen', detail:'Listen to the birds singing', url:'http://i.imgur.com/bafbD7U.png')
category_three = Category.create(title: 'Imagine', detail:'Listen to a history and imagine ', url:'http://i.imgur.com/FvjM17c.png')

activity = Activity.create(category_id:1, name:'Blow on your Pinwheel ', description:'This exercise allows us to see how different ways of breathing affect how our mind and bodies feel' , url:"https://tenor.com/view/pinwheel-wind-breathing-exercise-gif-12703516")
activity_two = Activity.create(category_id:2, name:'Listen the Birds Singing', description:"Listen to the birds as a calming way to end the day", url:'https://www.youtube.com/watch?v=VeIhRdR2jsU&t=41s')
activity_three = Activity.create(category_id:3, name:'Use your Imagination and tell a history', description:"Create a history to feel focused and calm", url:"https://youtu.be/75NQK-Sm1YY")

newsletter = Newsletter.create(email:'hello@me.com')
