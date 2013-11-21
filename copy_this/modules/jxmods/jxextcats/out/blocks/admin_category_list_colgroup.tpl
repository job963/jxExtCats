
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_category_list_colgroup
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
    <col width="4%">
    <col width="10%">
    <col width="7%">
    <col width="80%">
    <col width="1%">
[{else}]
    [{$smarty.block.parent}]
[{/if}]
