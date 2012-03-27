class BatmanDemo.BookmarksController extends Batman.Controller
  emptyBookmark: null

  index: ->
    @set 'emptyBookmark', new BatmanDemo.Bookmark

  create: =>
    @emptyBookmark.save (error, record) =>
      throw error if error

      @set 'emptyBookmark', new BatmanDemo.Bookmark

  show: (params) ->
    BatmanDemo.Bookmark.find params.id, (err, bookmark) =>
      @set('bookmark', bookmark)

# since this isn't actually a route action, nothing will be rendered here.
  # Add actions to this controller by defining functions on it.
  #
  # show: (params) ->

  # Routes can optionally be declared inline with the callback on the controller:
  #
  # edit: @route('/batman_demo/:id', (params) -> ... )

  # Add functions to run before an action with
  #
  # @beforeFilter 'someFunctionKey'  # or
  # @beforeFilter -> ...
