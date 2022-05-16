User.create! email: "daniel@gmail.com", password: "123456"
User.create! email: "lindsay@gmail.com", password: "123456"

5.times do |i|
  Tweet.create! comment: "Tweet ##{i}", user_id: 1
end

5.times do |i|
  Tweet.create! comment: "Tweet ##{i}", user_id: 2
end
