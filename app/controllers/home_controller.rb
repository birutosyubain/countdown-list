class HomeController < ApplicationController
  
  def index
  end

  def show
    @calendar = {"id" => 1, "title" => "テスト投稿" }
  end

end
