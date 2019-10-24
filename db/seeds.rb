category = Category.create(title: 'Breath', detail:'Finding Calm Through Mindful Breathing', url:'http://i.imgur.com/N3Ti063.png') 
category_two = Category.create(title: 'Listen', detail:'Calming Way To End The Day', url:'http://i.imgur.com/bafbD7U.png')
category_three = Category.create(title: 'Imagine', detail:'Using Imagination To Tell A Story ', url:'http://i.imgur.com/FvjM17c.png')

activity = Activity.create(category_id:1, name:'Breath', description:'Children can discover calm through the magic of mindful breathing' , url:"https://www.youtube.com/embed/iaQed_Xdyvw")
activity_two = Activity.create(category_id:2, name:'Listen', description:"Children can listen to the rain as a calming way to end the day", url:"https://www.youtube.com/embed/yIQd2Ya0Ziw")
activity_three = Activity.create(category_id:3, name:'Imagine', description:"Children can use their imagination to tell a story and stay focus", url:"https://www.youtube.com/embed/H4-96GqPup4")

newsletter = Newsletter.create(email:'mindfulchild@me.com')

