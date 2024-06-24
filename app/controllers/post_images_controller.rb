class PostImagesController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  def new
  end

  def index
  end

  def show
  end
end
