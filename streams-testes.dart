import 'dart:async';

void main() {
  List convidados = ["Maycon", "Johnathan", "Francisco"];

  final StreamController controller = StreamController();

  final StreamSubscription subscription = controller.stream
      .where((data) => convidados.contains(data))
      .listen((data) {
    print('LISTEN $data');
  });

  // subscription.onData((data) {
  //   print(data);
  // });
  subscription.onDone(() {
    print('done - controller closed');
  });
  // subscription.cancel();

  controller.sink.add('Maycon');
  controller.sink.add('Francisco');
  controller.sink.add('Jonas');
  controller.sink.add('Catarina');
  controller.sink.add('Isabela');

  controller.close();
}
