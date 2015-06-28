require 'pry'
require 'rest-client'
require 'json'

def get_reddit_info(subreddit)

  url = "http://reddit.com/r/#{subreddit}.json"

  response = RestClient.get(url)

  parsed_response = JSON.parse(response)

  posts = parsed_response['data']['children']

  # Take ten posts from the posts variable (might have to Google it)

  # Iterate over each of the posts 
    # Put the title to the screen
    # Put the author to the screen
    # Put a new line
end

puts 'What subreddit would you like to crawl?'
subreddit = gets.strip

get_reddit_info(subreddit)


