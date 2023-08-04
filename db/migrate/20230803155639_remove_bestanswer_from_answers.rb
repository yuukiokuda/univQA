class RemoveBestanswerFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :bestanswer, :boolean
  end
end
