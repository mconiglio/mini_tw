class ApplicationMailer < ActionMailer::Base
  default from: "noreply@mconiglio.herokuapp.com"
  layout 'mailer'
end
