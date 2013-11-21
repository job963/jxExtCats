
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_category_list_item
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
    [{ if $listitem->blacklist == 1}]
        [{assign var="listclass" value=listitem3 }]
    [{ else}]
        [{assign var="listclass" value=listitem$blWhite }]
    [{ /if}]
    [{ if $listitem->getId() == $oxid }]
        [{assign var="listclass" value=listitem4 }]   [{*document.forms['jxexcptns'].elements['parentvarname'].value =*}]
    [{ /if}]
    <td valign="top" class="[{ $listclass}][{ if $listitem->oxcategories__oxactive->value == 1}] active[{/if}]"><div class="listitemfloating">&nbsp;</div></td>
    <td valign="top" class="[{ $listclass}]" height="15" align="center"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{ $listitem->oxcategories__oxid->value}]');" class="[{ $listclass}]">[{ $listitem->oxcategories__oxsort->value }]</a></div></td>
    <td valign="top" class="[{ $listclass}]" height="15">&nbsp;<a href="Javascript:document.getElementById('oxcategoryparentid').value='[{ $listitem->oxcategories__oxid->value }]';document.search.submit();"><nobr>&nbsp;[{ oxmultilang ident="JXEXTCATS_THISLINK" }]&nbsp;</nobr></a></td>
    <td valign="top" class="[{ $listclass}]" height="15"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{ $listitem->oxcategories__oxid->value}]');" class="[{ $listclass}]">[{ $listitem->oxcategories__oxtitle->value }]</a></div></td>
    <td class="[{ $listclass}]">
    [{if !$readonly }]

        [{ if $listitem->oxcategories__oxleft->value + 1 == $listitem->oxcategories__oxright->value }]
          <a href="Javascript:top.oxid.admin.deleteThis('[{ $listitem->oxcategories__oxid->value }]');" class="delete" id="del.[{$_cnt}]" [{include file="help.tpl" helpid=item_delete}]></a>
        [{/if}]
    [{/if}]
    </td>
[{else}]
    [{$smarty.block.parent}]
[{/if}]
