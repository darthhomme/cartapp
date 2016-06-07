class CartController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def add
    id = params[:id]
      if session[:cart] then  # if a cart has already been created, use it, otherwise make a new one
        cart = session[:cart]
      else
        session[:cart] = {}
        cart = session[:cart]
      end

      if cart[id] then        # if the product has been added to the cart, the increase by 1.
        cart[id] = cart[id] + 1
      else
        cart[id] = 1
      end
    redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
    @product = Product
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
end
