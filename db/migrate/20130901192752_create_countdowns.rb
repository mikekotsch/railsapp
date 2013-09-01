class CreateCountdowns < ActiveRecord::Migration
  def change
    create_table :countdowns do |t|
      t.string :title
      t.timestamp :time
      t.string :picture
      t.string :link

      t.timestamps
    end
  end
end
