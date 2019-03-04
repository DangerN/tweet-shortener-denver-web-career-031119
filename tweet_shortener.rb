require 'pry'

def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
  }
end

def word_substituter(tweet_one)
  new_tweet = tweet_one.split(' ')
  #binding.pry
  new_tweet.each.with_index do |word, i|
    if dictionary.keys.include?(word)
      new_tweet[i] = dictionary[word]
    end
  end
      
    
  new_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet_one)
end

def shortened_tweet_truncator(tweet_three)
end

