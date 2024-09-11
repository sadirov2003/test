import 'package:flutter/material.dart';

class OptionAnswerWidget extends StatelessWidget {
  final String urlIcon;
  final String title;

  const OptionAnswerWidget({
    super.key,
    required this.urlIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 16),
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE5E5EA),
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(urlIcon),
                height: 32,
                width: 32,
              ),
              const SizedBox(width: 4),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xFF0F0F0F),
                ),
              ),
            ],
          ),
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE5E5EA),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
