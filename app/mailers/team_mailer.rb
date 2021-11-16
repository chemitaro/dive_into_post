class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_delete_mail(team_users, agenda_title)
    @agenda_title = agenda_title
    team_users.each do |user|
      @user = user
      mail to: @user.email, subject: "#{@agenda_title}が削除されました"
    end
  end

end
