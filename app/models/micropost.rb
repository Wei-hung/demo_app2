class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length =>{:maximum => 148}
  belongs_to :userss
end
