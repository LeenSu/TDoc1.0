class Area < ActiveRecord::Base
  belongs_to :sede
  has_many :cargos
end
