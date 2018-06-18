require 'pathname'
require 'sqlite3'

APP_ROOT = Pathname.new(File.dirname(File.expand_path(__FILE__)))

#TODO: update these
DB_NAME = "database"
MODELS = %w(table1 table2)

# This converts a Hash with Strings as keys to a Hash with symbols as keys
# If a key doesn't response to to_sym, do nothing
class Hash
  def symbolize_keys
    dup.symbolize_keys!
  end

  def symbolize_keys!
    keys.each do |key|
      self[(key.to_sym rescue key) || key] = delete(key)
    end
    self
  end
end

require APP_ROOT.join('models', 'database_model')

MODELS.each do |model_name|
  require APP_ROOT.join('models', model_name)
end

Database::Model.database = APP_ROOT.join('db', "#{DB_NAME}.db")
