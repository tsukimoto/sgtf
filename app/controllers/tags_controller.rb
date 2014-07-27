class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
  end

  def create
    @tag = Tag.new
    @tag.name = params[:tag][:name]
    @tag.save
    redirect_to tags_path
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to tags_path
    else
      render 'edit'
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

private
  def tag_params
    params[:tag].permit(:name)
  end

end
