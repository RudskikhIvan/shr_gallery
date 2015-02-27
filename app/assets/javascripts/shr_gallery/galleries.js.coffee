class App.ImagesLoader

  defaultOptions:

    runtimes: 'html5,flash,silverlight,html4'
    url: '/'

    max_file_size: '20mb'

    filters: [
      {
        title: "Image files"
        extensions: "jpg,jpeg,gif,png"
      }
    ]

    rename: true
    dragdrop: true

    views:
      list: true
      thumbs: true
      active: 'thumbs'

    #flash_swf_url : '/plupload/js/Moxie.swf',
    #silverlight_xap_url : '/plupload/js/Moxie.xap'

  constructor: (el, options)->
    console.log('loading')
    @$el = el
    @options = _.extend({}, @defaultOptions, options)
    @initialize()

  initialize: ->
    @$el.plupload(@options)