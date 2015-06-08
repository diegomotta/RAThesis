class Video < ActiveRecord::Base
	  belongs_to :empresa
  has_many :videos, dependent: :destroy
end
