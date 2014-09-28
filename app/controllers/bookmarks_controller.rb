class BookmarksController < ApplicationController
  before_filter :require_login

  def index
    @bookmarks = current_user.bookmarks
  end
  
  def edit
    @bookmark = current_user.bookmarks.find(params[:id])
  end
  
  def new
    @bookmark = current_user.bookmarks.build
  end
  
  def show
    @bookmark = current_user.bookmarks.find(params[:id])
  end
  
  def create
    @bookmark = current_user.bookmarks.build(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path,
      notice: "Favorit wurde erfolgreich erstellt."
    else
      render "new"
    end
  end  
  
  def update
    @bookmark = current_user.bookmarks.find(params[:id])
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to bookmarks_path, 
      notice: "Favorit wurde erfolgreich geändert"
    else
      redirect_to "edit"
    end
  end
  
  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to root_path,
    notice: "Favorit wurde erfolgreich gelöscht."
  end
  
  def bookmark_params
      params.require(:bookmark).permit(:title, :url, :comment)
  end
end

private
  def require_login
    unless user_signed_in?
      redirect_to login_path,
      alerrt: "Bitte melden sie sich zuerst an"
    end
end
