import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';

class SettingsFab extends StatefulWidget {
  final Function openSettingsContainer;

  const SettingsFab({
    Key? key,
    required this.openSettingsContainer,
  }) : super(key: key);

  @override
  _SettingsFabState createState() => _SettingsFabState();
}

class _SettingsFabState extends State<SettingsFab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocBuilder<StoreBloc, StoreState>(
        builder: (context, state) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: SizedBox(
                  width: size.width * 0.3,
                  child: Text(
                    state.currentStore != null
                        ? state.currentStore!.name.capitalize
                        : '. . .',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 1.0,
                ),
                child: Icon(
                  state.currentStore != null
                      ? FeatherIcons.settings
                      : FeatherIcons.loader,
                  color: Colors.teal,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
