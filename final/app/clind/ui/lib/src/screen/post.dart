import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/theme.dart';
import 'package:ui/ui.dart';

class PostScreen extends StatefulWidget {
  final String id;

  const PostScreen({
    super.key,
    required this.id,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.bg2,
      appBar: ClindAppBar(
        backgroundColor: context.colorScheme.bg2,
        context: context,
        leading: const ClindAppBarBackButton(),
        title: Text(
          'Clind',
          style: context.textTheme.poppins18Bold.copyWith(
            color: context.colorScheme.gray300,
          ),
        ),
        centerTitle: false,
      ),
      body: SizedBox.expand(
        child: ColoredBox(
          color: context.colorScheme.darkBlack,
          child: CoreRefreshIndicator(
            onRefresh: () async {},
            indicator: ClindIcon.restartAlt(
              color: context.colorScheme.gray600,
            ),
            child: CoreLoadMore(
              onLoadMore: () async {},
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: ColoredBox(
                      color: context.colorScheme.bg2,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClindProfileTile(
                              imageUrl: '',
                              channel: '설계사',
                              company: '서울건설',
                              createdAt: DateTime.now(),
                              onChannelTapped: () {},
                              onCompanyTapped: () {},
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '안녕하세요',
                              style: context.textTheme.default20SemiBold.copyWith(
                                color: context.colorScheme.gray100,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '반갑습니다',
                              style: context.textTheme.default15Medium.copyWith(
                                color: context.colorScheme.gray200,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ClindCardButton.comment(
                      context,
                      onTap: () {},
                    ),
                  ),
                  SliverList.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => PostCommentTile(
                      name: '공무원Q',
                      company: '경기컴퍼니',
                      content: '정말 안녕하신가요 야근 괜찮으십니까',
                      createdAt: DateTime.now(),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClindChatBottomNavigationBar(
        hintText: '댓글을 남겨주세요.',
        onSend: (value) {},
      ),
    );
  }
}
