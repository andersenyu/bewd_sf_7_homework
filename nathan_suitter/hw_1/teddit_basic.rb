require 'pry'
require 'pry-byebug'
require 'colorize'

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

def get_story
  puts "Please provide a story title: "
  title = gets.chomp
  puts "Please provide a category: "
  category = gets.strip
  determine_upvotes(title, category) 
end

def determine_upvotes(title, category)
  # binding.pry
  upvotes = 1
  if category == 'cats'
    upvotes *= 7
  elsif category == 'food'
    upvotes *= 5
  elsif category == 'cars'
    upvotes *= 4
  else
    upvotes
  end 
  create_story(title, category, upvotes)
end

def create_story(title,category,upvotes)
  {title: title, category: category, upvotes: upvotes}
end

def get_stories(stories)
  story = get_story
  stories << story
  prompt_tell_story(stories)
end

def print_news_feed(stories)
  stories.each do |story|
    puts "Title: #{story[:title].green}, Category: #{story[:category].green}, Upvotes: #{story[:upvotes].to_s.green}"
  end
end

def prompt_tell_story(stories)
  ask = '(' + "yes".green + "/" + "no".red + '):'

  puts "Do you want to tell another story #{ask}"
  answer = gets.chomp
  answer.downcase!
  if answer == 'yes'
    get_stories(stories)
  elsif answer == 'no'
    puts; puts "Here's the complete list of stories you told:"
    puts; print_news_feed(stories); puts
  else
    print "Sorry, I didn't catch that. "
    prompt_tell_story(stories)
  end
end

stories = []

get_stories(stories)
