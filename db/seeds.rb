User.create!(
  email: "jackdoe@example.com",
  password: "secret",
  password_confirmation: "secret",
  name: "Jack Doe",
  roles: "site_admin"
)
puts "1 admin user created"

User.create!(
  email: "janedoe@example.com",
  password: "secret",
  password_confirmation: "secret",
  name: "Jane Doe",
  roles: "user"
)
puts "1 regular user created"

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: 0,
		topic_id: Topic.last.id
	)
end

puts	"10 blog posts created"
5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15,
	)
end

puts '5 skills created'
8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "Ruby on rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image:"https://via.placeholder.com/600x400",
		thumb_image:"https://via.placeholder.com/350x200",
	)
end

puts '8 portfolio items created'
8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image:"https://via.placeholder.com/600x400",
		thumb_image:"https://via.placeholder.com/350x200",
	)
end
puts '8 portfolios items created'

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}",
	)
end
puts '3 technologies created'