class Comment
  include Mongoid::Document
  
  belongs_to :post
  
  field :comment, type: String
end
