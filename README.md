## Cohost_Dart

WIP Dart wrapper for the [cohost.org](https://cohost.org/) API. Contains an interface for the public cohost.org API, data models for various API objects, and an easy way to make authenticated HTTP requests.

Being developed for and implemented in [crescent](https://github.com/snaeling/crescent)

## Get Started
Create a new instance with `Cohost()`, you can log in with `Cohost.login()` which accepts either a cookie or email and password.

All endpoints are accessed through the Cohost class, here are the current (probably) functioning  ones:
### `Cohost.posts`
* getPost(id)
* getSinglePost(handle, id)
    * Returns a post and any comments, including shared comments.
* getProfilePost(page, handle)
* htmlDashboard(timestamp?, skip?)
* htmlTagged(tag, timestamp?, skip?)

### `Cohost.projects`
* getPosts(handle, page?)
* getPostsByTag(project, tag, page?)
* getProject(handle)
    * Does not return a full project, but posts, their share tree, and comments provide full project information.
* getFollowingState(handle)

### `Cohost.search`
* query(query)
    * Returns both profile and tag results.

### `Cohost.user`
* login(cookie?, email?, password?)
* loggedIn()
* userState(handle)

You can also use `Cohost.http` to make HTTP requests. It includes a tRPC helper. All requests will be authenticated if you have provided valid authentication data.

### `Cohost.http`
* getCookie()
* setCookie(cookie)
* get(uri?, path, queryParameters, raw = false)
* post(path, data, queryParameters, raw = false)
* tRPC(methodList, batch)

## What's implemented, what's missing?
A lot of the public API has yet to be implemented here. It will be implemented as progress on [crescent](https://github.com/snaeling/crescent) progresses. Wary of the API being exploited, and out of respect for cohost.org staff and users,  not everything technically possible will be implemented.

### What's implemented
Most of what has been implemented is feed consumption and search features. You can access most(?) feeds of the site, including your dashboard, tags and projects. 

Dashboard and tag search have been implemented by parsing the `__COHOST_LOADER_STATE__` tag in a HTML response. 

Refer to the list above for a complete list.

### What's missing
No creation features have been implemented, most will be when I need to add them to crescent. Not everything will be added, as per above.



## Don't abuse the API
eggbug will never forgive you!
