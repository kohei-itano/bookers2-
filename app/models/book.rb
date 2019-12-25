class Book < ApplicationRecord

belongs_to :user

# コメント機能
has_many :book_comments, dependent: :destroy
# いいね機能
has_many :favorites, dependent: :destroy
 	def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
  end

validates :body, presence: true, length: { maximum: 200 }
validates :title, presence: true
end
