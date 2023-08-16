Rails.application.routes.draw do
  get 'reviews/create'
  # This line creates a route for the 'create' action in the 'ReviewsController' using the GET HTTP method.
  # It's usually not common to use GET for creating resources, so this might need to be changed to POST.

  root to: 'restaurants#index'
  # This line sets the root route of your application to the 'index' action of the 'RestaurantsController'.

  resources :restaurants, only: [:index, :show, :new, :create] do
    # This line defines a resource route for the 'restaurants' controller.
    # It generates routes for listing, showing, creating, and viewing new restaurants.

    resources :reviews, only: [:create]
    # This nested block defines a resource route for 'reviews' nested within 'restaurants'.
    # It generates a route for creating reviews associated with a specific restaurant.
  end
end
