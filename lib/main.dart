import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'data/class_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppBootstrap());
}

class AppBootstrap extends StatefulWidget {
  const AppBootstrap({super.key});

  @override
  State<AppBootstrap> createState() => _AppBootstrapState();
}

class _AppBootstrapState extends State<AppBootstrap> {
  late final Future<SharedPreferences> _preferences = _loadPreferences();

  Future<SharedPreferences> _loadPreferences() {
    return SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: _preferences,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return _LoadingApp(
            child: Text(
              'Aplikasi gagal dimuat.\n${snapshot.error}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70),
            ),
          );
        }

        if (!snapshot.hasData) {
          return const _LoadingApp();
        }

        final dark = snapshot.data!.getBool('xirpl1-theme-dark') ?? false;
        return MyApp(initialDarkMode: dark);
      },
    );
  }
}

class _LoadingApp extends StatelessWidget {
  final Widget? child;

  const _LoadingApp({this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XI RPL 1',
      home: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff080d18),
                Color(0xff101a2d),
                Color(0xff111126),
              ],
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Positioned(
                left: -20,
                top: 70,
                child: Text(
                  'class AppBootstrap {\n'
                  '  Future<void> init() async {\n'
                  '    await loadPreferences();\n'
                  '  }\n'
                  '}',
                  style: TextStyle(
                    color: Color(0x145b8cff),
                    fontSize: 15,
                    height: 1.8,
                    fontFamily: 'monospace',
                  ),
                ),
              ),
              const Positioned(
                right: -12,
                bottom: 80,
                child: Text(
                  '01010101\n'
                  'const status = "ready";\n'
                  'return runApp();',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0x187c4dff),
                    fontSize: 14,
                    height: 1.8,
                    fontFamily: 'monospace',
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 390),
                    padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                    decoration: BoxDecoration(
                      color: const Color(0xff0d1424).withValues(alpha: 0.92),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xff5b8cff).withValues(alpha: 0.28),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x55000000),
                          blurRadius: 30,
                          offset: Offset(0, 16),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _terminalDot(const Color(0xfff15b5b)),
                            _terminalDot(const Color(0xffffc857)),
                            _terminalDot(const Color(0xff39d98a)),
                            const SizedBox(width: 10),
                            const Text(
                              'app_bootstrap.dart',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 10,
                                fontFamily: 'monospace',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/website/logo/loading.webp',
                          width: 116,
                          height: 116,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(
                            Icons.school_outlined,
                            color: Colors.white,
                            size: 92,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'XI RPL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Menyiapkan aplikasi......',
                          style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'monospace',
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 24),
                        if (child == null)
                          const SizedBox(
                            width: 28,
                            height: 28,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: Color(0xff6fa0ff),
                            ),
                          )
                        else
                          child!,
                        const SizedBox(height: 18),
                        const Text(
                          r'$ booting --environment=production',
                          style: TextStyle(
                            color: Color(0xff6fa0ff),
                            fontSize: 10,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _terminalDot(Color color) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class MyApp extends StatefulWidget {
  final bool initialDarkMode;

  const MyApp({super.key, this.initialDarkMode = false});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool darkMode = widget.initialDarkMode;

  Future<void> _toggleTheme() async {
    setState(() => darkMode = !darkMode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('xirpl1-theme-dark', darkMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XI RPL 1',
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      theme: _theme(Brightness.light),
      darkTheme: _theme(Brightness.dark),
      home: HomePage(darkMode: darkMode, onToggleTheme: _toggleTheme),
    );
  }

  ThemeData _theme(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      scaffoldBackgroundColor: dark
          ? const Color(0xff10121a)
          : const Color(0xfff3f5f8),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff3355d8),
        brightness: brightness,
      ),
      fontFamily: 'Inter',
      appBarTheme: AppBarTheme(
        backgroundColor: dark
            ? const Color(0xee10121a)
            : const Color(0xeeffffff),
        foregroundColor: dark
            ? const Color(0xffe8ebf3)
            : const Color(0xff1b1f27),
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: dark ? const Color(0xff191c26) : Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final bool darkMode;
  final VoidCallback onToggleTheme;

  const HomePage({
    super.key,
    required this.darkMode,
    required this.onToggleTheme,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  final ScrollController _tabScrollController = ScrollController();
  final ScrollController _motivationController = ScrollController();
  Timer? _motivationTimer;

  @override
  void initState() {
    super.initState();
    _motivationTimer = Timer.periodic(const Duration(milliseconds: 35), (_) {
      if (!_motivationController.hasClients) return;

      final position = _motivationController.position;
      final nextOffset = position.pixels + 0.7;
      final resetPoint = position.maxScrollExtent / 2;

      if (resetPoint > 0 && nextOffset >= resetPoint) {
        _motivationController.jumpTo(0);
      } else {
        _motivationController.jumpTo(nextOffset);
      }
    });
  }

  @override
  void dispose() {
    _motivationTimer?.cancel();
    _tabScrollController.dispose();
    _motivationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHeader(),
      body: SafeArea(child: _buildSelectedPage()),
      bottomNavigationBar: _buildNavigation(),
    );
  }

  Widget _buildSelectedPage() {
    switch (selectedTab) {
      case 1:
        return _buildPeoplePage(
          'Daftar Siswa',
          'siswa.json',
          students,
          Icons.people_alt_outlined,
        );
      case 2:
        return _buildPeoplePage(
          'Daftar Guru',
          'guru.json',
          teachers,
          Icons.school_outlined,
        );
      case 3:
        return _buildGalleryPage();
      case 4:
        return _buildVideoPage();
      default:
        return _buildHome();
    }
  }

  PreferredSizeWidget _buildHeader() {
    return AppBar(
      titleSpacing: 16,
      title: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff3355d8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              '</>',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'XI RPL 1',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
              Text('SMK PGRI 2 Ponorogo', style: TextStyle(fontSize: 10)),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          tooltip: 'Ganti tema',
          onPressed: widget.onToggleTheme,
          icon: Icon(
            widget.darkMode
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
          ),
        ),
      ],
    );
  }

  Widget _buildNavigation() {
    return NavigationBar(
      selectedIndex: selectedTab,
      onDestinationSelected: (index) {
        setState(() => selectedTab = index);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!_tabScrollController.hasClients) return;
          _tabScrollController.jumpTo(0);
        });
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Beranda',
        ),
        NavigationDestination(
          icon: Icon(Icons.people_outline),
          selectedIcon: Icon(Icons.people),
          label: 'Siswa',
        ),
        NavigationDestination(
          icon: Icon(Icons.school_outlined),
          selectedIcon: Icon(Icons.school),
          label: 'Guru',
        ),
        NavigationDestination(
          icon: Icon(Icons.photo_library_outlined),
          selectedIcon: Icon(Icons.photo_library),
          label: 'Galeri',
        ),
        NavigationDestination(
          icon: Icon(Icons.play_circle_outline),
          selectedIcon: Icon(Icons.play_circle),
          label: 'Video',
        ),
      ],
    );
  }

  Widget _buildHome() {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));
    return ListView(
      controller: _tabScrollController,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        _buildHero(now),
        const SizedBox(height: 16),
        _buildStats(),
        const SizedBox(height: 16),
        _buildMotivation(),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 700) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _buildSchedulePanel()),
                  const SizedBox(width: 16),
                  Expanded(child: _buildDutyPanel()),
                ],
              );
            }
            return Column(
              children: [
                _buildSchedulePanel(),
                const SizedBox(height: 16),
                _buildDutyPanel(),
              ],
            );
          },
        ),
        const SizedBox(height: 16),
        _buildTomorrowPanel(tomorrow),
        const SizedBox(height: 24),
        _buildFooter(),
      ],
    );
  }

  Widget _buildHero(DateTime now) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _logo('assets/website/logo/logo sterida.webp', 'Sterida'),
            const SizedBox(width: 10),
            _logo('assets/website/logo/rpl.webp', 'XI RPL'),
          ],
        ),
        const SizedBox(height: 18),
        _tag('kelas.status === "aktif"', const Color(0xff1e8e5a)),
        const SizedBox(height: 12),
        Text.rich(
          TextSpan(
            text: 'Selamat datang di ruang kelas ',
            children: [
              TextSpan(
                text: 'XI RPL',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          style: const TextStyle(
            fontSize: 30,
            height: 1.15,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Aplikasi informasi kelas Rekayasa Perangkat Lunak — jadwal pelajaran, daftar piket, profil siswa & guru, sampai dokumentasi kegiatan, semua ada di sini.',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 16),
        _terminal(now),
      ],
    );
  }

  Widget _terminal(DateTime now) {
    final date =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year}';
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff12151d),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _terminalDot(Colors.red),
              _terminalDot(Colors.orange),
              _terminalDot(Colors.green),
              const SizedBox(width: 8),
              const Text(
                'kelas@xirpl1: ~',
                style: TextStyle(color: Colors.white54, fontSize: 11),
              ),
            ],
          ),
          const SizedBox(height: 14),
          _terminalLine('whoami', 'XI RPL 1 — Rekayasa Perangkat Lunak'),
          _terminalLine('date', date),
          _terminalLine('status --kelas', 'aktif · 33 siswa · 15 guru'),
          const Text(
            r'$ echo "Semangat belajar hari ini!"',
            style: TextStyle(
              color: Color(0xffc9d2e3),
              fontFamily: 'monospace',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _terminalLine(String command, String output) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$ $command',
            style: const TextStyle(
              color: Color(0xff6fa0ff),
              fontFamily: 'monospace',
              fontSize: 12,
            ),
          ),
          Text(
            output,
            style: const TextStyle(
              color: Color.fromARGB(255, 18, 138, 72),
              fontFamily: 'monospace',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _terminalDot(Color color) => Container(
    width: 8,
    height: 8,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );

  Widget _logo(String path, String label) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(path, width: 38, height: 38),
          const SizedBox(width: 7),
          Text(label, style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }

  Widget _tag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .12),
        border: Border.all(color: color.withValues(alpha: .28)),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        '// $text',
        style: TextStyle(
          color: color,
          fontFamily: 'monospace',
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Row(
      children: [
        Expanded(child: _stat('33', 'Total Siswa')),
        const SizedBox(width: 8),
        Expanded(child: _stat('15', 'Total Guru')),
        const SizedBox(width: 8),
        Expanded(child: _stat('2025/27', 'Tahun Ajaran')),
      ],
    );
  }

  Widget _stat(String value, String label) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                value,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMotivation() {
    return Container(
      height: 42,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.separated(
        controller: _motivationController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
        itemBuilder: (_, index) => Text(
          motivations[index % motivations.length],
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontSize: 12,
          ),
        ),
        separatorBuilder: (_, _) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('•'),
        ),
        itemCount: motivations.length * 4,
      ),
    );
  }

  Widget _panelHeader(String title, String badge) {
    return Wrap(
      spacing: 8,
      runSpacing: 6,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
        _tag(badge, Theme.of(context).colorScheme.primary),
      ],
    );
  }

  Widget _buildSchedulePanel() {
    final now = DateTime.now();
    final dayName = _dayName(now.weekday);
    final weekNumber = _isoWeek(now);
    final parity = weekNumber.isOdd ? 'genap' : 'ganjil';
    final todaySchedule =
        scheduleByParity[parity]?[dayName] ?? const <ScheduleRow>[];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _panelHeader('Jadwal Hari Ini', '$dayName · minggu $parity'),
            const SizedBox(height: 14),
            ...todaySchedule.map(_scheduleTile),
          ],
        ),
      ),
    );
  }

  Widget _buildTomorrowPanel(DateTime date) {
    final dayName = _dayName(date.weekday);
    final weekNumber = _isoWeek(date);
    final parity = weekNumber.isOdd ? 'genap' : 'ganjil';
    final tomorrowSchedule =
        scheduleByParity[parity]?[dayName] ?? const <ScheduleRow>[];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _panelHeader('Jadwal & Piket Besok', '$dayName · minggu $parity'),
            const SizedBox(height: 12),
            ...tomorrowSchedule.take(4).map(_scheduleTile),
            const SizedBox(height: 4),
            Text(
              'Piket besok tersedia di jadwal kelas.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _dayName(int weekday) {
    const days = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu',
    ];
    return days[weekday - 1];
  }

  int _isoWeek(DateTime date) {
    final thursday = date.add(Duration(days: 4 - date.weekday));
    final firstThursday = DateTime(thursday.year, 1, 4);
    final difference = thursday.difference(firstThursday).inDays;
    return 1 + ((difference + firstThursday.weekday - 1) ~/ 7);
  }

  Widget _scheduleTile(ScheduleRow row) {
    if (row.code == 'break') {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 7),
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          '${row.subject} · ${row.time}',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontSize: 11,
          ),
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 82,
            child: Text(
              row.time,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 10,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  row.subject,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                Text(
                  row.teacher,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Text(
            row.code,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'monospace',
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDutyPanel() {
    final dutyDay = _dayName(DateTime.now().weekday);
    final names = piketByDay[dutyDay] ?? const <String>[];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _panelHeader('Piket Hari Ini', 'piket.json'),
            const SizedBox(height: 14),
            ...names.asMap().entries.map(
              (entry) => Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text(
                        '${entry.key + 1}',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      entry.value,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff12151d),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/website/logo/slogan.webp', width: 220),
          const SizedBox(height: 16),
          const Text(
            '</> XI RPL 1',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontFamily: 'monospace',
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'SMK PGRI 2 Ponorogo · Rekayasa Perangkat Lunak',
            style: TextStyle(color: Color(0xffc9d2e3), fontSize: 11),
          ),
          const SizedBox(height: 12),
          const Divider(color: Color(0x335c6b82)),
          const Text(
            '🏫 XI RPL 1   |   👥 33 siswa   |   🧑‍🏫 15 guru   |   UTF-8',
            style: TextStyle(
              color: Color(0xffc9d2e3),
              fontFamily: 'monospace',
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPeoplePage(
    String title,
    String fileName,
    List<PersonData> people,
    IconData icon,
  ) {
    return ListView(
      controller: _tabScrollController,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
      children: [
        _pageIntro(title, fileName, icon, '${people.length} data tersimpan'),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: people.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 700,
            mainAxisExtent: 244,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) =>
              _personCard(people[index], title == 'Daftar Siswa'),
        ),
        const SizedBox(height: 24),
        _buildFooter(),
      ],
    );
  }

  Widget _personCard(PersonData person, bool showStudentDetails) {
    final initials = person.name
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2)
        .map((part) => part[0])
        .join()
        .toUpperCase();
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: _programmerInfoPanel(
              person: person,
              showStudentDetails: showStudentDetails,
            ),
          ),
          Expanded(
            flex: 2,
            child: _personVisual(person, initials),
          ),
        ],
      ),
    );
  }

  Widget _programmerInfoPanel({
    required PersonData person,
    required bool showStudentDetails,
  }) {
    final colors = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final panelColor = isDark
        ? const Color(0xff101827)
        : const Color(0xff17233b);
    final textColor = Colors.white;
    final mutedColor = Colors.white.withValues(alpha: 0.68);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: panelColor,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            panelColor,
            Color.alphaBlend(
              colors.primary.withValues(alpha: 0.22),
              panelColor,
            ),
          ],
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: -8,
            top: -18,
            child: Text(
              '</>',
              style: TextStyle(
                color: colors.primary.withValues(alpha: 0.14),
                fontSize: 68,
                fontWeight: FontWeight.w900,
                fontFamily: 'monospace',
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 3,
              color: colors.primary.withValues(alpha: 0.85),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 12, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '01',
                      style: TextStyle(
                        color: colors.primary.withValues(alpha: 0.9),
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'monospace',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'profile.dart',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: mutedColor,
                          fontSize: 9,
                          fontFamily: 'monospace',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.code,
                      size: 14,
                      color: mutedColor,
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                Text(
                  person.name,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _tag(person.role, colors.primary),
                ),
                if (showStudentDetails) ...[
                  const SizedBox(height: 12),
                  _personDetail(
                    Icons.favorite_border,
                    'Hobi',
                    person.hobby,
                    color: mutedColor,
                  ),
                  const SizedBox(height: 6),
                  _personDetail(
                    Icons.notes_outlined,
                    'Catatan',
                    person.note,
                    maxLines: 2,
                    color: mutedColor,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _personDetail(
    IconData icon,
    String label,
    String value, {
    int maxLines = 1,
    Color? color,
  }) {
    final mutedColor =
        color ?? Theme.of(context).colorScheme.onSurfaceVariant;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 14, color: mutedColor),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            '$label: $value',
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: mutedColor,
              fontSize: 10,
              height: 1.25,
            ),
          ),
        ),
      ],
    );
  }

  Widget _personVisual(PersonData person, String initials) {
    final colors = Theme.of(context).colorScheme;
    final gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        colors.primary.withValues(alpha: 0.92),
        colors.tertiary.withValues(alpha: 0.82),
      ],
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
        image: person.image.isEmpty
            ? null
            : DecorationImage(
                image: AssetImage(person.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  colors.primary.withValues(alpha: 0.25),
                  BlendMode.srcOver,
                ),
              ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (person.image.isNotEmpty)
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    colors.primary.withValues(alpha: 0.8),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          Center(
            child: person.image.isEmpty
                ? Text(
                    initials,
                    style: TextStyle(
                      color: colors.onPrimary,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  )
                : Icon(
                    Icons.person_outline,
                    color: colors.onPrimary.withValues(alpha: 0.9),
                    size: 42,
                  ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Icon(
              Icons.auto_awesome,
              size: 16,
              color: colors.onPrimary.withValues(alpha: 0.75),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageIntro(
    String title,
    String fileName,
    IconData icon,
    String subtitle,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 6),
          _tag(fileName, Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }

  Widget _buildGalleryPage() {
    return ListView(
      controller: _tabScrollController,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
      children: [
        _pageIntro(
          'Galeri Kelas',
          'galeri.json',
          Icons.photo_library_outlined,
          'Dokumentasi kegiatan XI RPL 1',
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: galleryItems.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .92,
          ),
          itemBuilder: (context, index) {
            final galleryItem = galleryItems[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _showGalleryImage(galleryItem),
                      child: Image.asset(
                        galleryItem.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text(
                      galleryItem.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 24),
        _buildFooter(),
      ],
    );
  }

  void _showGalleryImage(GalleryData galleryItem) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.black87,
      builder: (context) {
        final screenSize = MediaQuery.sizeOf(context);
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(16),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              InteractiveViewer(
                minScale: 1,
                maxScale: 4,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: screenSize.width - 32,
                    maxHeight: screenSize.height - 32,
                  ),
                  child: Image.asset(
                    galleryItem.image,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox(
                          height: 160,
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                        ),
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Tutup',
                onPressed: () => Navigator.of(context).pop(),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildVideoPage() {
    return ListView(
      controller: _tabScrollController,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
      children: [
        _pageIntro(
          'Video Kelas',
          'video.json',
          Icons.play_circle_outline,
          'Kumpulan karya dan dokumentasi video siswa',
        ),
        const SizedBox(height: 16),
        ...videos.map((video) => _VideoCard(video: video)),
        const SizedBox(height: 12),
        _buildFooter(),
      ],
    );
  }
}

class _VideoCard extends StatefulWidget {
  final VideoData video;

  const _VideoCard({required this.video});

  @override
  State<_VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<_VideoCard> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
  }

  void _openPlayer() {
    if (_controller != null) {
      return;
    }
    setState(() {
      _controller = YoutubePlayerController(
        initialVideoId: widget.video.youtubeId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          enableCaption: true,
        ),
      );
    });
  }

  void _closePlayer() {
    _controller?.dispose();
    setState(() {
      _controller = null;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (controller == null)
            _VideoThumbnail(video: widget.video, onTap: _openPlayer)
          else
            YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Theme.of(context).colorScheme.primary,
              bottomActions: const [
                CurrentPosition(),
                ProgressBar(isExpanded: true),
                RemainingDuration(),
                FullScreenButton(),
              ],
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.video.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
                if (widget.video.description.isNotEmpty) ...[
                  const SizedBox(height: 5),
                  Text(
                    widget.video.description,
                    maxLines: controller == null ? 2 : 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
                if (controller != null) ...[
                  const SizedBox(height: 7),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: _closePlayer,
                      icon: const Icon(Icons.close, size: 16),
                      label: const Text('Tutup pemutar'),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoThumbnail extends StatelessWidget {
  final VideoData video;
  final VoidCallback onTap;

  const _VideoThumbnail({required this.video, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://img.youtube.com/vi/${video.youtubeId}/hqdefault.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                alignment: Alignment.center,
                child: Icon(
                  Icons.video_library_outlined,
                  size: 42,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: .42),
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.play_arrow, color: Colors.white, size: 34),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
