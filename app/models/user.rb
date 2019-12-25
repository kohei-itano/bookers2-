class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# コメント機能
	has_many :books, dependent: :destroy
	attachment :profile_image
	has_many :book_comments, dependent: :destroy

# いいね機能
	has_many :favorites, dependent: :destroy

	validates :name, presence: true, length: { in: 2..20 }
	validates :introduction, length: { maximum: 50 }
	# validate :add_error_sample


end
