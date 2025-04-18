class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.string :name
      t.text :email
      t.string :contact
      t.integer :age
      t.timestamps
    end
  end
end
 