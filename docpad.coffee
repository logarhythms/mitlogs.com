# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	plugins:
	    stylus:
		    stylusLibraries:
                jeet: true
                rupture: true
        cleanurls:
            static: true
    collections:
        posts: ->
            @getCollection('html').findAllLive({homepage:true}).on "add", (model) ->
                model.setMetaDefaults({layout:'default'})
}

# Export the DocPad Configuration
module.exports = docpadConfig
