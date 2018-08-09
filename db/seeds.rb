# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "Topic number #{topic}")
end 

puts "3 topics"

10.times do |thing|
  Blog.create(
  	title: "Blog number #{thing}",
    body: "The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more", topic_id: Topic.last.id)
    
end

puts "10 blogs created"

5.times do |skill|
  Skill.create(
  	title: "Skill number #{skill}",
    percent_utilised: 15
  	)
end

puts "5 skills created"

8.times do |folio|
  Folio.create(
    title: "Portfolio number #{folio}",
    subtitle: "Ruby",
    body: "The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  	)
end

1.times do |folio|
  Folio.create(
    title: "Portfolio number #{folio}",
    subtitle: "Angular",
    body: "The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words.",
    main_image: "http://via.placeholder.com/600x200",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

3.times do |technology|
  Technology.create(name: "Technology #{technology}", 
  folio_id: Folio.last.id)
end
