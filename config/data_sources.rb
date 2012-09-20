class DataSources
  def self.[](key)
    if key == :openmrs_sql_url
      'mysql://root:123@127.0.0.1:3306/openmrs'
    end
  end
end
