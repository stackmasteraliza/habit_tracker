import 'package:flutter/material.dart';

void main() {
  runApp(const HabitTrackerApp());
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF00B894), Color(0xFF55EFC4)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFFE8FFF8),
                        child: Text(
                          'AA',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00B894),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Aliza Ali',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '@stackmasteraliza',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Mobile App Developer',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.9),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // App Info Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF00B894), Color(0xFF55EFC4)],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(Icons.check_circle_rounded, color: Colors.white, size: 32),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Habit Tracker',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3436),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Version 1.0.0',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Social Links Header
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Connect with me',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3436),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Social Links
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    _buildSocialTile(
                      icon: Icons.code_rounded,
                      title: 'GitHub',
                      subtitle: 'github.com/stackmasteraliza',
                      color: const Color(0xFF333333),
                    ),
                    _buildSocialTile(
                      icon: Icons.work_rounded,
                      title: 'LinkedIn',
                      subtitle: 'linkedin.com/in/stackmasteraliza',
                      color: const Color(0xFF0077B5),
                    ),
                    _buildSocialTile(
                      icon: Icons.play_circle_filled_rounded,
                      title: 'YouTube',
                      subtitle: 'youtube.com/@stackmasteraliza',
                      color: const Color(0xFFFF0000),
                    ),
                    _buildSocialTile(
                      icon: Icons.camera_alt_rounded,
                      title: 'Instagram',
                      subtitle: 'instagram.com/stackmasteraliza',
                      color: const Color(0xFFE4405F),
                    ),
                    _buildSocialTile(
                      icon: Icons.facebook_rounded,
                      title: 'Facebook',
                      subtitle: 'facebook.com/stackmasteraliza',
                      color: const Color(0xFF1877F2),
                    ),
                    _buildSocialTile(
                      icon: Icons.coffee_rounded,
                      title: 'Buy Me a Coffee',
                      subtitle: 'buymeacoffee.com/stackmasteraliza',
                      color: const Color(0xFFFFDD00),
                      iconColor: Colors.black,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Footer
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Made with ❤️ by Aliza Ali',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    Color iconColor = Colors.white,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: iconColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3436),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[400], size: 16),
      ),
    );
  }
}

class Habit {
  final String id;
  String name;
  final IconData icon;
  final Color color;
  List<DateTime> completedDates;

  Habit({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    List<DateTime>? completedDates,
  }) : completedDates = completedDates ?? [];

  bool isCompletedToday() {
    final today = DateTime.now();
    return completedDates.any((date) =>
        date.year == today.year &&
        date.month == today.month &&
        date.day == today.day);
  }

  void toggleToday() {
    final today = DateTime.now();
    if (isCompletedToday()) {
      completedDates.removeWhere((date) =>
          date.year == today.year &&
          date.month == today.month &&
          date.day == today.day);
    } else {
      completedDates.add(today);
    }
  }

  int get streak {
    if (completedDates.isEmpty) return 0;

    completedDates.sort((a, b) => b.compareTo(a));
    int streak = 0;
    DateTime checkDate = DateTime.now();

    for (var date in completedDates) {
      if (date.year == checkDate.year &&
          date.month == checkDate.month &&
          date.day == checkDate.day) {
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      } else if (streak == 0 &&
          date.year == checkDate.subtract(const Duration(days: 1)).year &&
          date.month == checkDate.subtract(const Duration(days: 1)).month &&
          date.day == checkDate.subtract(const Duration(days: 1)).day) {
        checkDate = checkDate.subtract(const Duration(days: 1));
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      } else {
        break;
      }
    }
    return streak;
  }
}

