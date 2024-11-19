import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageInputBar extends StatefulWidget {
  final TextEditingController controller;
  final bool isTyping;
  final void Function(String text) onTextChanged;
  final VoidCallback onSendPressed;
  final VoidCallback onMicPressed;
  final VoidCallback onAttachPressed;

  const MessageInputBar({
    Key? key,
    required this.controller,
    required this.isTyping,
    required this.onTextChanged,
    required this.onSendPressed,
    required this.onMicPressed,
    required this.onAttachPressed,
  }) : super(key: key);

  @override
  State<MessageInputBar> createState() => _MessageInputBarState();
}

class _MessageInputBarState extends State<MessageInputBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFA5A5A5)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset('assets/images/attach.svg'),
                onPressed: widget.onAttachPressed,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                height: 38,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(166, 166, 166, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      controller: widget.controller,
                      decoration: InputDecoration(
                        hintText: 'پیام خود را بنویسید...',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey[700],
                          ),
                          onPressed: () {
                            // برای افزودن منطق انتخاب ایموجی
                          },
                        ),
                      ),
                      onChanged: widget.onTextChanged,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                widget.isTyping ? Icons.send : Icons.mic,
                size: 30,
                color: Colors.blue,
              ),
              onPressed:
                  widget.isTyping ? widget.onSendPressed : widget.onMicPressed,
            ),
          ],
        ),
      ),
    );
  }
}
