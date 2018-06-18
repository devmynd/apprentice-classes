class Humans < Database::Model
  self.table_name = "humans"

  self.attribute_names =  [:id, :name, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  #TODO: has_many :applications
  #TODO: has_many :animals through: :pets
end
