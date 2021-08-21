.PHONY: generate
generate:
	flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: run
run:
	flutter run --flavor development --target lib/main_development.dart

.PHONY: build
build:
	flutter build apk --flavor production --target lib/main_production.dart

.PHONY: run-prod
run-prod:
	flutter run --flavor production --target lib/main_production.dart

.PHONY: build-dev
build-dev:
	flutter build apk --flavor development --target lib/main_development.dart

.PHONY: splash
splash:
	flutter packages pub run flutter_native_splash:create
	rm -r android/app/src/development/res
	rm -r android/app/src/staging/res
	cp -r android/app/src/main/res android/app/src/development
	cp -r android/app/src/main/res android/app/src/staging

.PHONY: icon
icon:
	flutter pub run flutter_launcher_icons:main
	rm -r android/app/src/development/res
	rm -r android/app/src/staging/res
	cp -r android/app/src/main/res android/app/src/development
	cp -r android/app/src/main/res android/app/src/staging

.PHONY: tree
tree:
	rm file_structure.txt
	tree lib/ > file_structure.txt