require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative  "./models/Student.rb"
require_relative  "./models/House.rb"


get '/' do
  "We're on"
end
 
get "/index"do
  @students = Student.all()
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  @student = Student.new(params)
  @student.save
  erb :create
end