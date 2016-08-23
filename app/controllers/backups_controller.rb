class BackupsController < ApplicationController
  def index
    @backups = Backup.all
  end
end
