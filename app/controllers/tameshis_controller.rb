class TameshisController < ApplicationController
  def index
  end
  
  def sononi
    @topics = Topic.all.includes(:favorite_users)
  end
  
  def sonosan
  end
end
