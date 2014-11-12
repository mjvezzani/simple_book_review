class Book < ActiveRecord::Base

  belongs_to :author

  validates :title, presence: true
  validates :author, presence: true
  
  def title_and_author
    "#{self.title}: by #{self.author.full_name}"
  end

  def self.search(search)
    where("title like ?", "%#{search}%")
  end

end
