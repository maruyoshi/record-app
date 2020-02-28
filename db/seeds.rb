User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.name = 'admin'
  user.admin = true
  user.password = 'password'
  user.password_confirmation = 'password'
end

html = Category.create(name: "HTML")
css = Category.create(name: "CSS")
javascript = Category.create(name: "javascript")
ruby = Category.create(name: "Ruby")
ruby_on_rails = Category.create(name: "Ruby on Rails")
db = Category.create(name: "DB")
aws = Category.create(name: "AWS")