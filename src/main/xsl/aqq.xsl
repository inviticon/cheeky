<?xml version="1.0" encoding="UTF-8"?>
<!--
  #%L
  Cheeky
  %%
  Copyright (C) 2014 - 2015 inviticon
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as
  published by the Free Software Foundation, either version 3 of the
  License, or (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/gpl-3.0.html>.
  #L%
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:param name="projectName"/>
		<xsl:param name="currentYear"/>
		<xsl:param name="projectOrganizationName"/>
		<xsl:param name="projectDescription"/>
		<xsl:param name="projectVersion"/>
		<xsl:param name="projectOrganizationUrl"/>
		<xsl:text>/*&#13;&#10;</xsl:text>
		<xsl:copy-of select="concat(' * ', $projectName, '&#13;&#10;')"/>
		<xsl:text> *&#13;&#10;</xsl:text>
		<xsl:copy-of select="concat(' * Copyright (C) ', $currentYear, ' ', $projectOrganizationName, '&#13;&#10;')"/>
		<xsl:text> *&#13;&#10;</xsl:text>
		<xsl:text> * This program is free software: you can redistribute it and/or modify&#13;&#10;</xsl:text>
		<xsl:text> * it under the terms of the GNU General Public License as published by&#13;&#10;</xsl:text>
		<xsl:text> * the Free Software Foundation, either version 3 of the License, or&#13;&#10;</xsl:text>
		<xsl:text> * (at your option) any later version.&#13;&#10;</xsl:text>
		<xsl:text> *&#13;&#10;</xsl:text>
		<xsl:text> * This program is distributed in the hope that it will be useful,&#13;&#10;</xsl:text>
		<xsl:text> * but WITHOUT ANY WARRANTY; without even the implied warranty of&#13;&#10;</xsl:text>
		<xsl:text> * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#13;&#10;</xsl:text>
		<xsl:text> * GNU General Public License for more details.&#13;&#10;</xsl:text>
		<xsl:text> *&#13;&#10;</xsl:text>
		<xsl:text> * You should have received a copy of the GNU General Public License&#13;&#10;</xsl:text>
		<xsl:text> * along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#13;&#10;</xsl:text>
		<xsl:text> */&#13;&#10;</xsl:text>
		<xsl:text>&#13;&#10;</xsl:text>
		<xsl:copy-of select="concat('Name    = &quot;', $projectName, '&quot;&#13;&#10;')"/>
		<xsl:copy-of select="concat('Author  = &quot;', $projectOrganizationName, ' (', $projectOrganizationUrl, ')&quot;&#13;&#10;')"/>
		<xsl:copy-of select="concat('Date    = &quot;', $currentYear, '&quot;&#13;&#10;')"/>
		<xsl:copy-of select="concat('Version = &quot;', $projectVersion, '&quot;&#13;&#10;')"/>
		<xsl:text>&#13;&#10;</xsl:text>
		<xsl:for-each select="smileys/smiley">
			<xsl:copy-of select="concat('Smiley = &quot;', @file, '&quot;, &quot;')"/>
			<xsl:for-each select="code">
				<xsl:if test="position() &gt; 1">
					<xsl:text> </xsl:text>
				</xsl:if>
				<xsl:copy-of select="."/>
			</xsl:for-each>
			<xsl:copy-of select="concat('&quot;, &quot;', @file, '&quot;&#13;&#10;')"/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

