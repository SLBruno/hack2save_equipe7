class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :description, null: false
      t.integer :number_of_days
      t.boolean :closed, null: false, default: false
      t.references :institution
      t.timestamps
    end
  end
end
