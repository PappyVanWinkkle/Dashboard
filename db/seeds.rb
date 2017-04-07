# Sample data for the app 
3.times do |topic|
   Topic.create!(title: "Topic #{topic}")
end

puts "Your topic was created "


10.times do |blog|
	Blog.create!(
         title: "My blog post #{blog}",
         body: "Doner short loin kevin pork meatball brisket tri-tip.
          Ham flank picanha kevin meatball shoulder alcatra 
          ribeye burgdoggen jerky. Turkey pig short ribs doner bacon shoulder. 
          Spare ribs short ribs short loin landjaeger, bacon brisket prosciutto kevin jerky. 
          Picanha flank ham hock shoulder jowl, boudin brisket meatball ribeye fatback filet mignon.
           Bacon pork chop turducken 
         ham hock, doner turkey strip steak meatball jerky.", 
         topic_id: Topic.last.id
		)
end 

puts "10 blog posts have been created"

5.times do |skill|
	Skill.create!(
         title: "Rails #{skill}",
         percentage: 14
		)
end 

puts "5 Skills have now been created"

8.times do |portfolio| 
	Portfolio.create!(
       title: "My title #{portfolio}",
       subTitle: "Ruby on Rails development",
       body:     "Doner short loin kevin pork meatball brisket tri-tip.
                  Ham flank picanha kevin meatball shoulder alcatra 
                  ribeye burgdoggen jerky. Turkey pig short ribs doner bacon shoulder. 
                  Spare ribs short ribs short",

       mainImage: "http://placehold.it/600x400",
       thumb_image: "http://placehold.it/350x200" ,
       
       text: "My text image"                 

		)
end 

puts "Created 8 portfolio items on the page "

1.times do |portfolio| 
  Portfolio.create!(
       title: "My title #{portfolio}",
       subTitle: "Web Development with Golang and Google",
       body:     "Doner short loin kevin pork meatball brisket tri-tip.
                  Ham flank picanha kevin meatball shoulder alcatra 
                  ribeye burgdoggen jerky. Turkey pig short ribs doner bacon shoulder. 
                  Spare ribs short ribs short",

       mainImage: "http://placehold.it/600x400",
       thumb_image: "http://placehold.it/350x200" ,
       
       text: "My text image"                 

    )
end 
puts "You should just created one blog"

3.times do |technology|
  Technology.create!(
     name: "Technology #{technology}", 
     portfolio_id: Portfolio.last.id
    )
end 


puts "You should just created some tech"