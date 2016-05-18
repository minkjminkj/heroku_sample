class EntriesController < ApplicationController
  def new
    @blog = Blog.find(params[:blog_id])
  end
end
