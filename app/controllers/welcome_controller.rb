class WelcomeController < ApplicationController
  def index
    @news = News.first
  end
end
