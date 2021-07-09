part of '../post_bloc.dart';

// At a high level, PostBloc will be responding to user input (scrolling) and
// fetching more posts for the presentation layer to display them.

abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostFetched extends PostEvent {}
