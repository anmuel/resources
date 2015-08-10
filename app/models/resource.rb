class Resource < ActiveRecord::Base
  validates :uri, presence: true
  
  after_initialize :set_name, unless: :name?
  
  private
  def set_name
    self.name = uri
  end
end
