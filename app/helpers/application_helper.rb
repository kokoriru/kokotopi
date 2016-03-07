module ApplicationHelper
  def page_title(title)
    title.blank? ? "KoKo-ToPi" : "#{title} | KoKo-ToPi"
  end
end
