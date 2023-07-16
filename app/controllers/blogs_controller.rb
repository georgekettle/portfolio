class BlogsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    # GET /blogs
    def index
        @blogs = Blog.all
    end

    # GET /blogs/:id
    def show
        @blog = Blog.find(params[:id])
    end

    # GET /blogs/new
    def new
        @blog = Blog.new
    end

    # POST /blogs
    def create
        @blog = Blog.new(blog_params)

        if @blog.save
            redirect_to @blog, notice: 'Blog was successfully created.'
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    # Only allow a list of trusted parameters through.
    def blog_params
        params.require(:blog).permit(:title, :content, :cover_image)
    end
end
