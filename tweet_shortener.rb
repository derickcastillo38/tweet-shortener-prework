# Write your code here.
def word_substituter(tweet)
  shortened = tweet.split.map do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end

  shortened.join(" ")
end

def dictionary
  {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "two" => "2",
    "Two" => "2",
    "too" => "2",
    "Too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }

end

def bulk_tweet_shortener(tweets)
  shortened = tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    "#{tweet[0..136]} ..."
  end
end
