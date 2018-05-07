/**
 * @license Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

 CKEDITOR.editorConfig = function( config ) {
	config.toolbarGroups = [
	    { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
	    { name: 'styles', groups: [ 'styles' ] },
	    { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
	    { name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
	    { name: 'forms', groups: [ 'forms' ] },
	    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
	    { name: 'paragraph', groups: [ 'align', 'list', 'indent', 'blocks', 'bidi', 'paragraph' ] },
	    { name: 'links', groups: [ 'links' ] },
	    { name: 'insert', groups: [ 'insert' ] },
	    { name: 'colors', groups: [ 'colors' ] },
	    { name: 'tools', groups: [ 'tools' ] },
	    { name: 'others', groups: [ 'others' ] },
	    { name: 'about', groups: [ 'about' ] }
	];

	config.removeButtons = 'Source,Save,NewPage,Preview,Print,Templates,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,CopyFormatting,Table,Iframe,About';
	};

