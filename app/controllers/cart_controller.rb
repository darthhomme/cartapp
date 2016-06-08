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

      if cart[id] then        # if the product has been added to the cart, then increase by 1.
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


  # def minusCart I have to confess, I couldn't figure this action out. I will. I want to take items off
  #   if cart[id] then         if the product has been added to the cart, then subtract by 1.
  #     cart[id] = cart[id] -= 1
  #   end
  #
  # end


  def index #when user goes to the /cart then the cart should be empty or full of some product.
    @product = Product
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
end
