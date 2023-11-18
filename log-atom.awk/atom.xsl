<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/atom:feed">
	<html version="-//W3C//DTD XHTML 1.1//EN" xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<title><xsl:value-of select="atom:title"/></title>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<meta name="viewport" content="width=device-width" />
			<meta name="color-scheme" content="dark light" />
			<link rel="icon" type="image/svg+xml" href="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIwIiBoZWlnaHQ9IjMyMCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwb2x5Z29uIHBvaW50cz0iMTUwLDEwIDI4MCw4NSAyODAsMjM1IDE1MCwzMTAgMjAsMjM1IDIwLDg1IiBmaWxsPSJub25lIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjQiLz48Y2lyY2xlIGN4PSIxNTAiIGN5PSIxNjAiIHI9IjkwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjYiIGZpbGw9Im5vbmUiLz48Y2lyY2xlIGN4PSIxNTAiIGN5PSI3MCIgcj0iMTAiIGZpbGw9ImJsYWNrIi8+PGNpcmNsZSBjeD0iMTUwIiBjeT0iMTYwIiByPSIyMCIgZmlsbD0iYmxhY2siLz48L3N2Zz4K" />
			<style type="text/css">
			* { box-sizing:border-box; }
			body { font: 1.1rem/1.4 system-ui sans-serif; max-width: 37rem; margin: auto }
			a { color:inherit; }
			pre { white-space:pre-wrap; word-break:break-word; }
			</style>
		</head>
		<body>
		<h1><xsl:value-of select="atom:title"/></h1>
		<p>
			<strong>Ceci est un flux ATOM</strong>.<br />
			Copiez l'adresse suivante dans un lecteur de flux pour vous <strong>inscrire</strong>:<br />
			<code>=&gt; <a>
				<xsl:attribute name="href">
				<xsl:value-of select="atom:link[@rel='self']/@href"/>
				</xsl:attribute>
				<xsl:value-of select="atom:link[@rel='self']/@href"/>
			</a></code> 
		</p>
		<p>Voir aussi : 
		<ul>
			<li><a href="/log" title="liste des articles">la liste des articles</a></li>
			<li><a href="/log/_README_.txt" title="README">des détails sur ce journal</a></li>
			<li><a href="/log/_commentaires_.txt" title="Commentaires">des informations pour commenter les articles</a>.</li>
			<li><a href="/" title="Retour à la page d'accueil">&lt;- Retour à la page d'accueil</a>.</li>
		</ul>
		</p>
		<hr />
		  <xsl:for-each select="atom:entry">
			<xsl:sort select="atom:updated" order="descending"/>
			<div>
			  <h2>
				<a target="_blank">
                  <xsl:attribute name="href">
					<xsl:value-of select="atom:link[@rel='alternate']/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="atom:title"/>
				</a>
			  </h2>
			  <p><em>
				  mis à jour le 
					<xsl:attribute name="datetime">
					  <xsl:value-of select="atom:updated" />
					</xsl:attribute>
					<xsl:value-of select="substring-before(atom:updated,'T')" />
			</em></p>
			  <pre><xsl:value-of select="atom:content" /></pre>
			</div>
			<hr />
          </xsl:for-each>
      </body>
    </html>
</xsl:template>

</xsl:stylesheet>
