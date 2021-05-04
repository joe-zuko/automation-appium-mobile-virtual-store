class Login
  def with(email, pass)
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(pass)
    find_element(id: "qaninja.com.pixel:id/loginButt").click
  end
end
