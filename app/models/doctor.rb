class Doctor < ApplicationRecord
  has_many :receivings
  has_many :certificates
end
