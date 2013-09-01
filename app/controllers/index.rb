get '/' do

  if logged_in?
    redirect '/index'
  else
    redirect '/sign_in'
  end
  
end

get '/index' do
  @houses = ten_house_report #(Last 10 houses made)
  erb :index
end


get '/houses/new' do
  erb :new_house_form
end

get '/houses/:id' do
  @house = House.find(params[:id])
  erb :house
end

get '/sign_in' do
  # the `request_token` method is defined in `app/helpers/oauth.rb`
  redirect request_token.authorize_url
end

get '/sign_out' do
  session.clear
  redirect '/'
end

get '/auth' do
  # the `request_token` method is defined in `app/helpers/oauth.rb`
  @access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
  # our request token is only valid until we use it to get an access token, so let's delete it from our session
  @user = User.find_or_create_by_username(username: @access_token.params[:screen_name],
          oauth_token: @access_token.token, oauth_secret: @access_token.secret)
  p @access_token
  p @user

  session[:user_id] = @user.id
  session.delete(:request_token)

  # at this point in the code is where you'll need to create your user account and store the access token
  redirect '/'
end

## POSTS ##

post '/houses/new' do
  # => @house = House.create(params:[form_input])
  redirect '/houses/:id'
end

post '/houses/:id' do
  @house = House.create(params[:house])
  redirect "/houses/#{@house.id}"
end