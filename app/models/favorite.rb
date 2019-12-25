class Favorite < ApplicationRecord
# いいね機能
belongs_to :book
belongs_to :user

end
