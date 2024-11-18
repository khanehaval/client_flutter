import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_titr_messages.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  void _startSelecting() {
    setState(() {
      isSelecting = true;
      isDeletingHistory = true; // When deleting history, set this to true
    });
  }

  void _toggleSelectAllMessages() {
    setState(() {
      isAllSelected = !isAllSelected;
      if (isAllSelected) {
        selectedMessages =
            Set<int>.from(List.generate(messages.length, (index) => index));
      } else {
        selectedMessages.clear();
      }
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
      _removeOverlay(); // اگر از قبل وجود دارد، حذفش کن
    } else {
      _showOverlay(context); // اگر وجود ندارد، ایجاد کن
    }
  }

  void _deleteSelectedMessages() {
    setState(() {
      messages = messages
          .asMap()
          .entries
          .where((entry) => !selectedMessages.contains(entry.key))
          .map((entry) => entry.value)
          .toList();
      selectedMessages.clear(); // لیست پیام‌های انتخاب‌شده را خالی کن
      isSelecting = false; // خروج از حالت انتخاب
    });
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // اگر عکسی انتخاب شد، می‌توانید آن را ارسال کنید
      // مثلا اضافه کردن تصویر به لیست پیام‌ها
      setState(() {
        messages.add({
          'text': 'عکس انتخابی',
          'isMe': true,
          'image': image.path, // مسیر فایل انتخاب شده
          'isSent': false,
        });
      });
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      // نمایش مسیر فایل انتخابی
      print("Selected file: ${result.files.single.path}");

      setState(() {
        messages.add({
          'text': 'فایل انتخابی',
          'isMe': true,
          'file': result.files.single.path, // مسیر فایل انتخاب شده
          'isSent': false,
        });
      });
    } else {
      // اگر هیچ فایلی انتخاب نشده است
      print("No file selected");
    }
  }

  void _showOverlay(BuildContext context) {
    final overlay = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 177, // فاصله از بالا
        right: 190, // فاصله از راست
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 172,
            height: 226,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.end, // برای راست‌چین کردن تمام عناصر
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () => _toggleOverlay(context),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _startSelecting(); // وارد حالت انتخاب می‌شود
                      _removeOverlay(); // بستن کادر Overlay
                    },
                    child: const Text(
                      'حذف تاریخچه',
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _removeOverlay();
                    },
                    child: const Text(
                      'حذف کامل چت',
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _removeOverlay();
                    },
                    child: const Text(
                      'لغو همکاری',
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _removeOverlay();
                    },
                    child: const Text(
                      'ویترین',
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay?.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
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
      return parts.join("\n"); // جدا کردن هر 10 کاراکتر با خط جدید
    }
    return text; // اگر تعداد کاراکتر کمتر از 10 باشد، همانطور که هست باقی می‌ماند
  }

  void _showAttachBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: GRADIANT_COLOR1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 1, right: 1),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // نمایش عکس انتخابی (اگر وجود داشته باشد)
                    if (selectedImagePath != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.file(
                          File(selectedImagePath!),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    // نمایش فایل انتخابی (اگر وجود داشته باشد)
                    if (selectedFilePath != null)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Icon(
                          Icons.insert_drive_file,
                          size: 40,
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 127,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF429F56)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap:
                                _pickImage, // متدی که قبلاً نوشتید برای باز کردن گالری
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'بارگذاری عکس',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 12,
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/Gallery.svg',
                                  width: 19,
                                  height: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 127,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF296FE2)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: _pickFile,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'بارگذاری فایل',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 12,
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/File.svg',
                                  width: 19,
                                  height: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessage(String text, bool isMe, bool? isSent,
      {String? image, String? file}) {
    isSent = isSent ?? false; // مقدار پیش‌فرض false اگر isSent مقدار null باشد
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (image != null) // نمایش تصویر
            Image.file(
              File(image),
              width: 100,
              height: 100,
            ),
          if (file != null) // نمایش فایل
            const Icon(Icons.insert_drive_file, size: 30),
          // سایر اجزای پیام
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 20, left: 8, right: 8),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isMe ? Colors.red : Colors.blue,
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
                color: isMe ? Colors.black : Colors.black87,
                fontSize: 16,
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
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () => _toggleOverlay(context),
                        ),
                        const SizedBox(width: 10),
                        // اگر در حالت انتخاب باشیم
                        if (isSelecting)
                          GestureDetector(
                            onTap: _toggleSelectAllMessages,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: isAllSelected
                                    ? Colors.red
                                    : Colors
                                        .white, // پر شدن دایره وقتی همه پیام‌ها انتخاب شده‌اند
                                shape: BoxShape.circle, // دایره‌ای بودن
                                border: Border.all(
                                  color:
                                      Colors.grey, // رنگ حاشیه دایره (اختیاری)
                                  width: 2,
                                ),
                              ),
                              child: isAllSelected
                                  ? const Icon(
                                      Icons.check, // علامت تیک درون دایره
                                      size: 15,
                                      color: Colors.white, // رنگ تیک سفید
                                    )
                                  : null, // اگر پیام‌ها انتخاب نشده‌اند، تیک نباشد
                            ),
                          ),
                        const SizedBox(width: 10),

                        if (isSelecting)
                          Row(
                            children: [
                              // آیکون حذف چت
                              InkWell(
                                onTap: _deleteSelectedMessages,
                                child: SvgPicture.asset(
                                  'assets/images/delete_chat.svg',
                                  width: 25,
                                  height: 20,
                                ),
                              ),
                              const SizedBox(width: 8), // فاصله بین دکمه‌ها
                              // دکمه لغو
                            ],
                          ),

                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center, // Center the container
                      children: [
                        Column(
                          children: [
                            // Check if deleting history mode is active
                            if (isDeletingHistory)
                              Positioned(
                                right: 10,
                                top: 10,
                                child: IconButton(
                                  icon: const Icon(Icons.cancel,
                                      color: Colors.red, size: 20),
                                  onPressed: () {
                                    setState(() {
                                      isDeletingHistory =
                                          false; // Reset to default mode
                                      isSelecting =
                                          false; // Exit selecting mode
                                    });
                                  },
                                ),
                              )
                            else
                              // Default content when not in deleting history mode
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
                                    left: 84, // Adjust position
                                    top:
                                        12, // Adjust position for the second image
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
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: isSelecting
                            ? Checkbox(
                                value: selectedMessages.contains(index),
                                shape: const CircleBorder(),
                                activeColor: Colors.red,
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedMessages.add(index);
                                    } else {
                                      selectedMessages.remove(index);
                                    }
                                  });
                                },
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
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
                                      child: const Icon(
                                          Icons.add_photo_alternate_rounded),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                              ],
                              Stack(
                                clipBehavior: Clip
                                    .none, // برای نمایش محتویات خارج از محدوده
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
                                      _formatMessage(messages[index]['text']),
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  if (messages[index]['isMe'])
                                    const Positioned(
                                      bottom: -15, // پایین‌تر از محدوده کانتینر
                                      left: -10, // خارج از سمت چپ کانتینر
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.green,
                                        size: 16, // اندازه تیک سبز
                                      ),
                                    ),
                                ],
                              ),
                              if (messages[index]['isMe']) ...[
                                const SizedBox(width: 8),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
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
                                      child: const Icon(
                                          Icons.add_photo_alternate_rounded),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
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
                          onPressed: () => _showAttachBottomSheet(context),
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
                        onPressed: isTyping ? _sendMessage : () {},
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
