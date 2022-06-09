class Article < ApplicationRecord
  
  before_destroy :destroy_comments
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true

  private

  def destroy_comments
    self.comments.destroy_all
  end
end
