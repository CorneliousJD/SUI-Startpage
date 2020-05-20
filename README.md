Note: this was forked for the purpose of triggering builds at dockerhub for an unRAID docker container template.
I've also now started making slight modifications of this per request of users and some of my own findings as well.

## SUI
*a startpage for your server and / or new tab page*

![screenshot](https://i.imgur.com/J4d7Q3D.png)

[More screenshots](https://imgur.com/a/FDVRIyw)

#### Changing color themes
 - Click the options button on the left bottom

#### Apps
Add your apps by editing apps.json:

    {
	    "apps" : [
		    {"name":"Name of app 1","url":"https://sub1.example.com","icon":"icon-name"},
		    {"name":"Name of app 2","url":"https://sub2.example.com","icon":"icon-name"}
	    ]
    }

Please note:

 - You must start URLs with http:// or https://
 - No `,` at the end of the last app's line
 - Find the names  of icons to use at [Material Design Icons](https://materialdesignicons.com/)

#### Bookmarks
Add your bookmarks by editing links.json:

```
{  
   "bookmarks":[  
      {  
         "category":"Category1",
         "links":[  
            {  
               "name":"Link1",
               "url":"http://example.com"
            },
            {  
               "name":"Link2",
               "url":"http://example.com"
            }
         ]
      },
      {  
         "category":"Category2",
         "links":[  
            {  
               "name":"Link1",
               "url":"http://example.com"
            },
            {  
               "name":"Link2",
               "url":"http://example.com"
            }
         ]
      }
   ]
}
```
Add names for the categories you wish to define and add the bookmarks for each category.

Please note:

 - You must start URLs with http:// or https://
 - No `,` at the end of the last bookmark in a category and at the end of the last category

#### Search Providers
Add your providers by editing assets/js/search.js starting at line 59:

Here is an example of one added with /z as the triggeer, and searching a test domain.
You will also want to edit providers.json to show your new provider in the web interface as well.

```
function search(text) {
    var option = text.substr(1, text.indexOf(' ') - 1) || text.substr(1);
    var subtext = text.substr(2 + option.length);
    if (text[0] === '/') {
        if (text.indexOf(' ') > -1) {
            switch (option) {
                case "z":
                    window.location = "https://www.testdomaon.com/search/all/" + subtext;
                    break;
		case "am":
                    window.location = "https://www.allmusic.com/search/all/" + subtext;
                    break;
```
Add names for the categories you wish to define and add the bookmarks for each category.

#### Color themes
These can be added or customized in the themer.js file. When changing the name of a theme or adding one, make sure to edit this section in index.html accordingly:

```
    <section  class="themes">
```


