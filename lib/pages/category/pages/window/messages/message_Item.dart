import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/messages.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MessageItem extends StatelessWidget {
  final String time;
  final String name;
  final String message;
  final int unreadCount;
  final bool isSent;

  const MessageItem({
    Key? key,
    required this.time,
    required this.name,
    required this.message,
    this.unreadCount = 0,
    this.isSent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const Messages());
      },
      child: Container(
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 3,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            _buildTimeColumn(),
            Expanded(child: _buildMessageInfo()),
            _buildAvatar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          time,
          style: const TextStyle(
            color: Color(0xFFA5A5A5),
            fontSize: 10,
            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          ),
        ),
        const SizedBox(height: 5),
        if (isSent)
          const Icon(
            Icons.check,
            color: Color.fromRGBO(183, 183, 183, 1),
            size: 16,
          )
        else if (unreadCount > 0)
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '$unreadCount',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildMessageInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Color(0xFF303030),
              fontSize: 14,
              fontFamily: 'Aban Bold',
            ),
          ),
          const SizedBox(height: 5),
          Text(
            message,
            style: const TextStyle(
              color: Color(0xFFA5A5A5),
              fontSize: 12,
              fontFamily: MAIN_FONT_FAMILY_LIGHT,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(width: 0.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SvgPicture.asset(
              'assets/images/person_avatar_chat.svg',
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: Color.fromARGB(255, 184, 184, 184),
              shape: OvalBorder(
                side: BorderSide(width: 2, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
