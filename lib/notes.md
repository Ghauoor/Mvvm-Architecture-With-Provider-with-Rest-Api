# Provider

# Ref Links
[Medium Article] (https://medium.com/bancolombia-tech/flutter-provider-what-is-it-what-is-it-for-and-how-to-use-it-47d6941860d7)

[Basics of Provider] (https://blog.logrocket.com/quick-guide-provider-flutter-state-management/)

[Ref of provider] (https://www.geeksforgeeks.org/flutter-provider-package/)

[Official doc of provider] (https://docs.flutter.dev/data-and-backend/state-mgmt/simple)

## How to use provider
A Step-by-step Process to implement Flutter provider in a Flutter app
Here’s a step-by-step guide on how to implement Flutter Provider in a Flutter app:

Step 1: Add the provider package to your pubspec.yaml file.

Step 2: Create a new dart file to store your data (e.g. data.dart).

Step 3: In the data file, create a class to store your data and extend it from ChangeNotifier.

Step 4: In your main.dart file, wrap your entire app with a ChangeNotifierProvider.

Step 5: Access the data from your provider using the Consumer widget.

Step 6: Update the data by calling notifyListeners() on your provider.

### Single Provider with changeNotifier has global context
# Step - 1
```ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'REST With Provder MVVM',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CountExample(),
        )
    ),
```
# Step - 2
write the class for provider --> 
variable , getter and method to perform specific functionality 

```
class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}
```
# Step - 3
Initialize the provider class in this build of widget 
```
inal countProvider = Provider.of<CountProvider>(context, listen: false);

```

# Step - 4
## use consumer widget to prevent the rebuids

```
Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
             value.toString(),
              style: const TextStyle(
                fontSize: 50,
              ),
            );
        },

```
# Terms in Provider
## ChangeNotifier: 
This one should be extended to provide an object that can be used to send change notifications to its listeners.
## ChangeNotifierProvider: 
It has changes from a ChangeNotifier. Child widgets can access the state object and listen the changes
## Consumer: 
Rebuilds part of a subtree when the listening state changes.
## Provider.of: 
Allows descendant widgets to access the state object.

