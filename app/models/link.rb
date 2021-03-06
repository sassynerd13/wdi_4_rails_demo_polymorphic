class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  validates :url, :title, presence: true
  validates :url, format: { with: /\Ahttp/ }
end
