class Application < ActiveRecord::Base
  attr_accessible :apiKey, :isActive, :name, :url
end
