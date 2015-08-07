class Company < ActiveRecord::Base
  has_many :addresses, :as => :addressable
  
  validates :phone, :phone => true
  validates :ein, :presence => true,
                  :einNumber => true
  validates :email, :email => true
  validates :website, :url => true
end
