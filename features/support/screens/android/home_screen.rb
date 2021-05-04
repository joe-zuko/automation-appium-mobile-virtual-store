class Home
  attr_reader :menu

  def initialize
    @menu = "qaninja.com.pixel:id/ibnt_icon_iv"
  end

  def go_account
    find_element(id: "qaninja.com.pixel:id/accountButt").click
  end

  def choose_cat(cat)
    find_elements(id: "qaninja.com.pixel:id/cCatNameTxt").text(cat).click
  end

  def go_back
    find_element(xpath: "//android.widget.ImageButton[@content-desc='Navigate up']").click
  end

  def go_to_home
    find_elements(id: @menu)[0].click
  end

  def go_to_wish
    find_elements(id: @menu)[1].click
  end

  def go_to_cart
    find_elements(id: @menu)[2].click
  end

  def go_to_contact
    find_elements(id: @menu)[3].click
  end
end
