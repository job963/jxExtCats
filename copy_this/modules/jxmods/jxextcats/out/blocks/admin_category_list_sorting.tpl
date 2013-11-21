
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_category_list_sorting
  *  in file 
  *      article_extend.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]
    
[{assign var="oConfig" value=$oViewConf->getConfig()}]
    
[{ if $oConfig->getConfigParam("sJxExtCatsShowCategoryList") }]
    <td class="listheader first" height="15" align="center"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxcategories', 'oxactive', 'asc');document.search.submit();" class="listheader">[{ oxmultilang ident="GENERAL_ACTIVTITLE" }]</a></td>
    <td class="listheader" height="15" align="center"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxcategories', 'oxsort', 'asc');document.search.submit();" class="listheader">[{ oxmultilang ident="GENERAL_SORT" }]</a></td>
    <td class="listheader" height="15">[{ oxmultilang ident="JXEXTCATS_GOTO" }]</td>
    <td class="listheader" height="15" colspan="2"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxcategories', 'oxtitle', 'asc');document.search.submit();" class="listheader">[{ oxmultilang ident="GENERAL_TITLE" }]</a></td>
[{else}]
    [{$smarty.block.parent}]
[{/if}]
