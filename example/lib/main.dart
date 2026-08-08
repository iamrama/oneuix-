import 'package:flutter/material.dart';
import 'package:oneuix/oneuix.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UixApp(
        theme: UixTheme(primaryColor: Colors.blue),
        darkTheme: UixTheme.dark(primaryColor: Colors.blueGrey),
        themeMode: UixThemeMode.system,
        child: const DemoHomePage(),
      ),
    );
  }
}

class DemoHomePage extends StatefulWidget {
  const DemoHomePage({super.key});

  @override
  State<DemoHomePage> createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  bool rememberMe = false;
  String selected = 'Standard';
  int page = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OneUIX Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const UixCard(
            child: Text('Design tokens + components + patterns in one package.'),
          ),
          const SizedBox(height: 12),
          UixButton(
            label: 'Open Confirmation Dialog',
            onPressed: () {
              UixDialog.show(
                context: context,
                title: 'Continue?',
                description: 'Proceed with this operation?',
              );
            },
          ),
          const SizedBox(height: 12),
          const UixTextField(label: 'Email', hintText: 'name@example.com'),
          const SizedBox(height: 12),
          const UixPasswordField(),
          const SizedBox(height: 12),
          UixDropdown<String>(
            label: 'Plan',
            value: selected,
            items: const [
              DropdownMenuItem(value: 'Standard', child: Text('Standard')),
              DropdownMenuItem(value: 'Pro', child: Text('Pro')),
              DropdownMenuItem(value: 'Enterprise', child: Text('Enterprise')),
            ],
            onChanged: (value) {
              if (value != null) {
                setState(() => selected = value);
              }
            },
          ),
          const SizedBox(height: 12),
          UixCheckbox(
            value: rememberMe,
            label: 'Remember me',
            onChanged: (value) => setState(() => rememberMe = value ?? false),
          ),
          const SizedBox(height: 12),
          UixPagination(
            page: page,
            totalPages: 5,
            onChanged: (next) => setState(() => page = next),
          ),
          const SizedBox(height: 12),
          const UixEmptyState(
            title: 'No transactions',
            description: 'Your transactions will appear here.',
          ),
          const SizedBox(height: 12),
          UixDashboard(
            tiles: const [
              UixDashboardTile(title: 'Revenue', value: '12.5M', delta: '+12%'),
              UixDashboardTile(title: 'Users', value: '25,420', delta: '+8%'),
            ],
          ),
        ],
      ),
    );
  }
}
