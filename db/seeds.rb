Hike.find_or_create_by(location:"Mt. Constitution", distance:7, terrain:"tough")
Hike.find_or_create_by(location:"Friday Harbor", distance:5, terrain:"easy")
Hike.find_or_create_by(location:"Green Mountain", distance:6, terrain:"easy")
Hike.find_or_create_by(location:"Flat Irons", distance:9, terrain:"tough")

User.find_or_create_by(name:"Steve Johanson", username:"User1", email_address:"fake@gmail.com", password_digest:"school2021")
User.find_or_create_by(name:"Mike Smith", username:"User2", email_address:"notreal@gmail.com", password_digest:"Flatirion123")
User.find_or_create_by(name:"Shaq Oneil", username:"User3", email_address:"dummy@gmail.com", password_digest:"bootcamp321")
User.find_or_create_by(name:"Magic Johnson", username:"User4", email_address:"placeholder@gmail.com", password_digest:"coding234")