class Product
  # violando uma regra, pq clareza do meu teste é mais importante
  def go_to(product)
    find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt").text(product).click
  end

  def add_to_cart
    find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
  end
end
