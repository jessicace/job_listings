class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :title
      t.text :description
      t.money :salary
      t.date :start_date
      t.text :company
      t.text :contact_name
      t.text :contact_number
      t.text :contact_email
      t.integer :views
      t.boolean :published
      t.timestamps null: false
    end
  end
end
