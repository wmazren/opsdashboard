class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|
      t.string :server_name
      t.datetime :date_time
      t.string :job_name
      t.integer :event_id
      t.string :status

      t.timestamps null: false
    end
  end
end
