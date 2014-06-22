class OmniauthCallbacksController < Devise::OmniauthCallbacksController   

    def twitter
    redirect_url = "http://myawesomeapp.herokuapp.com/create_users/get_twitter_info"

    url = URI.parse(URI.encode(redirect_url.strip))

   consumer_key=consumer key
   consumer_secret=consumer secret

    oauth = OAuth::Consumer.new(consumer_key, consumer_secret,
                             { :site => "http://api.twitter.com" })
    request_token = oauth.get_request_token(:oauth_callback => url)
    session[:twitter_token] = request_token.token
    session[:twitter_secret] = request_token.secret
  end

  def get_twitter_info 
    consumer_key=consumer key
    consumer_secret=consumer secret
    oauth = OAuth::Consumer.new(consumer_key,consumer_secret,
                             { :site => "http://api.twitter.com" })
    request_token = OAuth::RequestToken.new(oauth, session[:twitter_token],                                          session[:twitter_secret])
    @access_token = request_token.get_access_token(
                 :oauth_verifier => params[:oauth_verifier])

  def results
  end
  end
