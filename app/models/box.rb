class Box < ApplicationRecord


  with_options presence: true do
    validates :box_name
    validates :box_memo
  end

  has_one_attached :image
  belongs_to :user
  has_many :item, dependent: :destroy

end
