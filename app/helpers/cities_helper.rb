module CitiesHelper
  def kana_list
    @cities.order(:kana).all.group_by{|c| c.kana[0]}
  end
end
