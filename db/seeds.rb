require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
User.delete_all
Comment.delete_all

posts = [
  {title: "Blue Cheese Roast" , recipe: "If I ever needed a reason to be thankful, it is to the happy accident that led to the discovery of blue cheese. A combination of conditions – bacteria and man's willingness not to be put off by a bit of mould – means that we now have a whole glorious array of piquant blue cheeses that taste fabulous and cook beautifully. It is yet again another example of serendipity in the world of food. The fact that it goes so beautifully with my favourite celery means happy days.", img_url: "https://images.unsplash.com/photo-1452195100486-9cc805987862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80"},
  {title: "Cranberries, Cheese and Pretzels" , recipe: "When you host a party, one of the easiest appetizers that you can put together is a cheese board.  You can prepare and set ahead of time, and it’s the perfect treat to welcome and greet your guests.  A full stock cheese board will keep your guests entertained and delighted while you’re in the kitchen preparing the main meal.", img_url: "https://images.unsplash.com/photo-1546960920-cbebc0d517b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"},
  {title: "Homemade Gourmet Burger", recipe: "Cut the buns in half, brush with olive oil or butter and grill in a pan until lightly toasted. Layer up, starting with a bed of lettuce and baby spinach. Follow with several slices of cheese, tomatoes, mushroom steaks, bacon and finally the beef patty. Finish with a generous spoonful of spicy tomato sauce. Top with burger lids, roll up your sleeves and tuck in!", img_url: "https://images.unsplash.com/photo-1502998070258-dc1338445ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2727&q=80"},
  {title: "Sizzling Summer Roast" , recipe: "Method Prep:13min  ›  Cook:12min  ›  Ready in:25min Preheat oven to 180 C / Gas 4. Place pizza base on baking tray. In a small bowl, mix together olive oil and sesame oil. Brush onto pizza base, covering entire surface. Stack the spinach leaves, then cut lengthways into 1.25cm strips; scatter evenly over base. Cover pizza with mozzarella and top with sliced mushrooms. Bake in preheated oven for 8 to 10 minutes or until cheese is melted and edges are crisp.", img_url: "https://images.unsplash.com/photo-1530632789071-8543f47edb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80"},
  {title: "Making Fierce Frittatas", recipe: "Frittatas have saved me on more hungry weeknights than I care to count. As long as I have a few vegetables and maybe a little meat to throw in a skillet, I can have a frittata on the table in about 20 minutes. Let me tell you, there is nothing better than diving into a plate of steaming veggie-filled eggs when you’re home late and starving.", img_url: "https://images.unsplash.com/photo-1534026744023-08fc40918b30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80"}
]

comments = [
  {content:"Marvellous!"},
  {content:"Interesting..."},
  {content:"I couldn't possibly eat that"},
  {content: "that meal was boom ting!"},
  {content: "That was so spicy, i loved it!"},
  {content:"Hook me up with full recipe girl!"},
  {content:"Hi this looks amazing"},
  {content:"Yummy yummy yummy!"},
  {content: "You absolute 5 STAR chef!"},
  {content: "Wow, I am so eating this up!"}
]

users = [
 {username: "Aquaria", img_url: "https://i.pinimg.com/originals/0d/5f/33/0d5f332ec1b563c65b0e9ff274fe2b7a.jpg", password: "aquaria"},
 {username: "Jinxx Monsoon", img_url: "https://www.billboard.com/files/styles/article_main_image/public/media/Jinkx-Jose-Alberto-Guzman-Colon-2017-billboard-1548.jpg", password: "jinxx"},
 {username: "Violet Chachki", img_url: "https://i.pinimg.com/originals/1f/66/85/1f66857bd37bece8ffaf61953bd0a5aa.jpg", password:"violet"},
 {username: "Bianca Del Rio", img_url: "https://www.out.com/sites/out.com/files/2016/12/15/bianca.jpg", password: "bianca"},
 {username: "Bob", img_url: "https://upload.wikimedia.org/wikipedia/commons/5/50/Bob_The_Drag_Queen_at_Rupaul%27s_Dragcon_2017_by_dvsross.jpg", password: "bob"}
]


users.each {|user| User.create(user)}

posts.each {|post|
  # binding.pry
  Post.create(
    title: post[:title],
    recipe: post[:recipe],
    img_url: post[:img_url],
    user_id: User.all.sample.id
  )
}



comment_contents = comments.map{|comment| comment[:content]}

comment_contents.each {|comment_content|
  # binding.pry
  Comment.create(
    content: comment_content,
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id
  )
}

# binding.pry
# 0
