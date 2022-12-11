class Admin::GenresController < ApplicationController

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    genre = Genre.new(genre_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    genre.save

    redirect_to admin_genres_path
  end

  def edit
  end

  def genre_params
  params.require(:genre).permit(:name)
  end

end
