class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.boolean :accepted, null: false, default: false
      t.boolean :finished, null: false, default: false
      t.integer :number_of_days_attended
      t.text :note
      t.references :user, :job
      t.timestamps
    end
  end
end
