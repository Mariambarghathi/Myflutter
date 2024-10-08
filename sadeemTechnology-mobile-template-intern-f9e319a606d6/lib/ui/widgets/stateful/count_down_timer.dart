import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    Key? key,
    int? secondsRemaining,
    this.countDownTimerStyle,
    this.whenTimeExpires,
    this.countDownFormatter,
  })  : secondsRemaining = secondsRemaining,
        super(key: key);

  final int? secondsRemaining;
  final Function? whenTimeExpires;
  final Function? countDownFormatter;
  final TextStyle? countDownTimerStyle;

  @override
  State createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  Duration? duration;

  String formatHHMMSS(int seconds) {
    var hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    var minutes = (seconds / 60).truncate();

    var hoursStr = (hours).toString().padLeft(2, '0');
    var minutesStr = (minutes).toString().padLeft(2, '0');
    var secondsStr = (seconds % 60).toString().padLeft(2, '0');

    if (hours == 0) {
      return '$minutesStr:$secondsStr';
    }

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  String? get timerDisplayString {
    var duration = _controller.duration! * _controller.value;
    return widget.countDownFormatter != null
        ? widget.countDownFormatter!(duration.inSeconds)
        : formatHHMMSS(duration.inSeconds);
    // In case user doesn't provide formatter use the default one
    // for that create a method which will be called formatHHMMSS or whatever you like
  }

  @override
  void initState() {
    super.initState();
    duration = Duration(seconds: widget.secondsRemaining!);
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    _controller.reverse(from: widget.secondsRemaining!.toDouble());
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        widget.whenTimeExpires!();
      }
    });
  }

  @override
  // ignore: must_call_super
  void didUpdateWidget(CountDownTimer oldWidget) {
    if (widget.secondsRemaining != oldWidget.secondsRemaining) {
      setState(() {
        duration = Duration(seconds: widget.secondsRemaining!);
        _controller.dispose();
        _controller = AnimationController(
          vsync: this,
          duration: duration,
        );
        _controller.reverse(from: widget.secondsRemaining!.toDouble());
        _controller.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            widget.whenTimeExpires!();
          } else if (status == AnimationStatus.dismissed) {
            print('Animation Complete');
          }
        });
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (_, Widget? child) {
              return Text(
                timerDisplayString!,
                style: widget.countDownTimerStyle,
              );
            }));
  }
}
