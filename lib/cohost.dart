/// An API wrapper to access the unofficial cohost.org API through dart.
///
/// Respect the staff and users of cohost.org when using this library, and keep
/// in mind the unofficial nature of both this wrapper and the live API.
/// Breaking changes could occur at any time.
///
/// To get started, create a new [Cohost] instance, and consider logging in
/// with the `user.login` method.
///
/// This API wrapper tries to maintain the original structure of the live API
/// as well as possible, with some exceptions which are made for the sake
/// of convenience. As such, endpoints are accessible through the following
/// [Cohost] fields:
///
/// - `posts` - Used to get and interact with posts.
/// - `projects` - Used to get and interact with user pages.
/// - `user` -  Handles authentication, user details, and most authenticated
/// requests.
///
/// If you would like to make tRPC requests, you can us the tRPC builder
/// accessible through the `trpc` field.
///
/// The public Cohost API is quite barebones and not all endpoints are supported
/// in a measure to mitigate potential misuse of the API. Some endpoints which
/// return an unsatisfactory response are replaced with tRPC requests. The
/// method used to obtain a home feeds and projects is through parsing raw HTML,
/// and is thus more expensive than other requests.
///
/// Additionally, the user can make authenticated HTTP requests using
/// the [HttpClient] instance within [Cohost]. You can access this instance
/// through the `http` field. The [HttpClient] class contains a wrapper around
/// the http package that can be accessed through methods such as `postCall` and
/// `getCall`. The tRPC builder can also be accessed through this class.
///
/// #### Models
/// This library also exports the data classes used to represent the many
/// parts of cohost. These do not require [Cohost] to be initialised and can
/// be accessed as is. Each data class supports JSON serialization.
///
/// These models also expose their helpful enums like AvatarShape and Flags.
library cohost;

export 'src/models/_models.dart';
export 'src/cohost.dart';
export 'src/exceptions/exceptions.dart';
