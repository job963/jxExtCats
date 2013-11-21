<?php
/*
 *    This file is part of the module jxExtCats for OXID eShop Community Edition.
 *
 *    OXID eShop Community Edition is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    OXID eShop Community Edition is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with OXID eShop Community Edition.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      https://github.com/job963/jxExtCats
 * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
 * @copyright (C) Joachim Barthel 2012-2013
 * 
 */

class jxextcats_oxcategory extends oxcategory 
{

    public function jxGetAllAttributes()
    {
        
        $iLang = $this->getLanguage();
        
        $aAttTable = getViewName( 'oxattribute', $iLang );
        $aArtTable = getViewName( 'oxarticles', $iLang );
        $aCatTable = getViewName( 'oxcategories', $iLang );
        $sO2ATable = getViewName( 'oxobject2attribute', $iLang );
        $sO2CTable = getViewName( 'oxobject2category', $iLang );
        $sC2ATable = getViewName( 'oxcategory2attribute', $iLang );
        
        $sSql = "SELECT a.oxid, a.oxtitle, ("
                    . "SELECT count(*) "
                    . "FROM $aArtTable ia, $sO2ATable o2a, $sO2CTable o2c "
                    . "WHERE "
                        . "ia.oxid = o2a.oxobjectid "
                        . "AND ia.oxid = o2c.oxobjectid "
                        . "AND o2c.oxcatnid = '{$this->oxcategories__oxid->value}' "
                        . "AND o2a.oxattrid = a.oxid "
                    . ") AS oxused "
                    . "FROM $aCatTable c, $sC2ATable c2a, $aAttTable a "
                    . "WHERE "
                        . "c.oxid = '{$this->oxcategories__oxid->value}' "
                        . "AND c.oxid = c2a.oxobjectid "
                        . "AND a.oxid = c2a.oxattrid "
                    . "ORDER BY a.oxtitle ";

        $rs = oxDb::getDb(true)->Execute($sSql);
        $aAttributes = array();
        while (!$rs->EOF) {
            $aAttributes[] = array('oxid'=>$rs->fields[0], 'oxtitle'=>$rs->fields[1], 'oxused'=>$rs->fields[2]);
            $rs->MoveNext();
        }
        
        return $aAttributes;
    }

    
    
    public function jxGetAllArticles()
    {
        
        $iLang = $this->getLanguage();
        
        $aArtTable = getViewName( 'oxarticles', $iLang );
        $aCatTable = getViewName( 'oxcategories', $iLang );
        $sO2CTable = getViewName( 'oxobject2category', $iLang );
        
        $sSql = "SELECT a.oxartnum, a.oxtitle "
                    . "FROM $aArtTable a, $aCatTable c, $sO2CTable o2c "
                    . "WHERE "
                        . "a.oxid = o2c.oxobjectid "
                        . "AND c.oxid = o2c.oxcatnid "
                        . "AND c.oxid = '{$this->oxcategories__oxid->value}' "
                    . "ORDER BY a.oxtitle ";

        $rs = oxDb::getDb(true)->Execute($sSql);
        $aArticles = array();
        while (!$rs->EOF) {
            $aArticles[] = array('oxartnum'=>$rs->fields[0], 'oxtitle'=>$rs->fields[1]);
            $rs->MoveNext();
        }
        
        return $aArticles;
    }
    
}

?>