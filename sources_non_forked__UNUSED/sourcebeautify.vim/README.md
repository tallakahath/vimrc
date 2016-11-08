sourcebeautify.vim
==================

Beautify your source code in Vim. 

Language support:
- [x] Javascript,CSS,HTML   by [js-beautify](https://github.com/einars/js-beautify)
- [x] JSON  by [jsonlint](https://github.com/zaach/jsonlint)
- [x] XML,SQL  by [vkBeautify](https://github.com/vkiryukhin/vkBeautify)

More language support is well welcomed, your can develop it by pure javascript, see [Customization](#customization) section for more info.


Installation
-------

First, Install dependencies:  

1. [jsruntime.vim](https://github.com/michalliu/jsruntime.vim)  
2. [jsoncodecs.vim](https://github.com/michalliu/jsoncodecs.vim)

Then, Copy __plugin/sourcebeautify__ to __vimfiles/plugin__

**Notice:**

Sourcebeautify is a filetype plugin. By default VIM can't detect `json` filetype automaticly. You can either add following code to your `vimrc` to solve the problem or install [json.vim](http://www.vim.org/scripts/script.php?script_id=1945)

    au BufRead,BufNewFile *.json setf json

Usage
-----

    <Leader>sb

Your \<Leader\> key is often `\`


Customization
-------------

1. jsbeautify options

    Take a look at `beautify-css.run.js`, this file contains following code

        css_beautify(%s);

    `%s` refers to the codes before beautify, the other part is pure javascript, for example
    
        css_beautify(%s,{indent_char:'\t'});

    [javascript beautifier options](https://github.com/beautify-web/js-beautify/blob/v0.4.2/beautify.js), [html beautifier options](https://github.com/beautify-web/js-beautify/blob/v0.4.2/beautify-html.js), [css beautifier options](https://github.com/beautify-web/js-beautify/blob/v0.4.2/beautify-css.js), [jsonlint options](https://github.com/zaach/jsonlint)

2. add more language support

    If you wants this plugin to support cpp file, you should create `beautify-cpp.js` and `beautify-cpp.run.js`.

    These two files should be written by pure javascript, then modify `sourcebeautify.vim` add declaration and alias
    
        " sourcetype that support by this plugin
        let s:beautifiers.supportedSourceType={
        \'javascript':1,
        \'css':1,
        \'html':1
        \}
    
        " sourcetype name alias
        let s:beautifiers.supportedSourceTypeAlias={
        \'javascript':['js'],
        \'html':['xhtml','htm']
        \}

Contributors
-----------
1. __Einar Lielmanis__ - author of  [js-beautify](https://github.com/einars/js-beautify) provides beautifier of `javascript`,`html`,`css` file
2. __Zach Carter__ - author of  [jsonlint](https://github.com/zaach/jsonlint) provides error checker and beautifier of `JSON` file
3. __Vadim Kiryukhin__ - author of  [vkBeautify](https://github.com/vkiryukhin/vkBeautify) provides XML and SQL beautifier
