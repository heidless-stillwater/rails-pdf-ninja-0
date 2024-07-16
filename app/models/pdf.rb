class Pdf < ApplicationRecord
  belongs_to :user
  mount_uploader :pdfdoc, PdfdocUploader

  validate :pdf_size

  private

  def pdf_size
    if pdfdoc.size > 5.megabytes
      errors.add(:pdfdoc, "should be less than 5MB")
    end
  end

end
