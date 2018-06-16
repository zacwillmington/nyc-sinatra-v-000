class LandmarksController < ApplicationController

    get '/landmarks' do
        @landmarks = Landmark.all
        erb :'/landmarks/index'
    end

    get '/landmarks/new' do

        erb :'/landmarks/new'
    end

    post '/landmarks' do

        redirect to :'/landmarks/#{@landmark.id}'
    end

    get '/landmarks/:id' do

        erb :'landmarks/show'
    end
end