class HabitTrackerApp extends StatelessWidget {
  const HabitTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00B894),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const HabitsScreen(),
    );
  }
}

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key});

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  final List<Habit> _habits = [];
  final _nameController = TextEditingController();
  int _selectedIconIndex = 0;
  int _selectedColorIndex = 0;

  final List<Map<String, dynamic>> _availableIcons = [
    {'icon': Icons.fitness_center_rounded, 'label': 'Workout'},
    {'icon': Icons.menu_book_rounded, 'label': 'Reading'},
    {'icon': Icons.water_drop_rounded, 'label': 'Water'},
    {'icon': Icons.bedtime_rounded, 'label': 'Sleep'},
    {'icon': Icons.self_improvement_rounded, 'label': 'Meditate'},
    {'icon': Icons.directions_run_rounded, 'label': 'Running'},
    {'icon': Icons.code_rounded, 'label': 'Coding'},
    {'icon': Icons.music_note_rounded, 'label': 'Music'},
    {'icon': Icons.brush_rounded, 'label': 'Art'},
    {'icon': Icons.restaurant_rounded, 'label': 'Diet'},
  ];

  final List<Color> _availableColors = [
    const Color(0xFF00B894),
    const Color(0xFF0984E3),
    const Color(0xFF6C5CE7),
    const Color(0xFFE17055),
    const Color(0xFFFDAA4B),
    const Color(0xFFE84393),
  ];

  int get _completedToday {
    return _habits.where((h) => h.isCompletedToday()).length;
  }

  double get _completionRate {
    if (_habits.isEmpty) return 0;
    return _completedToday / _habits.length;
  }

  void _addHabit() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            left: 24,
            right: 24,
            top: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00B894).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.add_task_rounded,
                      color: Color(0xFF00B894),
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create New Habit',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3436),
                          ),
                        ),
                        Text(
                          'Build better routines',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Habit Name',
                  hintText: 'e.g., Morning workout, Read 30 mins...',
                  prefixIcon: const Icon(Icons.edit_rounded),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Color(0xFF00B894), width: 2),
                  ),
                ),
                autofocus: true,
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose Icon',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3436),
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(_availableIcons.length, (index) {
                  final isSelected = _selectedIconIndex == index;
                  return GestureDetector(
                    onTap: () => setModalState(() => _selectedIconIndex = index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? _availableColors[_selectedColorIndex]
                            : Colors.grey[100],
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: _availableColors[_selectedColorIndex].withValues(alpha: 0.4),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                            : null,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _availableIcons[index]['icon'] as IconData,
                            color: isSelected ? Colors.white : Colors.grey[600],
                            size: 20,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _availableIcons[index]['label'] as String,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey[700],
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose Color',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3436),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_availableColors.length, (index) {
                  return GestureDetector(
                    onTap: () => setModalState(() => _selectedColorIndex = index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: _availableColors[index],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _selectedColorIndex == index
                              ? Colors.white
                              : Colors.transparent,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: _availableColors[index].withValues(alpha: 0.4),
                            blurRadius: _selectedColorIndex == index ? 12 : 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: _selectedColorIndex == index
                          ? const Icon(Icons.check_rounded, color: Colors.white, size: 24)
                          : null,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isNotEmpty) {
                    setState(() {
                      _habits.add(Habit(
                        id: DateTime.now().toString(),
                        name: _nameController.text,
                        icon: _availableIcons[_selectedIconIndex]['icon'] as IconData,
                        color: _availableColors[_selectedColorIndex],
                      ));
                    });
                    _nameController.clear();
                    _selectedIconIndex = 0;
                    _selectedColorIndex = 0;
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00B894),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  shadowColor: const Color(0xFF00B894).withValues(alpha: 0.4),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_rounded, size: 24),
                    SizedBox(width: 8),
                    Text(
                      'Create Habit',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AboutScreen()),
    );
  }

  void _deleteHabit(String id) {
    setState(() {
      _habits.removeWhere((habit) => habit.id == id);
    });
  }

  void _toggleHabit(Habit habit) {
    setState(() {
      habit.toggleToday();
    });
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final dayNames = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    final monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF00B894),
                    Color(0xFF55EFC4),
                  ],
                ),
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00B894).withValues(alpha: 0.4),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${dayNames[today.weekday - 1]}, ${monthNames[today.month - 1]} ${today.day}',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.9),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '$_completedToday',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8, left: 4),
                                child: Text(
                                  '/ ${_habits.length}',
                                  style: TextStyle(
                                    color: Colors.white.withValues(alpha: 0.8),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'habits completed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => _showAboutDialog(context),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: CircularProgressIndicator(
                                value: _completionRate,
                                strokeWidth: 8,
                                backgroundColor: Colors.white.withValues(alpha: 0.3),
                                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            ),
                            const Icon(
                              Icons.info_outline_rounded,
                              color: Colors.white,
                              size: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Habits Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Today\'s Habits',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3436),
                    ),
                  ),
                  if (_habits.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00B894).withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.local_fire_department_rounded,
                              color: Color(0xFFE17055), size: 18),
                          const SizedBox(width: 4),
                          Text(
                            '${_habits.fold(0, (sum, h) => sum + h.streak)} day streak',
                            style: const TextStyle(
                              color: Color(0xFF00B894),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Habits List
            Expanded(
              child: _habits.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(28),
                            decoration: BoxDecoration(
                              color: const Color(0xFF00B894).withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check_circle_outline_rounded,
                              size: 64,
                              color: Color(0xFF00B894),
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            'No habits yet',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3436),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Start building better habits!\nTap + to create your first habit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: _habits.length,
                      itemBuilder: (context, index) {
                        final habit = _habits[index];
                        final isCompleted = habit.isCompletedToday();
                        return Dismissible(
                          key: Key(habit.id),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) => _deleteHabit(habit.id),
                          background: Container(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 24),
                            child: const Icon(Icons.delete_rounded, color: Colors.white, size: 28),
                          ),
                          child: GestureDetector(
                            onTap: () => _toggleHabit(habit),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(vertical: 6),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: isCompleted
                                    ? habit.color.withValues(alpha: 0.15)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: isCompleted ? habit.color : Colors.transparent,
                                  width: 2,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: isCompleted
                                        ? habit.color.withValues(alpha: 0.2)
                                        : Colors.black.withValues(alpha: 0.05),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: isCompleted
                                          ? habit.color
                                          : habit.color.withValues(alpha: 0.15),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Icon(
                                      isCompleted ? Icons.check_rounded : habit.icon,
                                      color: isCompleted ? Colors.white : habit.color,
                                      size: 28,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          habit.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: const Color(0xFF2D3436),
                                            decoration: isCompleted
                                                ? TextDecoration.lineThrough
                                                : null,
                                            decorationColor: habit.color,
                                            decorationThickness: 2,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.local_fire_department_rounded,
                                              size: 16,
                                              color: habit.streak > 0
                                                  ? const Color(0xFFE17055)
                                                  : Colors.grey[400],
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '${habit.streak} day streak',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: habit.streak > 0
                                                    ? habit.color
                                                    : Colors.grey[500],
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: isCompleted
                                          ? habit.color
                                          : Colors.grey[200],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      isCompleted
                                          ? Icons.check_rounded
                                          : Icons.circle_outlined,
                                      color: isCompleted ? Colors.white : Colors.grey[400],
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addHabit,
        backgroundColor: const Color(0xFF00B894),
        foregroundColor: Colors.white,
        elevation: 8,
        icon: const Icon(Icons.add_rounded),
        label: const Text(
          'New Habit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
