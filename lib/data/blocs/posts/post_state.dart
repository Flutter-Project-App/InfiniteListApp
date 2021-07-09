part of '../post_bloc.dart';

// PostInitital: needs to render a loading indicator while the initial batch of posts are loaded
// PostSuccess: has content to render
// PostFailure: an error has occurred while fetching posts

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  const PostState(
      {this.status = PostStatus.initial,
      this.posts = const <Post>[],
      this.hasReachedMax = false});

  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  // Implemented copyWith to can copy an instance of PostSuccess and update zero
  // or more properties conveniently
  PostState copyWith(
      {PostStatus? status, List<Post>? posts, bool? hasReachedMax}) {
    return PostState(
        status: status ?? this.status,
        posts: posts ?? this.posts,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }

  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
