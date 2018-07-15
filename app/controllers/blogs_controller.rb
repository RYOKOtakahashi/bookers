class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def new
  	@blogs= Blog.all
  	@blog= Blog.new
  end

  def create
  	# blog= Blog.new(blog_params)
   #  blog.save
   #  redirect_to blog_path(blog.id)

	    @blog= Blog.new(blog_params)
	    if  @blog.save
	    	flash[:notice] = "successfully created"
	    	redirect_to blog_path(@blog.id)
	    else
	    	@blogs= Blog.all
	    	
	    	render :new
	    end

  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def update
  	blog = Blog.find(params[:id])
    blog.update(blog_params)

    # @blog= Blog.new(blog_params)
    # if  @blog.save
    	flash[:notice] = 'successfully updated'
	# else
	# 	render :new
	# end

    redirect_to blog_path(blog.id)

  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to new_blog_path
    end

  private
  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
