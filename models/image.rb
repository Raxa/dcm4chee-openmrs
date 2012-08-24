class Image
  include DataMapper::Resource

  # self.Settings = {
  #   sql_url: 'mysql://root:123@127.0.0.1:3306/openmrs',
  #   table: 'obs',
  #   column: 'value_complex',
  #   handler: Proc.new do |args|
  #     Image.find args
  #   end
  # }

  class << self
    attr_accessor :sql, :table, :column

  end



end
