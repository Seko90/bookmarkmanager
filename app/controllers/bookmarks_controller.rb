class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  
  def edit
    @bookmark = Bookmark.find(params[:id])
  end
  
  def new
    @bookmark = Bookmark.new
  end
  
  def show
    @bookmark = Bookmark.find(params[:id])
  end
  
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path,
      notice: "Favorit wurde erfolgreich erstellt."
    else
      render "new"
    end
  end  
  
  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to bookmarks_path, 
      notice: "Favorit wurde erfolgreich geändert"
    else
      redirect_to "edit"
    end
  end
  
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_url,
    notice: "Favorit wurde erfolgreich gelöscht."
  end
  
  def bookmark_params
      params.require(:bookmark).permit(:title, :url, :comment)
    end
end
