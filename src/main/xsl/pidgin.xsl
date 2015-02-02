<?xml version="1.0"?>
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
	<xsl:output method="text" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<xsl:param name="projectName"/>
		<xsl:param name="currentYear"/>
		<xsl:param name="projectOrganizationName"/>
		<xsl:param name="projectDescription"/>
		<xsl:param name="projectVersion"/>
		<xsl:param name="projectOrganizationUrl"/>
		<xsl:text>#&#10;</xsl:text>
		<xsl:copy-of select="concat('# ', $projectName, '&#10;')"/>
		<xsl:text>#&#10;</xsl:text>
		<xsl:copy-of select="concat('# Copyright (C) ', $currentYear, ' ', $projectOrganizationName, '&#10;')"/>
		<xsl:text>#&#10;</xsl:text>
		<xsl:text># This program is free software: you can redistribute it and/or modify&#10;</xsl:text>
		<xsl:text># it under the terms of the GNU General Public License as published by&#10;</xsl:text>
		<xsl:text># the Free Software Foundation, either version 3 of the License, or&#10;</xsl:text>
		<xsl:text># (at your option) any later version.&#10;</xsl:text>
		<xsl:text>#&#10;</xsl:text>
		<xsl:text># This program is distributed in the hope that it will be useful,&#10;</xsl:text>
		<xsl:text># but WITHOUT ANY WARRANTY; without even the implied warranty of&#10;</xsl:text>
		<xsl:text># MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#10;</xsl:text>
		<xsl:text># GNU General Public License for more details.&#10;</xsl:text>
		<xsl:text>#&#10;</xsl:text>
		<xsl:text># You should have received a copy of the GNU General Public License&#10;</xsl:text>
		<xsl:text># along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#10;</xsl:text>
		<xsl:text>#&#10;</xsl:text>
		<xsl:text>&#10;</xsl:text>
		<xsl:copy-of select="concat('Name=', $projectName, '&#10;')"/>
		<xsl:copy-of select="concat('Description=', $projectDescription, ' (V', $projectVersion, ')&#10;')"/>
		<xsl:text>Icon=theme.png&#10;</xsl:text>
		<xsl:copy-of select="concat('Author=', $projectOrganizationName, ' (', $projectOrganizationUrl, ')&#10;')"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>[default]&#10;</xsl:text>
		<xsl:for-each select="smileys/smiley">
			<xsl:if test="@hidden = 'true'">
				<xsl:text>! </xsl:text>
			</xsl:if>
			<xsl:value-of select="@file"/> 
			<xsl:for-each select="code">
				<xsl:text> </xsl:text>
				<xsl:value-of select="."/>
			</xsl:for-each>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
		<xsl:text>&#10;</xsl:text>
	</xsl:template>
</xsl:stylesheet>
