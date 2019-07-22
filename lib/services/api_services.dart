


Future<int> getDelayedResponse() async {
  printLogs() => print("Delayed");
  var duration = Duration(seconds: 1);

  await Future.delayed(duration, printLogs);
  return 300;
}