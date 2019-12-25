class BookComment < ApplicationRecord
# コメント機能
belongs_to :user
belongs_to :book

# presence: true 空欄だとfalse
validates :comment, presence: true, length: { maximum: 50 }

end
