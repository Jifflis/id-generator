import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:id_generator/features/page_layout/cubit/page_layout_cubit.dart';

import '../../core/constant/style.dart';
import '../id_painter/painter_widget.dart';
import 'cubit/page_layout_state.dart';

class PageLayout extends StatefulWidget {
  const PageLayout({
    super.key,
  });

  @override
  State<PageLayout> createState() => _PageLayoutState();
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

  void _addImageFn() {}

  void _addTextFn() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance
    //     .addPostFrameCallback((_){
    //       context.router.replaceNamed('/page1');
    //
    //      // context.router.replaceNamed('/admin');
    // });
    return BlocProvider(
      create: (_) => PageLayoutCubit(),
      child: Scaffold(
        backgroundColor: Style.colorGrey3,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: BlocBuilder<PageLayoutCubit, PageLayoutState>(
                    builder: (context, state) {
                      _cubit = context.read<PageLayoutCubit>();
                      return PainterWidget(
                        width: 400,
                        height: 600,
                        backgroundImage: state.backgroundImage,
                      );
                    },
                  ),
                )
                // CardOptions(
                //   onAddBackground: _addBackgroundFn,
                //   onAddImage: _addImageFn,
                //   onAddText: _addTextFn,
                // ),
                // const SizedBox(height: Style.spacing8),
                // Flexible(
                //   child: SizedBox(
                //     height: double.infinity,
                //     width: double.infinity,
                //     child: Center(
                //       child: BlocBuilder<PageLayoutCubit, PageLayoutState>(
                //         builder: (context, state) {
                //           return PainterWidget(
                //             width: 400,
                //             height: 600,
                //             backgroundImage: state.backgroundImage,
                //           );
                //         },
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
