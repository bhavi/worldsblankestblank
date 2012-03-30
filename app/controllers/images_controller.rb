class ImagesController < ApplicationController

  expose(:images) { Image.all }

end
