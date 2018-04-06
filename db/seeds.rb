# User.create(fname: "Luke", lname: "Skywalker", password: "ls", email: 22, username: )
# User.create(fname: "John", lname: "Smith", password: "ls", age: 22)
# User.create(fname: "Luke", lname: "Skywalker", password: "ls", age: 22)
# User.create(fname: "Luke", lname: "Skywalker", password: "ls", age: 22)
# User.create(fname: "Luke", lname: "Skywalker", password: "ls", age: 22)

# or ...

user_list = [
  ["Joseph", "Cardillo", "123", "joseph@email.com", "jcardillo"],
  ["Peter", "Pumpkin", "234", "peter@email.com", "ppumpkin"],
  ["Beverly", "Johnson", "345", "beverly@email.com", "bjohnson"],
  ["Carly", "Closs", "456", "carly@email.com", "ccloss"]
]

user_list.each do |fname, lname, password, email, username|
  User.create(fname: fname, lname: lname, password: password, email: email, username: username)
end

post_list = [
  ["Yesterday Was Cold", "It was really, really cold.", 1],
  ["Tomorrow Will Be Hot", "It will be really, really hot.", 2],
  ["In Two Days", "I will ride my bike.", 3],
  ["On Thursday", "It will snow.", 4]
]

post_list.each do |title, content, user_id|
  Post.create(title: title, content: content, user_id: user_id)
end

# or...
# Post.create(title: "Why I love lemons", content: "They are great", user_id: 1)
