class CreateVisitingCompanies < ActiveRecord::Migration
  def change
    create_table :visiting_companies do |t|
      t.integer :student_id
      t.integer :attending_company_id
      t.boolean :visited

      t.timestamps
    end
  end
end
