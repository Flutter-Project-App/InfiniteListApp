import 'package:flutter/material.dart';
import 'package:flutter_application/data/blocs/post_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '.././posts.dart';
import 'package:http/http.dart' as http;

import 'posts_list.dart';

class PostsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts'),),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostsList(),
      ),
    );
  }
}
