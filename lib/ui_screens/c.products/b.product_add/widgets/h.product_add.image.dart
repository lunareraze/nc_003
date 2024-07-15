part of '../_index.dart';

class ProductAddImage extends StatelessWidget {
  const ProductAddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          _dt.rxPickedFile.st != null
              ? SizedBox(
                  height: 200,
                  width: 200,
                  child: kIsWeb
                      ? Image.network(_dt.rxPickedFile.st!.path)
                      : Image.file(
                          File(_dt.rxPickedFile.st!.path),
                        ))
              : const SizedBox.shrink(),
          OutlinedButton(
            onPressed: () {
              _ct.pickedImage();
            },
            child: const Text('pick image'),
          )
        ],
      ),
    );
  }
}
