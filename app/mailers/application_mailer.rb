class ApplicationMailer < ActionMailer::Base
  default from: ENV['SMTP_DEF_FROM']
  layout 'mailer'
end
