class Attachment < ActiveRecord::Base
  def scribd_url
    "http://www.scribd.com/word/full/#{self.scribd_doc_id}?access_key=#{self.scribd_access_key}"
  end
end