class CreateReads < ActiveRecord::Migration[6.1]
  def change
    create_table :reads do |t|
      t.references :user, null: false, foreign_key: true
      t.references :announcement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
