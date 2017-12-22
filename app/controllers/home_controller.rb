class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10, page: 1 })
    # @orders = ShopifyAPI::Order.find(:all, :params => {:limit => 5, page:1})
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
