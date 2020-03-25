class OrderMailer < ApplicationMailer
  default from: "Mr.Loc <nguyenvanloc1247@gmail.com>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  # 
  def received(order)
    @order = order
    mail to: order.email, subject: "Pragmatic Store Order Confirmation"
  end

  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
    end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
end
