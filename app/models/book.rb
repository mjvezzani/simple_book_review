class Book < ActiveRecord::Base

  belongs_to :author

  validates :title, presence: true
  validates :author, presence: true
  
  def title_and_author
    "#{self.title}: by #{self.author.first_name} #{self.author.last_name}"
  end

end
