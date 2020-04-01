Status.create(name: 'Active', active: true)
Status.create(name: 'Inactive', active: false)
puts 'statuses created!'

20.times do
  User.create do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.status = Status.all.sample
  end
end
puts 'Users created!'

100.times do
  Message.create do |message|
    message.user = User.all.sample
    message.content = Faker::Lorem.paragraph
    message.read = [true, false].sample
  end
end
puts 'Messages created!'
