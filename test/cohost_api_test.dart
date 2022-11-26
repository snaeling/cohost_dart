import 'package:cohost_api/cohost.dart';
import 'package:test/test.dart';

// TODO: mocks

void main() {
  Cohost cohost = Cohost();
  test('get posts', () async {
    final res = await cohost.projects.getPosts('vogon');
    expect(res[0].postingProject.handle, 'vogon');
  });

  test('invalid cookie', () async {
    final res = await cohost.user.loggedIn();
    expect(res.loggedIn, false);
  });

  test('tRPC', () async {
    await cohost.posts.test();
  });

  test('getposts', () async {
    await cohost.posts.test();
  });

  test('searchquery', () async {
    await cohost.search.query("test");
  });

  test('tagpagination', () async {
    print(await cohost.posts.htmlTagged("tutorial", DateTime.now(), 20));
  });
}
