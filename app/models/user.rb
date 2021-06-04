class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "Include both letters and numbers"}

  with_options presence: true do
    validates :nick_name
    validates :birthday
    with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]/}  do
    validates :first_name
    validates :last_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/}  do
    validates :first_name_kana
    validates :last_name_kana
    end
  end


  has_many :box
  has_many :item

end
