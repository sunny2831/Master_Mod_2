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
  {title: "New Years Menu" , recipe: "Blue Cheese Roast, go to the supermarket find that infamous blue cheese (well known for it's smell) slice up the cheese, roast your veggies and serve with wine", img_url: "https://images.unsplash.com/photo-1452195100486-9cc805987862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80"},
  {title: "Easter Feast" , recipe: "b", img_url: "https://images.unsplash.com/photo-1546960920-cbebc0d517b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"},
  {title: "May day madness", recipe: "c", img_url: "https://images.unsplash.com/photo-1502998070258-dc1338445ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2727&q=80"},
  {title: "Sizzling Summer Roast" , recipe: "It's summer time and we want to cook up a roast once again, how about mushrooms and cilantro, tastes delish! I promise!", img_url: "https://images.unsplash.com/photo-1530632789071-8543f47edb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80"},
  {title: "Christmas miracle", recipe: "Christmas is just so much better with fritattas!", img_url: "https://images.unsplash.com/photo-1534026744023-08fc40918b30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80"}
]

comments = [
  {content:"marvellous"},
  {content:"interesting"},
  {content:"I couldn't possibly eat that"},
  {content: "that meal was boom ting!"},
  {content: "That was so spice, i loved it!"}
]

users = [
  {username: "Aquaria", img_url: "https://images.unsplash.com/photo-1516562313534-8f1d36ddd981?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", password: "aquaria"},
 {username: "Jinxx Monsoon", img_url: "https://images.unsplash.com/photo-1533552755457-5b471cb2ab11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", password: "jinxx"},
 {username: "Violet Chachki", img_url: "https://images.unsplash.com/photo-1538090980822-9f3b7fe8d2ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80", password:"violet"}
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
