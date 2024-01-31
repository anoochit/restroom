// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:restroom_flutter/config.dart';
import 'package:restroom_flutter/services/restroom_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // gradian background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purple.shade900,
                  Colors.purple.shade600,
                  Colors.pink.shade500
                ],
              ),
            ),
          ),
          // text
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Good Morning',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Please rate our restroom',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => EmojiButton(
                      title: listEmojiButtons[index].title,
                      emoji: listEmojiButtons[index].emoji,
                      score: listEmojiButtons[index].score,
                      onTap: () async {
                        // send data to server
                        await RestroomService.rateRoom(
                          roomId: restroom.id!,
                          score: listEmojiButtons[index].score,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Thank you :)'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<EmojiRating> listEmojiButtons = [
  EmojiRating(title: 'Very poor', emoji: '😟', score: 1),
  EmojiRating(title: 'Poor', emoji: '😕', score: 2),
  EmojiRating(title: 'Everage', emoji: '😐', score: 3),
  EmojiRating(title: 'Good', emoji: '🙂', score: 4),
  EmojiRating(title: 'Exellent', emoji: '😀', score: 5),
];

class EmojiRating {
  String title;
  String emoji;
  int score;
  EmojiRating({
    required this.title,
    required this.emoji,
    required this.score,
  });
}

class EmojiButton extends StatelessWidget {
  const EmojiButton({
    super.key,
    required this.title,
    required this.emoji,
    required this.score,
    required this.onTap,
  });

  final String title;
  final String emoji;
  final int score;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => onTap(),
        child: Column(
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 98.0),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
    );
  }
}
