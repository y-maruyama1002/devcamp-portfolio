User.create!(email: "user@test.com", name: "yoshi", password: "password", roles: "site_admin")

3.times do |i|
  Topic.create(title: "Topic #{i}")
end

10.times do |i|
  Blog.create!(
    title: "My blog post #{i}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

5.times do |i|
  Skill.create!(
    title: "rails #{i}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |i|
  Portfolio.create!(
    title: "Porfolio title #{i}",
    subtitle: "Ruby on Rails",
    body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, ",
  )
end

Portfolio.create!(
  title: 'Portfolio title 10',
  subtitle: "Angular",
  body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, "
)

puts "9 portfolios created"

3.times do |i|
  Portfolio.last.technologies.create!(
    name: "Technology #{i}"
  )
end

puts "3 technologies created"
