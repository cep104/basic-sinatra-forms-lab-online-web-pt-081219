require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do 
        puts params
        erb :newteam
    end

    post '/team' do 
        @name = params["name"]
        @team_coach = params["coach"]
        @team_point = params["pg"]
        @team_shoot = params["sg"]
        @team_small = params["sf"]
        @team_power = params["pf"]
        @team_center = params["c"]
        erb :team
    end
end

