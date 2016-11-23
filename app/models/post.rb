class Post < ActiveRecord::Base
  belongs_to :user
  validates :title,
            presence: true
  validates :content,
            presence: true
  validates :user,
            presence: true
  def to_s
    title
  end

  has_many :comments
  #validates :title, presence: true,
  #                  length: { minimum: 5 }
  #end
end
