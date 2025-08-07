import 'package:flutter/material.dart';
import 'user_data.dart';

class HomePage extends StatelessWidget {
  final UserData userData;
  const HomePage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Willkommen in meinem Portfolio',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // Ersetztes NetworkImage mit Fehlerbehandlung
          SizedBox(
            width: 120,
            height: 120,
            child: ClipOval(
              child: Image.network(
                'https://example.com/profile.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.blue[100],
                    child:
                        userData.name != null && userData.name!.isNotEmpty
                            ? Center(
                              child: Text(
                                userData.name![0],
                                style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                            : const Icon(Icons.person, size: 50),
                  );
                },
                loadingBuilder: (
                  BuildContext context,
                  Widget child,
                  ImageChunkEvent? loadingProgress,
                ) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value:
                          loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            userData.name ?? 'Kevin Montag',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
