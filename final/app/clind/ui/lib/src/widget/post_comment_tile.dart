import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_theme/theme.dart';

class PostCommentTile extends StatelessWidget {
  final String name;
  final String company;
  final String content;
  final DateTime createdAt;
  final VoidCallback onTap;

  const PostCommentTile({
    super.key,
    required this.name,
    required this.company,
    required this.content,
    required this.createdAt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name · $company',
                style: context.textTheme.default14Regular.copyWith(
                  color: context.colorScheme.gray500,
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                content,
                style: context.textTheme.default15Regular.copyWith(
                  color: context.colorScheme.gray200,
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                createdAt.toTimeAgo(),
                style: context.textTheme.default15Regular.copyWith(
                  color: context.colorScheme.gray400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
