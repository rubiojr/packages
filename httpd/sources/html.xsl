<?xml version='1.0'?>

<!-- This file wraps around the DocBook HTML XSL stylesheet to customise
   - some parameters; add the CSS stylesheet, etc.
 -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/docbook.xsl"/>

<xsl:variable name="html.stylesheet">migration.css</xsl:variable>

<!-- add class="programlisting" attribute on the <pre>s from
  <programlisting>s so that the CSS can style them nicely. -->
<xsl:attribute-set name="shade.verbatim.style">
  <xsl:attribute name="class">programlisting</xsl:attribute>
</xsl:attribute-set>

<!-- do generate variablelist's as tables -->
<xsl:variable name="variablelist.as.table" select="1"/>

<xsl:variable name="section.autolabel" select="1"/>

</xsl:stylesheet>
