
get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  @errormsg = "Show: #{flash[:blah]}"
  erb :event_new
end

require 'pry'
post '/events/create' do
  @event = Event.create(params)
  create_flash(@event)
  flash[:email] = "flash email"
  # unless @event
    # create_flash()
    #key=> keyerror
    # flash[:blah] =
    redirect '/events/new'
end
