import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isTyping = false; // برای شناسایی تایپ کردن کاربر

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'text': _controller.text,
          'isMe': true,
        });
        _controller.clear();
        isTyping = false; // بعد از ارسال پیام، تایپ کردن به پایان می‌رسد

        Future.delayed(Duration(milliseconds: 500), () {
          setState(() {
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

  Widget _buildMessage(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white, // پس‌زمینه سفید برای هر دو پیام
          border: Border.all(
            color: isMe
                ? Colors.red
                : Colors
                    .blue, // حاشیه قرمز برای پیام‌های ارسالی و آبی برای پیام‌های دریافتی
          ),
          borderRadius: BorderRadius.only(
            topLeft: isMe ? const Radius.circular(15) : Radius.zero,
            topRight: isMe ? Radius.zero : const Radius.circular(15),
            bottomLeft: const Radius.circular(15),
            bottomRight: const Radius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isMe ? Colors.black : Colors.black87, // رنگ متن مشکی
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  void _attachFile() {
    print("Attach button pressed");
  }

  void _startVoiceRecording() {
    print("Voice recording started");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
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
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/images/attach.svg',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SizedBox(
                      height: 38,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(166, 166, 166, 1),
                            borderRadius: BorderRadius.circular(15)),
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
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
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
                    onPressed: isTyping ? _sendMessage : _startVoiceRecording,
                  ),
                ],
              ),
            ),
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
                  return _buildMessage(message['text'], message['isMe']);
                },
              ),
            ),
          ),
        ],
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
