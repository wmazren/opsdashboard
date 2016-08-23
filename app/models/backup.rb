class Backup < ActiveRecord::Base
  require 'csv'

  def self.import_data
    data = []
    CSV.foreach('public/sample.csv', headers: true) do |row|
      data << {server_name: row['ServerName'], date_time: row['DateTime'], job_name: row['JobName'], event_id: row['EventId'],
        status: row['Status']}
    end
    Backup.create(data)
  end
end
