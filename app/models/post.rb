class Post
  include Mongoid::Document
  
  has_many :comments  

  field :name, type: String
  field :like, type: Integer
end
