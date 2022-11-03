class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end
  def get
    @tags = Tag.all
  end
end
