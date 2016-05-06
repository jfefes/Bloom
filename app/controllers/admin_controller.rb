class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @articleCount = Article.count
  end
end
