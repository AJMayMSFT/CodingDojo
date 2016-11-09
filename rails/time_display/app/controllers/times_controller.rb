class TimesController < ApplicationController
  def main
    @now = DateTime.now
  end
end
