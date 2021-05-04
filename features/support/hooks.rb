require "date"

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
end

Before("@login") do
  @user = { email: "joe@taekwonwikia.com.br", pass: "pass123" }
  @screen.home.go_account
  @screen.login.with(@user[:email], @user[:pass])
end

Before("@clean_cart") do
  @user = { email: "joe@taekwonwikia.com.br", pass: "pass123" }
  PixelApi.new.remove_my_cart(@user[:email])
end

After do
  driver.quit_driver
end
