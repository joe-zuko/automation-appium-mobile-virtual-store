class Cart
  def refresh
    find_element(id: "qaninja.com.pixel:id/refreshButt").click
  end

  def checkout
    find_element(id: "qaninja.com.pixel:id/cartCheckoutButt").click
  end
end
