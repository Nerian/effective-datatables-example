class PostsController < ApplicationController

  def index
    @datatable = PostsDatatable.new(self)
  end
end