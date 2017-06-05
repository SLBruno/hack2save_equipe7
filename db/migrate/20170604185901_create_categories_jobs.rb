class CreateCategoriesJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_jobs do |t|
      t.references :category, :job
    end
  end
end
