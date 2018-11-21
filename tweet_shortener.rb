require 'pry'

def dictionary
  short = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split.collect do |word|
    if dictionary.keys.any? { |w| w == word.downcase }
      word = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  shortened_tweets = []
  tweets_array.each do |tweet|
    shortened_tweets << word_substituter(tweet)
  end
  return shortened_tweets.flatten
end
