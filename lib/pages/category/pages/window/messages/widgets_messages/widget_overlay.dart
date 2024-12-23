import 'package:flutter/material.dart';

class CustomOverlay {
  OverlayEntry? _overlayEntry;

  void showOverlay(
    BuildContext context,
    VoidCallback _startSelecting,
    VoidCallback onDeleteAllChats, // پارامتر جدید
  ) {
    final overlay = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 177,
        right: 190,
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () => _removeOverlay(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _startSelecting();
                      _removeOverlay();
                    },
                    child: const Text(
                      'حذف تاریخچه',
                      style: TextStyle(
                        fontFamily: "MainFontFamilyMedium",
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      onDeleteAllChats(); // فراخوانی متد حذف کامل
                      _removeOverlay(); // بستن Overlay
                    },
                    child: const Text(
                      'حذف کامل چت',
                      style: TextStyle(
                        fontFamily: "MainFontFamilyMedium",
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _removeOverlay();
                    },
                    child: const Text(
                      'لغو همکاری',
                      style: TextStyle(
                        fontFamily: "MainFontFamilyMedium",
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: InkWell(
                    onTap: () {
                      _removeOverlay();
                    },
                    child: const Text(
                      'ویترین',
                      style: TextStyle(
                        fontFamily: "MainFontFamilyMedium",
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
}
