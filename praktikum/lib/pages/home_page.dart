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
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://example.com/profile.jpg'),
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
