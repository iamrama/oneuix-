# OneUIX

OneUIX is a Universal Flutter Design System + UI SDK for building consistent, white-label, accessible product experiences across domains like banking, commerce, enterprise, healthcare, and media.

## Architecture

The package is organized in four layers:

1. Foundation: colors, typography, spacing, radius, elevation
2. Components: buttons, inputs, cards, list, dialogs, sheets, feedback
3. Patterns: login, OTP, search/filter, profile, dashboard, settings, file upload
4. Screen templates: optional app-level composition on top of patterns

## Quick start

```dart
import 'package:flutter/material.dart';
import 'package:oneuix/oneuix.dart';

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: UixApp(
				theme: UixTheme(primaryColor: Colors.blue),
				themeMode: UixThemeMode.system,
				child: const Scaffold(
					body: Center(
						child: UixButton(label: 'Continue'),
					),
				),
			),
		);
	}
}
```

## Incremental adoption

You can adopt the SDK progressively:

1. Single component: `UixButton`, `UixTextField`
2. Pattern-level flow: `UixSearchFilter`, `UixLogin`
3. Full-screen composition in your app shell

The SDK does not force BLoC, Riverpod, Provider, Redux, or GetX.

## Public API highlights

`UixApp`, `UixTheme`, `UixConfig`, `UixButton`, `UixTextField`, `UixCard`, `UixDialog`, `UixBottomSheet`, `UixEmptyState`, `UixErrorState`, `UixLoadingState`, `UixSearch`, `UixFilter`, `UixPagination`, `UixLogin`, `UixOtp`, `UixProfile`.

## Quality

Includes:

1. Widget tests
2. Integration test scaffold
3. Golden test scaffold
4. Example app
5. CI workflow
