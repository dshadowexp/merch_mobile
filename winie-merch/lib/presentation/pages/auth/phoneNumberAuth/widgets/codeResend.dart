import 'dart:async';
import 'package:flutter/material.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';

class CodeResend extends StatefulWidget {
  final resendCode;

  const CodeResend({
    Key? key,
    this.resendCode,
  }) : super(key: key);
  @override
  _CodeResendState createState() => _CodeResendState();
}

class _CodeResendState extends State<CodeResend> {
  final timeNotifier = TimeNotifier();
  final _timeTrackerNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    timeNotifier.startTimer(_timeTrackerNotifier.value);
    super.initState();
  }

  @override
  void dispose() {
    timeNotifier.dispose();
    super.dispose();
  }

  void _resendTap() {
    if (_timeTrackerNotifier.value == 3) {
      _timeTrackerNotifier.value = 0;
    } else {
      _timeTrackerNotifier.value += 1;
    }

    timeNotifier.startTimer(_timeTrackerNotifier.value);
    widget.resendCode();
  }

  @override
  Widget build(BuildContext context) {
    return AvoidKeyboard(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: timeNotifier,
                builder: (_, __) => GestureDetector(
                  onTap: timeNotifier.timer!.isActive
                      ? null
                      : () {
                          _resendTap();
                        },
                  child: Text(
                    'Resend SMS',
                    style: TextStyle(
                      color: timeNotifier.timer!.isActive
                          ? Colors.grey
                          : Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              AnimatedBuilder(
                animation: timeNotifier,
                builder: (_, __) => Text(
                  timeNotifier.timeString,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeNotifier extends ChangeNotifier {
  String timeString = "0:00";
  Timer? timer;
  List<int> _times = [0, 4, 14, 44];

  int _seconds = 59;
  int _minutes = 0;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer(int timeTracker) {
    _seconds = 59;
    _minutes = _times[timeTracker];
    timer?.cancel();

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds < 1 && _minutes < 1) {
        timer.cancel();
      } else if (_seconds < 1 && _minutes > 0) {
        _minutes -= 1;
        _seconds = 59;
      } else {
        _seconds -= 1;
      }
      timeString = "$_minutes:${_seconds.toString().padLeft(2, "0")}";
      notifyListeners();
    });
  }
}
