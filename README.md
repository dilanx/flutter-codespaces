# Flutter on Codespaces

This is a template repository for developing with [Flutter](https://flutter.dev/) on the web on [GitHub Codespaces](https://github.com/features/codespaces).

Flutter is a cross-platform UI framework by Google for building apps. Codespaces is a cloud-based development environment that lets you run a full-featured IDE in the cloud. This template repository lets you get started with Flutter on Codespaces in just a few clicks.

## Important things to note

Codespaces is not completely free. Free users have 120 core-hours per month and Pro users have 180 core-hours per month. The default codespace runs on a 2-core machine, so that's 60 hours (or 90 hours) of free usage per month before getting charged. Make sure to stop your codespace when you're not using it (it automatically stops after 30 minutes of inactivity by default). See more pricing details [here](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces), and manage your active codespaces [here](https://github.com/codespaces).

## Setup

1. Press "Use this template" towards the top right of this repository and create a new repository from this template.

    > There's also an option to open this repository in Codespaces and publish it to GitHub later from there, but I recommend creating your own repository first.

2. In your new repository, press "Code", select "Codespaces", then press "Create codespace on main". A container with everything you need to get started will be created automatically, then you'll be taken to your new codespace (VS Code in your browser).

3. Press the "Extensions" icon in the left sidebar. You'll see that the Flutter and Dart extensions are already being installed. The environment won't work properly until the installation is complete, so wait for it to finish.

4. In your integrated terminal (the TERMINAL tab), run `flutter pub get` to install the missing Flutter dependencies.

5. In the ports view (the PORTS tab), port 3000 should be listed there already. Right click on it, and, under "Port Visibility", select "Public". This is important so the app can access services on your client from other server ports without getting blocked due to CORS.

6. Run `./run.sh` in the terminal to start the app. A notification will appear saying that an app opened on port 3000. You can press "Open in Browser" to open it, but it won't load until the terminal shows that it's ready. You can refresh once the app is loaded (as indicated by a prompt to press "R" to reload).

    > You can find the link to access the app in your browser at any time by going to the ports view, right clicking on port 3000, and pressing "Open in Browser".

7. That's it! Make changes in `lib/main.dart`, press "R" in the terminal, then refresh the page to see your changes appear quickly.

## Managing your codespace

When you're not using your codespace, deactivate it by going to [Codespaces](https://github.com/codespaces), pressing the 3 dots on the right side of the codespace, and pressing "Stop codespace". You can also deactivate it within the codespace by pressing "Codespaces" at the bottom left of the online VS Code and selecting "Stop Current Codespace".

Edited files in your workspace are not deleted when stopping the codespace and the container won't need to be rebuilt when you start it again. Provided that you're under the storage limit (15 GB for Free users and 20 GB for Pro), you won't be charged if your codespace is offline. I recommend committing your repository changes on your codespace often to avoid losing work if you were to delete your codespace.

---

This repository is generated from the [dilanx/flutter-codespaces](https://github.com/dilanx/flutter-codespaces) repository.
