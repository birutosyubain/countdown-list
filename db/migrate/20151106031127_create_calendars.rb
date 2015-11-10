class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :category
      t.string :content
      t.string :user_id

      t.timestamps null: false
    end
  end
end
