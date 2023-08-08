
push:
	git status
	git add .
	git commit -m "$$(date)"
	git pull origin main 
	git push origin main

run:
	go run main.go

emulator:
	go run -tags mobile main.go

dependens:
	apt-get install -y android-sdk
	go install fyne.io/fyne/v2/cmd/fyne@latest

android:
	export ANDROID_HOME="/usr/lib/android-sdk/" && export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/" && ~/go/bin/fyne package -os android -appID my.domain.appname
