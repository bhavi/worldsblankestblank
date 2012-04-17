class ImagesController < ApplicationController

  expose(:search_name) { params[:name] }
  expose(:search_description) { params[:description] }
  expose(:searched_images) { Image.search(search_name, search_description) }
  # expose(:latest_images) { Image.recent }
  expose(:filtered_images) do
  if params[:filtered] == "newest"
    Image.newest
  else
    Image.oldest
  end
end
  expose(:images) {searched_images.present? ? searched_images : filtered_images }
  expose(:image)

  def filtered
    render 'index'
  end

  def search
    render 'index'
  end

  def create
    if image.save
      redirect_to images_path
    else
      render "new"
    end
  end

  def update
    if image.update_attributes(params[:image])
      redirect_to images_path, :notice => "Image updated"
    else
      render "edit"
    end
  end

  def destroy
    image.destroy
    flash[:notice] ="Image destroyed"
    redirect_to images_path
  end

  def agree
    image.increment! :votes
    respond_to do |format|
      format.html
      format.json {render :json => image}
      end
   end


  end

