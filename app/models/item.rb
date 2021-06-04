class Item < ApplicationRecord

  with_options presence: true do
    validates :item_name
    validates :item_memo
  end

  has_one_attached :image
  belongs_to :box
  belongs_to :user
  
end
