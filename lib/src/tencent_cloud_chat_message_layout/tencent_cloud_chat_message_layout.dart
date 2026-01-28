import 'package:flutter/material.dart';
import 'package:tencent_cloud_chat_common/components/components_definition/tencent_cloud_chat_component_builder_definitions.dart';
import 'package:tencent_cloud_chat_common/base/tencent_cloud_chat_state_widget.dart';
import 'package:tencent_cloud_chat_message/src/common/for_desktop/file_tools.dart';
import 'package:tencent_cloud_chat_message/src/tencent_cloud_chat_message_input/desktop/tencent_cloud_chat_message_input_member_mention_panel.dart';
import 'package:tencent_cloud_chat_message/src/tencent_cloud_chat_message_input/desktop/tencent_cloud_chat_message_input_sticker_panel.dart';
import 'package:tencent_cloud_chat_message/src/tencent_cloud_chat_message_layout/special_case/tencent_cloud_chat_message_drop_target.dart';

class TencentCloudChatMessageLayout extends StatefulWidget {
  final MessageLayoutBuilderWidgets widgets;
  final MessageLayoutBuilderData data;
  final MessageLayoutBuilderMethods methods;

  const TencentCloudChatMessageLayout({
    super.key,
    required this.widgets,
    required this.data,
    required this.methods,
  });

  @override
  State<TencentCloudChatMessageLayout> createState() => _TencentCloudChatMessageLayoutState();
}

class _TencentCloudChatMessageLayoutState extends TencentCloudChatState<TencentCloudChatMessageLayout> {
  bool _dragging = false;

  @override
  Widget defaultBuilder(BuildContext context) {
    return Scaffold(
      appBar: widget.widgets.header,
      // resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: widget.widgets.messageListView,
            ),
          ),
          widget.widgets.messageInput,
        ],
      ),
    );
  }
}
