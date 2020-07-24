module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "TestProfolio | KC sheng"
    @seo_keywords = "KC Sheng Portfolio"
  end
end