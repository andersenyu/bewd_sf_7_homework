#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line 
#2 -  Write a conditional that determine upvotes based on the category
#3 -  Save every story in a collection 
#4 -  Print each stories title, category and upvotes to the screen

+def get_story
+	puts "Enter a story title: \n"
+	title = gets.strip
+	puts "Enter the cagtegory: \n"
+	category = gets.strip
+	determine_upvotes(title, category)
+end
+
+def determine_upvotes(title, category)
+	upvotes = 1
+	if category.downcase == "food"
+		upvotes *= 5
+	elsif category.downcase == "cats"
+		upvotes *= 700
+	elsif category.downcase == "cars"
+		upvotes *= 4
+	end	
+	create_story(title, category, upvotes)
+end
+
+def create_story(title, category, upvotes)
+	{title: title, category: category, upvotes: upvotes}	
+end
+
+def get_stories
+	more_stories = true
+	while more_stories do 
+		stories = [] #create a container for all stories
+		story = get_story #get one story and create hash
+		stories << story #pass hash into stories array
+		puts "Do you have more stories? y/n"
+		answer = gets.strip
+			if answer.downcase == "n" # want to use regex to match n*
+				more_stories = false
+			end
+	end
+	print_news_feed(stories)
+end
+
+
+def print_news_feed(stories)
+	stories.each do |story|
+	#each story is a hash
+	puts "Title: #{story[:title]}, Category: #{story[:category]}, Upvotes: #{story[:upvotes]}"
+	end
+end
+
+