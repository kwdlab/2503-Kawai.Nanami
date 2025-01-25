class ApplicationMailer < ActionMailer::Base
  default from: "user@realdomain.com" # 本番環境でメール送信を行う場合は自分が使っているメールアドレスに変更する
  layout "mailer"
end
