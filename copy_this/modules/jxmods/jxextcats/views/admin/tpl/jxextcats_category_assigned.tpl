[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

[{ if $readonly }]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="jxextcats_category_assigned">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
[{$oViewConf->getHiddenSid()}]
<input type="hidden" name="cl" value="jxextcats_category_assigned">
<input type="hidden" name="fnc" value="">
<input type="hidden" name="oxid" value="[{ $oxid }]">
<input type="hidden" name="editval[article__oxid]" value="[{ $oxid }]">
<input type="hidden" name="voxid" value="[{ $oxid }]">
<input type="hidden" name="oxparentid" value="[{ $oxparentid }]">
<input type="hidden" name="sorting" value="">
<input type="hidden" name="stable" value="">
<input type="hidden" name="starget" value="">

  <table cellspacing="0" cellpadding="0" border="0" width="98%">

    <tr>
      <td valign="top" class="edittext">
            <strong>[{ oxmultilang ident="DELIVERYSET_MAIN_SELDELIVERYCOST" }]</strong><br />
            <br />
            <table>
                <tr>
                    <td class="listheader">[{ oxmultilang ident="GENERAL_NAME" }]</td>
                    <td class="listheader" align="center">[{ oxmultilang ident="GENERAL_FROM" }] - [{ oxmultilang ident="GENERAL_TILL" }]</td>
                    <td class="listheader">[{ oxmultilang ident="GENERAL_PRICE" }]</td>
                    <td class="listheader">[{* oxmultilang ident="GENERAL_ARTNUM" *}]</td>
                </tr>
                [{foreach from=$aDelDefs item=DelDef }]
                    [{ cycle values="listitem,listitem2" assign="listclass" }]
                    [{ assign var="rownum" value=$rownum+1 }]
                    <tr>
                        <td class="[{ $listclass }]">[{$DelDef.OXTITLE}]</td>
                        <td class="[{ $listclass }]" align="center">[{$DelDef.OXPARAM}] - [{$DelDef.OXPARAMEND}]</td>
                        <td class="[{ $listclass }]">[{$DelDef.OXADDSUM}]</td>
                        <td class="[{ $listclass }]">[{$DelDef.OXADDSUMTYPE}]</td>
                    </tr>
                [{/foreach}]
            </table>

            <br />

      </td>
    <!-- Anfang rechte Seite -->
      <td valign="top" class="edittext" align="left" width="50%">
            <strong>[{ oxmultilang ident="DISCOUNT_LIST_MENUSUBITEM" }]</strong><br />
            <br />
            <table>
                <tr>
                    <td class="listheader">[{ oxmultilang ident="GENERAL_NAME" }]</td>
                    <td class="listheader" align="center">[{ oxmultilang ident="GENERAL_FROM" }] - [{ oxmultilang ident="GENERAL_TILL" }]</td>
                    <td class="listheader" align="center">[{ oxmultilang ident="GENERAL_FROM" }] - [{ oxmultilang ident="GENERAL_TILL" }]</td>
                    <td class="listheader" align="center">[{ oxmultilang ident="GENERAL_FROM" }] - [{ oxmultilang ident="GENERAL_TILL" }]</td>
                    <td class="listheader">[{ oxmultilang ident="DISCOUNT_MAIN_REBATE" }]</td>
                    <td class="listheader">[{* oxmultilang ident="GENERAL_ARTNUM" *}]</td>
                </tr>
                [{foreach from=$aDiscDefs item=DiscDef }]
                    [{ cycle values="listitem,listitem2" assign="listclass" }]
                    [{ assign var="rownum" value=$rownum+1 }]
                    <tr>
                        <td class="[{ $listclass }]">[{$DiscDef.OXTITLE}]</td>
                        <td class="[{ $listclass }]">[{$DiscDef.OXACTIVEFROM}] <br /> [{$DiscDef.OXACTIVETO}]</td>
                        <td class="[{ $listclass }]">[{$DiscDef.OXAMOUNT}] <br /> [{$DiscDef.OXAMOUNTTO}]</td>
                        <td class="[{ $listclass }]">[{$DiscDef.OXPRICE}] <br /> [{$DiscDef.OXPRICETO}]</td>
                        <td class="[{ $listclass }]">[{$DiscDef.OXADDSUM}]</td>
                        <td class="[{ $listclass }]">[{$DiscDef.OXADDSUMTYPE}]</td>
                    </tr>
                [{/foreach}]
            </table>

            <br />

      </td>
    <!-- Ende rechte Seite -->
    </tr>
  </table>

[{include file="bottomnaviitem.tpl"}]

[{include file="bottomitem.tpl"}]
