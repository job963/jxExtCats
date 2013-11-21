
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_category_list_filter
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
    <td valign="top" class="listfilter first" height="20">
        <div class="r1"><div class="b1">&nbsp;</div></div>
    </td>
    <td valign="top" class="listfilter" height="20" align="center">
        <div class="r1"><div class="b1">
        <input class="listedit" type="text" size="5" maxlength="128" name="where[oxcategories][oxsort]" value="[{ $where.oxcategories.oxsort }]">
        </div></div>
    </td>
    <td valign="top" class="listfilter" height="20" align="center">
        <div class="r1"><div class="b1">
            <div style="background-color:#323232; border-radius:3px;height:16px;width:48px;margin-top:2px">
            <a href="Javascript:document.getElementById('oxcategoryparentid').value='';document.search.submit();"><span style="color:#fff;">[{ oxmultilang ident="JXEXTCATS_ALL" }]</span></a>[{*oxrootid*}]
            </div>
        </div></div>
    </td>
    <td valign="top" class="listfilter" height="20" colspan="2">
        <div class="r1"><div class="b1">
        <div class="find">
            <select name="changelang" class="editinput" onChange="Javascript:top.oxid.admin.changeLanguage();">
            [{foreach from=$languages item=lang}]
            <option value="[{ $lang->id }]" [{ if $lang->selected}]SELECTED[{/if}]>[{ $lang->name }]</option>
            [{/foreach}]
            </select>
            <input class="listedit" type="submit" name="submitit" value="[{ oxmultilang ident="GENERAL_SEARCH" }]">
        </div>

        <select id="oxcategoryparentid" name="where[oxcategories][oxparentid]" class="editinput" onChange="Javascript:document.search.submit();">
        [{foreach from=$cattree->aList item=pcat}]
        <option value="[{ $pcat->oxcategories__oxid->value }]" [{ if $pcat->selected}]SELECTED[{/if}]>[{ $pcat->oxcategories__oxtitle->getRawValue() }]</option>
        [{/foreach}]
        </select>

        <input class="listedit" type="text" size="50" maxlength="128" name="where[oxcategories][oxtitle]" value="[{ $where.oxcategories.oxtitle}]">
        </div></div>
    </td>
[{else}]
    [{$smarty.block.parent}]
[{/if}]
