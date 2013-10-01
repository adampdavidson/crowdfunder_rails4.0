class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :first_name, :last_name, :email, :password # don't think we need these in rails 4.0
  has_many :projects
end
