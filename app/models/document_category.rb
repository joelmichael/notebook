class DocumentCategory < ApplicationRecord
  belongs_to :document_analysis

  def parent_categories
    self.label.split('/')[1..-2].join('/')
  end

  def terminal_category
    self.label.split('/').last
  end
end
