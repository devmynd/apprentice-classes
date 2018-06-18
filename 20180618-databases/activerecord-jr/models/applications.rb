class Applications < Database::Model
  self.table_name = "applications"
  self.attributes_name = [:id, :human_id, :created_at, :updated_at]
  attr_reader :attributes, :old_attributes

  #TODO: belongs_to :humans
end
