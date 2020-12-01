class FavoritesController < ApplicationController
  def index
    @favorite_topics = current_user.favorite_topics
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]

    if favorite.save
      redirect_to topics_path, success: 'お気に入りに登録しました'
    else
      redirect_to topics_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
  
  def destroy
    favorite_delete = Favorite.find_by(user_id: current_user.id,topic_id: params[:topic_id]) #特定の行が選択されたような状態

    if favorite_delete.destroy
      redirect_to topics_path, success: '削除に成功しました'
    else
      redirect_to topics_path, danger: '削除に失敗しました'
    end
  end  
  
end

