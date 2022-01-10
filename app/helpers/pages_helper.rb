module PagesHelper
  def twitter_parser(tweet)
    regex = /https?:\/\/[\S]+/
    tweet.gsub(regex) do |url|
      "<a href=#{url} target='_blanck'>#{url}</a>"
    end.html_safe
  end
end
