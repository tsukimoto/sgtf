class TagsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new
	@tag.name = params[:tag][:name]
	@tag.save
	redirect_to '/tags/new/'
  end
end
