class HomeController < ApplicationController
  include HomeHelper
  HomeHelper.index
end
