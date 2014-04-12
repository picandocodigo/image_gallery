require 'sinatra'
require 'haml'

IMAGES = "public/images"

before do
  @galleries, @images = [], []
  Dir.entries(IMAGES).each do |gallery|
    @path = "#{IMAGES}/#{gallery}"
    if File.directory?(@path)
      @galleries << gallery unless (@path =~ /\.\.?/)
    else
      @images << gallery
    end
  end
end

get "/" do
  haml :index, locals: {
    galleries: @galleries,
    images: @images,
    path: "images"
  }
end

get "/:gallery" do
  gallery = []
  Dir.entries("#{IMAGES}/#{params[:gallery]}").each do |image|
    unless File.directory?(image)
      gallery << image
    end
  end
  haml :gallery, locals: {
    gallery: gallery,
    path: "images/#{params[:gallery]}",
    galleries: @galleries,
    images: @images
  }
end
