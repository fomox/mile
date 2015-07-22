// app/models/group.js
// load the things we need
var mongoose = require('mongoose');
var timestamps = require('mongoose-times');


// => group is connected to property - eg. project. 
// => group contains roles. 
// => roles contains capabilites and members.

// property => group => role => capabilities + members

// define the schema for our project model
var groupSchema = mongoose.Schema({

	uuid 	: String, // eg. group-adslkmdas-asdlkamsdlk 

	// roles
	roles : [{ type: mongoose.Schema.Types.ObjectId, ref: 'Role' }],

});

// timestamps plugin
groupSchema.plugin(timestamps);	// adds created and lastUpdated fields automatically

// create the model for groups and expose it to our app
module.exports = mongoose.model('Group', groupSchema);