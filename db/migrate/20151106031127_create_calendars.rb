class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.datetime :startdate
      t.datetime :enddate
      t.string :category
      t.string :content

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
