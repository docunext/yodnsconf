<!--
Program: YoDNSConf
Component: zones_export_csv.txt.xsl
Copyright: Savonix Corporation
Author: Albert L. Lash, IV
License: Gnu Affero Public License version 3
http://www.gnu.org/licenses

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program; if not, see http://www.gnu.org/licenses
or write to the Free Software Foundation,Inc., 51 Franklin Street,
Fifth Floor, Boston, MA 02110-1301  USA
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8" omit-xml-declaration="yes"/>
<xsl:template match="/">
<xsl:for-each select="//records_get_all_www/records_get_all_www">
    <xsl:text>  local-data: "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>.</xsl:text>
    <xsl:value-of select="substring(origin,0,string-length(origin))"/>
    <xsl:text> A 192.168.8.2"
</xsl:text>
</xsl:for-each>
<xsl:text>  local-data: "www-b.evenserver.com A 192.168.8.2"
  local-data: "www-abc.evenserver.com A 192.168.8.2"
  local-data: "www-abch.evenserver.com A 192.168.8.2"
  local-data: "www-02.evenserver.com A 192.168.8.2"
  local-data: "www-01.evenserver.com A 192.168.8.2"</xsl:text>
</xsl:template>
</xsl:stylesheet>
