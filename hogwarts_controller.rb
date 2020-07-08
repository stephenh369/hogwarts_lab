require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

get '/students' do
    @students = Student.all()
    @houses = House.all()
    erb(:index)
end

get '/students/new' do
    erb(:new)
end

get '/students/:id' do
    @student = Student.find(params[:id])
    erb(:show)
end

post '/students' do
    @student = Student.new(params)
    @student.save()
    redirect '/students'
end

post '/students/:id/delete' do
    @student = Student.find(params[:id].to_i)
    @student.delete()
    redirect "/students"
end