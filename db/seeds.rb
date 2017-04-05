# Sample data for the app 
10.times do |blog|
	Blog.create!(
         title: "My blog post #{blog}",
         body: "Doner short loin kevin pork meatball brisket tri-tip.
          Ham flank picanha kevin meatball shoulder alcatra 
          ribeye burgdoggen jerky. Turkey pig short ribs doner bacon shoulder. 
          Spare ribs short ribs short loin landjaeger, bacon brisket prosciutto kevin jerky. 
          Picanha flank ham hock shoulder jowl, boudin brisket meatball ribeye fatback filet mignon.
           Bacon pork chop turducken 
         ham hock, doner turkey strip steak meatball jerky."
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

9.times do |portfolio| 
	Portfolio.create!(
       title: "My title #{portfolio}",
       subTitle: "Another title",
       body:     "Doner short loin kevin pork meatball brisket tri-tip.
                  Ham flank picanha kevin meatball shoulder alcatra 
                  ribeye burgdoggen jerky. Turkey pig short ribs doner bacon shoulder. 
                  Spare ribs short ribs short",

       mainImage: "http://placehold.it/600x400",
       thumb_image: "http://placehold.it/350x200" ,
       
       text: "My text image"                 

		)
end 

puts "Created 9 portfolio items on the page "