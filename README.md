# jxExtArts
OXID eShop Admin Module for Extended Category Editing

I've tried to make all changes by overwriting the predefined blocks. But unfortunately, in the file category_main.tpl were no blocks 
on the right side defined. And in category_list.tpl were blocks with wrong names defined. Therefore you have to overwite these two files 
(but make a backup before you da that)

The settings are allowing you to choose which of the extension you want to use.

### Features

#### Settings

The new navigation column in the list of categories can be enabled and disabled
The display of the assigned articles and attributes can be individually enabled and disabled

#### List / Table

A new column is added to the list. The links in this column allows to filter by the choosen category (the same as when you select this 
category in the dropdown list, but faster). The "All" button at the top navigates you back to the root.

#### Main Tab

Two blocks were added to the right side. The first one shows all articles assigned to the selected category. If there are more than 
10 articles a scrollbar will be displayed. 
The second block shows all assigned attributes. Attributes which are used for articles will be shown in bold, not used in italic style.

### Example Screenshots

![Article_Main](https://raw.github.com/job963/jxExtCats/master/docs/img/jxExtCats-List.png)

![Article_Main](https://raw.github.com/job963/jxExtCats/master/docs/img/jxExtCats-Main.png)
