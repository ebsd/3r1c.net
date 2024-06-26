<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title><xsl:value-of select="/rss/channel/title"/></title>
                <meta charset="UTF-8" />
                <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
                <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no" />
                <style>
                    pre{
                        margin:0;
                        white-space: pre-wrap;
                        word-break: break-word;
                    }
                    .date{
                        margin-top: 1em;
                        overflow: hidden;
                        white-space: nowrap;
                        width: 16ch;
                    }
                </style>
            </head>
            <body>
                <pre><xsl:value-of select="/rss/channel/title"/></pre>
		<pre><xsl:value-of select="/rss/channel/description"/></pre>
                <xsl:for-each select="/rss/channel/item">
                    <xsl:sort select="category" order="descending"/>
                        <pre class="date"><xsl:value-of select="pubDate" /></pre>
                        <pre><xsl:value-of select="title"/></pre>
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                            <pre><xsl:value-of select="link"/></pre>
                        </xsl:element>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
