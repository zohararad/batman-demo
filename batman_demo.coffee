class BatmanDemo extends Batman.App
  # Make BatmanDemo available in the global namespace so it can be used
  # as a namespace and bound to in views.
  @global yes

  # Source the AppController and set the root route to AppController#index.
  @controller 'bookmarks'
  @model 'bookmark'
  @root 'bookmarks#index'

  @resources 'bookmarks'

