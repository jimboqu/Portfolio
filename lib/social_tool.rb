module SocialTool
  def self.twitter_search
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "n2mpW2frAtKZgCB6qSWDcSexq"
	  config.consumer_secret     = "jmC3mXaKymqLSHSWJtfUZaqWKlsWKiyEU5xiL9Ks3NKVhoJ3Dy"
	  config.access_token        = "3696081981-RqLyG19BB16vMHVLFJwuSCvQcNZvB0X1LYBNYZu"
	  config.access_token_secret = "WUpNsNtoKnjc4UGqHQnnp3syGSouwZ0lCMu8Lq4qlGoF1"
	end
  end
end