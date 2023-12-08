class DropActionTextRichTexts < ActiveRecord::Migration[7.1]
  def change
    if table_exists?(:action_text_rich_texts)
    drop_table :action_text_rich_texts
    end
  end
end
