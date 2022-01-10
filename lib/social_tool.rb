module SocialTool
  def self.twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
      config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
      config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
      config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end

    # client.search("#rails", result_types: 'recent').take(6).collect do |tweet|
    #   "#{tweet.user.screen_name}: #{tweet.text}"
    # end
    ["tweet https://blog.palettecms.jp/article/20103", "tentative https://rubular.com/r/mA36VaphNA"]
  end
end
