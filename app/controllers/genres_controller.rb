class GenresController < ApplicationController

    get '/genres' do
     @genres = Genre.all
     erb:'genres/index'
   end

   get '/genres/:slug' do
     @genre = Genre.find_by_slug(params[:slug])
     erb :'genres/show'
   end

   post '/genres' do
    # ...
    # ^ code for creating and saving a new song
    flash[:message] = "Successfully created genre."
    redirect to("/artists/#{@genre.slug}")
  end

end
