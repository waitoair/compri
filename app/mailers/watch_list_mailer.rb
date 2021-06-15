class WatchListMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.watch_list_mailer.confirmation.subject
  #
  def confirmation
    @watch_list = params[:watch_list]

    mail(
      to: @watch_list.user.email,
      subject: "#{@watch_list.book.title} added to your Watch List!"
    )
  end
end
