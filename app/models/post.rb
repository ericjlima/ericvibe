class Post < ActiveRecord::Base
  belongs_to :user
  validates :title,
            presence: true
  validates :content,
            presence: true
  validates :image,
            presence: true
  validates :user,
            presence: true
  def to_s
    title
  end

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: {minimum: 5}
  #validates :title, presence: true,
  #                  length: { minimum: 5 }
  #end
end
