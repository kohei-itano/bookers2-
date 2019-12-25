class FavoritesController < ApplicationController

	def create
		book = Book.find(params[:book_id])
		favorite = current_user.favorites.new(book_id: book.id)
		favorite.save
		# いいね機能、押されたところのviewに戻る　request.referrer
		redirect_to request.referrer
	end

	def destroy
		book = Book.find(params[:book_id])
		favorite = current_user.favorites.find_by(book_id: book.id)
		favorite.destroy
		redirect_to request.referrer
	end
end
