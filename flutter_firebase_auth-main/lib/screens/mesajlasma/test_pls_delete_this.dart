// import 'package:basic_chat_ui_implementation/chat.dart';
// import 'package:basic_chat_ui_implementation/chat_controller.dart';
// import 'package:basic_chat_ui_implementation/bubble.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:provider/provider.dart';
//
// class ChatScreen extends StatelessWidget {
//   const ChatScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Chat"),
//         backgroundColor: const Color(0xFF007AFF),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.separated(...),
//           ), // <- 채팅 리스트 뷰
//           const _BottomInputField(), // <- 하단 고정 TextField
//         ],
//       ),
//     );
//   }
// }
//
// /// Bottom Fixed Filed
// class _BottomInputField extends StatelessWidget {
//   const _BottomInputField({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       bottom: true,
//       child: Container(
//         constraints: const BoxConstraints(minHeight: 48),
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           border: Border(
//             top: BorderSide(
//               color: Color(0xFFE5E5EA),
//             ),
//           ),
//         ),
//         child: Stack(
//           children: [
//             TextField(
//               focusNode: context.read<ChatController>().focusNode,
//               onChanged: context.read<ChatController>().onFieldChanged,
//               controller: context.read<ChatController>().textEditingController,
//               maxLines: null,
//               textAlignVertical: TextAlignVertical.top,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: const EdgeInsets.only(
//                   right: 42,
//                   left: 16,
//                   top: 18,
//                 ),
//                 hintText: 'message',
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             // custom suffix btn
//             Positioned(
//               bottom: 0,
//               right: 0,
//               child: IconButton(
//                 icon: SvgPicture.asset(
//                   "assets/icons/send.svg",
//                   colorFilter: ColorFilter.mode(
//                     context.select<ChatController, bool>(
//                             (value) => value.isTextFieldEnable)
//                         ? const Color(0xFF007AFF)
//                         : const Color(0xFFBDBDC2),
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 onPressed: context.read<ChatController>().onFieldSubmitted,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
