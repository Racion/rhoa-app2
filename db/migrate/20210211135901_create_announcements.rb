class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :announcement
      t.date :expiration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
