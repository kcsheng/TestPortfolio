# used for seeding the database 
3.times do |n|
  Topic.create!(
    title: "Topic #{n}"
  )
end

puts "3 topics created"

10.times do |n|
  Blog.create!(
    title: "My Blog Post #{n}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, agna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |n|
  Skill.create!(
    title: "Rails #{n}",
    percent_utilised: 15
  )
end

puts "5 skills created"

8.times do |n|
  Portfolio.create!(
    title: "Portfolio_title #{n}",
    subtitle: "Ruby on Rails",
    body: "ur adipiscing elit, sed do eiusmod tempor incididunt ut labore etcommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, agna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure sunt in culpa qui officia deserunt mollit anim id est",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |n|
  Portfolio.create!(
    title: "Portfolio_title #{n}",
    subtitle: "Angular",
    body: "ur adipiscing elit, sed do eiusmod tempor incididunt ut labore etcommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, agna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure sunt in culpa qui officia deserunt mollit anim id est",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

