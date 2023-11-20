#!/bin/sh

# Configuration
DOMAIN="http://3r1c.net"
TITLE="3r1c.net"
DESCRIPTION="Un blog basé sur des fichiers textes seulement."
COPYRIGHT=""
# RW_DIR="_posts/"
POST_DIR="posts/"
TTL="60"
AUTHOR="3r1c"
TIME=$(date +"%T %Z")

# Advanced Setting: Automatically wrap plain text files at 72 character limit
# Detailed documentation: https://git.sr.ht/~bt/shinobi
#
# for i in $(find $RW_DIR -type f); do cp $i $POST_DIR ; done
# for i in $(find $POST_DIR -type f); do fold -s -w 72 $i > $i.temp; mv $i.temp $i ; done

echo "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
<?xml-stylesheet href=\"rss.xsl\" type=\"text/xsl\"?>
<rss version=\"2.0\">
  <channel>
    <title>$TITLE</title>
    <link>$DOMAIN</link>
    <description>$DESCRIPTION</description>
    <copyright>$COPYRIGHT</copyright>
    <ttl>$TTL</ttl>";

for file in $POST_DIR*; do

echo "<item>
<pubDate>$(head -n 2 $file | tail -n 1) $TIME</pubDate>
  <category>$(date -d "$(head -n 2 $file | tail -n 1)" +"%Y/%m/%d/%u")</category>
  <title>$(head -n 1 $file)</title>
  <link>$DOMAIN/$file</link>
  <description>
    <![CDATA[
<pre style='border: 0; white-space: pre-wrap; word-break: break-word;'>$(tail -n +4 $file | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g')</pre>]]>
  </description>
  <author>$AUTHOR</author>
  <guid>$DOMAIN/$file</guid>
  </item>";
done

echo "  </channel>
</rss>";
