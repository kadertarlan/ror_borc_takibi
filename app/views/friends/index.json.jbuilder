json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :email, :user_id, :twitter_username
  json.url friend_url(friend, format: :json)
end
