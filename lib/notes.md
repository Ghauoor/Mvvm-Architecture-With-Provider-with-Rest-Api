# Provider
## Single Provider with changeNotifier has global context
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
