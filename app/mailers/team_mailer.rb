class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_update_mail(team, user)
    @team = team
    mail to: user.email, subject: "#{team.name}のオーナー権限が移動されました"
  end
end
