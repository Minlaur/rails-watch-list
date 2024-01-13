class BookmarksController < ApplicationController
before_action :set_list, only: %i[new create]
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
  end

  def destroy
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end
end
