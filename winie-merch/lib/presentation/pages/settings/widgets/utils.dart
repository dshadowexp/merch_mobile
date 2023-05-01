import 'package:winie_merch/domain/identity/entities/identity.dart';

subDetails(Identity r) {
  if (r.phoneNumber != null && r.phoneNumber!.isNotEmpty) {
    return r.phoneNumber!;
  } else if (r.email != null && r.email!.isNotEmpty) {
    return r.email!;
  } else if (r.phoneNumber != null && r.phoneNumber!.isNotEmpty) {
    return r.id!;
  } else {
    return 'User';
  }
}
