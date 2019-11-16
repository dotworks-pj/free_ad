# frozen_string_literal: true

module Mypage
  class BaseController < ApplicationController
    before_action :authenticate_user!

    layout 'mypage'
  end
end
