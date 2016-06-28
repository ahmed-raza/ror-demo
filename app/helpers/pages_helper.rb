module PagesHelper
  def attachment(resource)
    resource.attachment || Attachment.new
  end
end
