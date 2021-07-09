import 'package:equatable/equatable.dart';

// Data Model
// Extend Equatable so that can compare Posts

class Post extends Equatable {

  const Post({required this.id, required this.title, required this.body});

  final int id;
  final String title;
  final String body;

  @override
  List<Object> get props => [id, title, body];
}