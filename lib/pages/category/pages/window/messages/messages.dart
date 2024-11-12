import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_titr_messages.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isTyping = false;

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        // پیام به لیست پیام‌ها اضافه شود
        messages.add({
          'text': _controller.text,
          'isMe': true,
          'isSent': false, // مقدار پیش‌فرض false برای isSent
        });
        _controller.clear();
        isTyping = false;

        Future.delayed(Duration(milliseconds: 500), () {
          setState(() {
            // تغییر وضعیت به true پس از ارسال پیام
            messages[messages.length - 1]['isSent'] = true;
            messages.add({
              'text': 'پیام دریافت شد: ${messages.last['text']}',
              'isMe': false,
            });
            _scrollToBottom();
          });
        });
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // این متد برای اضافه کردن خط جدید در پیام‌هایی که طول آنها به 10 کاراکتر رسید
  String _formatMessage(String text) {
    if (text.length >= 15) {
      List<String> parts = [];
      for (int i = 0; i < text.length; i += 15) {
        parts.add(
            text.substring(i, (i + 15) > text.length ? text.length : i + 15));
      }
      return parts.join("\n"); // جدا کردن هر 10 کاراکتر با خط جدید
    }
    return text; // اگر تعداد کاراکتر کمتر از 10 باشد، همانطور که هست باقی می‌ماند
  }

  Widget _buildMessage(String text, bool isMe, bool? isSent) {
    isSent = isSent ?? false; // مقدار پیش‌فرض false اگر isSent مقدار null باشد
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isMe)
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: GRADIANT_COLOR1)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child:
                      SvgPicture.asset('assets/images/person_avatar_chat.svg'),
                ),
              ),
            ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              // پیام
              Container(
                margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                    left: 8,
                    right: 8), // افزایش فاصله بالا و پایین
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: isMe
                        ? Colors.red
                        : Colors
                            .blue, // قرمز برای پیام‌های من، آبی برای پیام‌های دیگر
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: isMe ? const Radius.circular(15) : Radius.zero,
                    topRight: isMe ? Radius.zero : const Radius.circular(15),
                    bottomLeft: const Radius.circular(15),
                    bottomRight: const Radius.circular(15),
                  ),
                ),
                child: Text(
                  _formatMessage(
                      text), // اضافه کردن خط جدید اگر تعداد کاراکتر بیشتر از حد معین باشد
                  style: TextStyle(
                    color: isMe ? Colors.black : Colors.black87,
                    fontSize: 16,
                  ),
                ),
              ),
              if (isMe && isSent)
                const Positioned(
                  bottom: 5, // موقعیت آیکون تیک
                  left: 0,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 16,
                    ),
                  ),
                ),
            ],
          ),
          if (isMe)
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: GRADIANT_COLOR1)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child:
                      SvgPicture.asset('assets/images/person_avatar_chat.svg'),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const WidgetTitrMessages(),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/Call_chat.svg',
                          width: 25,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          'assets/images/delete_chat.svg',
                          width: 25,
                          height: 20,
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center, // تراز کانتینر به مرکز
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 10),
                                  child: SvgPicture.asset(
                                    "assets/images/consultant_list_moshaver.svg",
                                    width: 55,
                                    height: 55,
                                  ),
                                ),
                                Positioned(
                                  left:
                                      84, // تنظیم موقعیت برای نزدیکی بیشتر به داخل باکس
                                  top: 12, // کمی بالاتر از حالت قبلی
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
                  ],
                ),
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    controller: _scrollController,
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[messages.length - index - 1];
                      return _buildMessage(
                        message['text'],
                        message['isMe'],
                        message['isSent'],
                      );
                    },
                  ),
                ),
              ),
              SafeArea(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      // دکمه Attach
                      Container(
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/images/attach.svg'),
                          onPressed: () {
                            print("Attach button pressed");
                          },
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
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: 'پیام خود را بنویسید...',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  prefixIcon: IconButton(
                                    icon: Icon(Icons.emoji_emotions,
                                        color: Colors.grey[700]),
                                    onPressed: () {},
                                  ),
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    isTyping = text.isNotEmpty;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isTyping ? Icons.send : Icons.mic,
                          size: 30,
                          color: Colors.blue,
                        ),
                        onPressed: isTyping
                            ? _sendMessage
                            : () {
                                print("Voice recording started");
                              },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
