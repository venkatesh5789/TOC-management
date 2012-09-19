class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.boolean :day1
      t.boolean :day2
      t.string :specialization

      t.timestamps
    end
  end
end
