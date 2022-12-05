import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:id_generator/features/page_layout/cubit/page_layout_cubit.dart';
import 'package:id_generator/features/page_layout/widgets/card_options.dart';

import '../../app/style.dart';
import '../id_painter/painter_widget.dart';

class PageLayout extends StatefulWidget with AutoRouteWrapper {
  const PageLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<PageLayout> createState() => _PageLayoutState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => PageLayoutCubit(),
      child: this,
    );
  }
}

class _PageLayoutState extends State<PageLayout> {
  late PageLayoutCubit _cubit;

  Future<void> _addBackgroundFn() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(withData: true);

    if (result != null) {
      final bytes = result.files.first.bytes;
      if (bytes != null) {
        _cubit.backgroundImage = (await decodeImageFromList(bytes));
      }
    } else {
      // User canceled the picker
    }
  }

  @override
  void initState() {
    _cubit = context.read<PageLayoutCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colorGrey3,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CardOptions(
                onAddBackground: _addBackgroundFn,
              ),
              const SizedBox(height: Style.spacing8),
              Flexible(
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Center(
                    child: BlocBuilder<PageLayoutCubit, PageLayoutState>(
                      builder: (context, state) {
                        return PainterWidget(
                          width: 300,
                          height: 400,
                          backgroundImage: state.backgroundImage,
                        );
                      },
                    ),
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
