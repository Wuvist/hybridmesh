import 'package:grpc/grpc.dart';
import 'src/generated/namecard.pbgrpc.dart';

final channel = ClientChannel(
  '10.0.2.2',
  port: 50051,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
);


class NameCardService {
  static final NameCardService _singleton = NameCardService._internal();
  final stub = NameCardClient(channel);

  factory NameCardService() {
    return _singleton;
  }

  NameCardService._internal();
}

