import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/first_page_messages.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/input_message.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_Attach.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_call.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_chat_header.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_overlay.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_titr_messages.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jalali_flutter_datepicker/jalali_flutter_datepicker.dart';

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
  OverlayEntry? _overlayEntry;
  String? selectedImagePath;
  String? selectedFilePath;
  bool isSelecting = false;
  Set<int> selectedMessages = {};
  bool selectAllMessages = false;
  bool isAllSelected = false;
  bool isCallIconVisible = false;
  bool isDeletingHistory = false;
  final CustomOverlay customOverlay = CustomOverlay();

  void _startSelecting() {
    setState(() {
      isSelecting = true;
      isDeletingHistory = true;
    });
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'text': _controller.text,
          'isMe': true,
          'isSent': false,
        });
        _controller.clear();
        isTyping = false;

        Future.delayed(const Duration(milliseconds: 500), () {
          setState(() {
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

  void _toggleOverlay(BuildContext context) {
    if (_overlayEntry != null) {
      _removeOverlay();
    } else {
      customOverlay.showOverlay(
        context,
        _startSelecting,
        _deleteAllMessages, // ارسال متد حذف کامل چت
      );
    }
  }

  void _deleteAllMessages() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 150),
              const Text(
                'آیا از حذف کامل چت اطمینان دارید؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 81,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF9C4040)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x7F9C4040),
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'انصراف',
                          style: TextStyle(
                            color: Color(0xFF636363),
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        messages.clear();
                      });
                      Get.back();
                    },
                    child: Container(
                      width: 81,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF4C8CED)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x7F36D859),
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'تائید',
                          style: TextStyle(
                            color: Color(0xFF636363),
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _deleteSelectedMessages() {
    setState(() {
      messages = messages
          .asMap()
          .entries
          .where((entry) => !selectedMessages.contains(entry.key))
          .map((entry) => entry.value)
          .toList();
      selectedMessages.clear();
      isSelecting = false;
    });
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        messages.add({
          'text': 'عکس انتخابی',
          'isMe': true,
          'image': image.path,
          'isSent': false,
        });
      });
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        messages.add({
          'text': 'فایل انتخابی',
          'isMe': true,
          'file': result.files.single.path,
          'isSent': false,
        });
      });
    } else {}
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  String _formatMessage(String text) {
    if (text.length >= 15) {
      List<String> parts = [];
      for (int i = 0; i < text.length; i += 15) {
        parts.add(
            text.substring(i, (i + 15) > text.length ? text.length : i + 15));
      }
      return parts.join("\n");
    }
    return text;
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
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              ChatHeader(
                isSelecting: isSelecting,
                isDeletingHistory: isDeletingHistory,
                selectedMessages: selectedMessages,
                totalMessages: messages.length,
                onMorePressed: () => _toggleOverlay(context),
                onCallPressed: () =>
                    CallBottomSheet.showCallBottomSheet(context),
                onDeleteSelected: _deleteSelectedMessages,
                onClosePressed: () {
                  setState(() {
                    isSelecting = false;
                    isDeletingHistory = false;
                    selectedMessages.clear();
                  });
                },
                onNavigateBack: () {
                  Get.to(() => FirstPageMessages());
                },
                onSelectAllToggle: () {
                  setState(() {
                    if (selectedMessages.length == messages.length) {
                      selectedMessages.clear();
                    } else {
                      selectedMessages =
                          List.generate(messages.length, (index) => index)
                              .toSet();
                    }
                  });
                },
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
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onLongPress: () {
                            setState(() {
                              isSelecting = true;
                              selectedMessages.add(index);
                            });
                          },
                          onTap: () {
                            if (isSelecting) {
                              setState(() {
                                if (selectedMessages.contains(index)) {
                                  selectedMessages.remove(index);
                                } else {
                                  selectedMessages.add(index);
                                }
                              });
                            }
                          },
                          child: ListTile(
                            leading: isSelecting
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (selectedMessages.contains(index)) {
                                          selectedMessages.remove(index);
                                        } else {
                                          selectedMessages.add(index);
                                        }
                                      });
                                    },
                                    child: Container(
                                      width: 22,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selectedMessages.contains(index)
                                            ? Colors.red
                                            : Colors.transparent,
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  )
                                : null,
                            title: Align(
                              alignment: messages[index]['isMe']
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: messages[index]['isMe']
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  if (!messages[index]['isMe']) ...[
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        gradient: LinearGradient(
                                          colors: GRADIANT_COLOR1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                          ),
                                          child: const Icon(Icons
                                              .add_photo_alternate_rounded),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                  ],
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: messages[index]['isMe']
                                              ? Colors.white
                                              : Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: messages[index]['isMe']
                                                ? const Radius.circular(10)
                                                : const Radius.circular(0),
                                            topRight: messages[index]['isMe']
                                                ? const Radius.circular(0)
                                                : const Radius.circular(5),
                                            bottomLeft: messages[index]['isMe']
                                                ? const Radius.circular(10)
                                                : const Radius.circular(5),
                                            bottomRight: messages[index]['isMe']
                                                ? const Radius.circular(5)
                                                : const Radius.circular(5),
                                          ),
                                          border: Border.all(
                                            color: messages[index]['isMe']
                                                ? Colors.blue
                                                : Colors.green,
                                            width: 1,
                                          ),
                                        ),
                                        child: Text(
                                          _formatMessage(
                                              messages[index]['text']),
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      if (messages[index]['isMe'])
                                        const Positioned(
                                          bottom: -15,
                                          left: -10,
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                        ),
                                    ],
                                  ),
                                  if (messages[index]['isMe']) ...[
                                    const SizedBox(width: 8),
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        gradient: LinearGradient(
                                          colors: GRADIANT_COLOR1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                          ),
                                          child: const Icon(Icons
                                              .add_photo_alternate_rounded),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ),
              MessageInputBar(
                controller: _controller,
                isTyping: isTyping,
                onTextChanged: (text) {
                  setState(() {
                    isTyping = text.isNotEmpty;
                  });
                },
                onSendPressed: _sendMessage,
                onMicPressed: () {},
                onAttachPressed: () {
                  AttachBottomSheet(
                    selectedImagePath: selectedImagePath,
                    selectedFilePath: selectedFilePath,
                    pickImage: _pickImage,
                    pickFile: _pickFile,
                  ).showAttachBottomSheet(context);
                },
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
