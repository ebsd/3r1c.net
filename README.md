# blog.sh

`blog.sh` is a minimal blog engine in a small shell script. Features:

* Requires only a posix shell, a markdown processor and git
* Handle both blog posts and normal pages
* No boilerplate, just create a markdown file
* Show creation and update timestamps (taken from git history)

See the [blog post](http://www.karl.berlin/blog.html) for more details.

## Requirements

- smu or pandoc
- md2gemini

## Quickstart

* Clone this repository `git clone git@github.com:karlb/karl.berlin.git`
* Put your blog posts as markdown files into `posts`
* Run `./blog.sh` and your posts will show up in `build/index-with-drafts.html`
* Commit posts in git to add timestamps and have them show up in `build/index.html`
* Copy the content of `build` to your webserver, so that other people can read your blog

## Mofify a blog post date

### For an old post

Get the commit date of the file

```
$ git log posts/my-post.md
```

Use the commit hash value.

```
git filter-branch --env-filter \
    'if [ $GIT_COMMIT = 119f9ecf58069b265ab22f1f97d2b648faf932e0 ]
     then
         export GIT_AUTHOR_DATE="Fri Jan 2 21:38:53 2009 +0200"
         export GIT_COMMITTER_DATE="Sat May 19 01:01:01 2007 +0200"
     fi'
```

### For a new post

This is when you commit.

```
git commit --amend --date="Tue May 10 11:02 2022 +0200"
```
