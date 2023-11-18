    #!/usr/bin/awk -f
    # Create an atom feed from a list of plain text files.
    # First line of a post is title
    # Second line is date formatted %Y-%m-%dT%TZ
    # CHANGELOG : 
    # 2022-05-19 : switch back to using variables -v but set defaults. add examples. 
    # 2023-07-08 : remove useless empty lines at top of content, remove leading "#" in titles
     
     
    BEGIN {
    	if ( ARGC != 2 ) { usage() } # check we have ARGV[1]
     
    	# if the user didn't specify variables, use defaults
    	if ( protocol == "" ) { protocl = "http"}
    	if ( domain == "" ) { domain = "domain.tld"}
    	if ( feedurl == "" ) { feedurl = protocol domain "/" ARGV[1] "/atom.xml" }
    	if ( author == "" ) { author = "john_doe" }
    	if ( email == "" ) { email = author "@" domain }
    	if ( feedtitle == "" ) { feedtitle = "my amazing blog" }
     
    	# command to list all posts. ARGV[1] is replaced by directory given as arg
    	if ( cmd == "" ) {
    		cmd = "find " ARGV[1] " -name '*.txt' -maxdepth 1 -a ! -name '_*'  | sort -r"
    	}
     
    	# header
    	print  "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
    	if ( xsl != "") {
    		printf	"<?xml-stylesheet href=\"%s\" type=\"text/xsl\"?>", xsl
    	}
    	print  "<feed xmlns=\"http://www.w3.org/2005/Atom\">"
    	printf "<id>%s://%s/%s/</id>\n", protocol, domain, ARGV[1]
    	printf  "<title>%s</title>\n", feedtitle
    	printf "<link rel=\"self\" type=\"application/atom+xml\" href=\"%s\" />\n",
    		feedurl
    	printf "<author>\n<name>%s</name>\n<email>%s</email>\n</author>\n",
    		author, email
     
    	# let's go
    	n = 0
    	feed_updated=strftime("%Y-%m-%dT%TZ", systime())
    	printf "<updated>%s</updated>\n", feed_updated
     
    	while (( cmd | getline post ) == 1 ) {
    		if ((max > 0) && (n > max)) { break }
     
    		# get first line : title
    		if ((getline title < post) != 1) { continue }
    		# remove leading "#" if any
    		sub("^# +?", "", title)
    		# get second line : pubdate
    		if ((getline pubdate < post) != 1) { continue }
     
    		link = "/" post
     
    		print "<entry>"
    		printf "<title type=\"text\">%s</title>\n", title
    		printf "<id>%s://%s%s</id>\n", protocol, domain, link
    		printf "<updated>%s</updated>\n", pubdate
    		printf "<link rel=\"alternate\" type=\"text\" "
    		printf "href=\"%s://%s%s\" />\n", protocol, domain, link
    		printf "<content type=\"text\">"
    		printf "<![CDATA["
    		# print content
    		# if third line is empty, skip ti
    		while ((getline line < post ) == 1 ) {
    			gsub("]]>", "]]]]><![CDATA[>", line);
    			print line
    		}
    		close(post)
    		print "]]>"
    		print "</content>"
    		print "</entry>"
    		n++
    	}
    	close(cmd)
    }
     
    END {
    	print "</feed>"
    }
     
    function usage() {
    	printf "usage : awk -f atom.awk -v protocol="https" -v domain=\"domain.tld\" -v author=\"batman\" -v feedtitle=\"gotham's log\" posts/\n" -v xsl "/path/to/file/on/server.xsl posts/"
    	exit 1
    }


