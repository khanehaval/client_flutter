import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatHeader extends StatelessWidget {
  final bool isSelecting;
  final bool isDeletingHistory;
  final Set<int> selectedMessages;
  final int totalMessages;
  final VoidCallback onMorePressed;
  final VoidCallback onCallPressed;
  final VoidCallback onDeleteSelected;
  final VoidCallback onClosePressed;
  final VoidCallback onNavigateBack;
  final VoidCallback onSelectAllToggle;

  const ChatHeader({
    Key? key,
    required this.isSelecting,
    required this.isDeletingHistory,
    required this.selectedMessages,
    required this.totalMessages,
    required this.onMorePressed,
    required this.onCallPressed,
    required this.onDeleteSelected,
    required this.onClosePressed,
    required this.onNavigateBack,
    required this.onSelectAllToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: onMorePressed,
              ),
              if (!isSelecting && !isDeletingHistory)
                IconButton(
                  onPressed: onCallPressed,
                  icon: SvgPicture.asset(
                    'assets/images/Call_chat.svg',
                    width: 19,
                    height: 19,
                  ),
                ),
              if (!isDeletingHistory) const SizedBox(width: 10),
              if (isSelecting || isDeletingHistory) ...[
                Row(
                  children: [
                    GestureDetector(
                      onTap: onSelectAllToggle,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedMessages.length == totalMessages
                              ? Colors.red
                              : Colors.transparent,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: onDeleteSelected,
                      child: SvgPicture.asset(
                        'assets/images/delete_chat.svg',
                        width: 19,
                        height: 19,
                      ),
                    ),
                    const SizedBox(width: 20),
                    if (isSelecting)
                      InkWell(
                        onTap: onNavigateBack,
                        child: SvgPicture.asset(
                          'assets/images/Left_Arrow_Alt.svg',
                          width: 19,
                          height: 19,
                        ),
                      ),
                  ],
                )
              ],
            ],
          ),
          Row(
            children: [
              if (isSelecting || isDeletingHistory)
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: onClosePressed,
                )
              else
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/images/consultant_list_moshaver.svg",
                      width: 55,
                      height: 55,
                    ),
                    Positioned(
                      left: 84,
                      top: 2,
                      child: Image.asset(
                        'assets/images/Ellipse 222.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
