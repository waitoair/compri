# Preview all emails at http://localhost:3000/rails/mailers/watch_list_mailer
class WatchListMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/watch_list_mailer/confirmation
  def confirmation
    WatchListMailer.confirmation
  end

end
