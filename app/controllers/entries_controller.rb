class EntriesController < ApplicationController
  def new
    @blog = Blog.find(params[:blog_id])
    @entry = @blog.entries.build
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.blog_id = params[:blog_id]
    if @entry.save
      redirect_to blog_path(@entry.blog_id)
    else
      render :new
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to blog_url(@entry.blog_id)
  end


  private
    def entry_params
      params.require(:entry).permit([:title, :body])
    end

end
