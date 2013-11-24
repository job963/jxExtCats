<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class jxextcats_category_assigned extends oxAdminView
{
    protected $_sThisTemplate = "jxextcats_category_assigned.tpl";

    /**
     * Loads article inventory information, passes it to Smarty engine and
     * returns name of template file "article_jxinventory.tpl".
     *
     * @return string
     */
    public function render()
    {
        $myConfig = $this->getConfig();

        parent::render();
        $oSmarty = oxUtilsView::getInstance()->getSmarty();
        $oSmarty->assign( "oViewConf", $this->_aViewData["oViewConf"]);
        $oSmarty->assign( "shop", $this->_aViewData["shop"]);
        //$iLang = $this->getLanguage();
        $iLang = $this->_iEditLang;

        $this->_aViewData["edit"] = $oArticle = oxNew( "oxarticle");

        $soxId = oxConfig::getParameter( "oxid");
        if ( $soxId != "-1" && isset( $soxId)) {
            $oDb = oxDb::getDb( oxDB::FETCH_MODE_ASSOC );

            $sDelTable = getViewName( 'oxdelivery', $iLang );
            $sO2DTable = getViewName( 'oxobject2delivery', $iLang );

            $sSql = "SELECT d.oxtitle, d.oxparam, d.oxparamend, d.oxaddsum, d.oxaddsumtype "
                    . "FROM {$sDelTable} d, {$sO2DTable} o2d "
                    . "WHERE "
                        . "d.oxid = o2d.oxdeliveryid "
                        . "AND o2d.oxobjectid = '{$soxId}'";

            $rs = $oDb->Execute($sSql);
            $aDelDefs = array();
            while (!$rs->EOF) {
                array_push($aDelDefs, $rs->fields);
                $rs->MoveNext();
            }

            $sDisTable = getViewName( 'oxdiscount', $iLang );
            $sO2DTable = getViewName( 'oxobject2discount', $iLang );

            $sSql = "SELECT d.oxtitle, oxactivefrom, oxactiveto, oxamount, oxamountto, oxprice, oxpriceto,oxaddsum, oxaddsumtype 
FROM {$sDisTable} d, {$sO2DTable} o2d 
WHERE 
d.oxid = o2d.oxdiscountid
AND o2d.oxobjectid= '{$soxId}'";
//echo $sSql;
            $rs = $oDb->Execute($sSql);
            $aDiscDefs = array();
            while (!$rs->EOF) {
                array_push($aDiscDefs, $rs->fields);
                $rs->MoveNext();
            }

            $oSmarty->assign("aDelDefs", $aDelDefs);
            $oSmarty->assign("aDiscDefs", $aDiscDefs);
        }

        return $this->_sThisTemplate;
    }

    
}
