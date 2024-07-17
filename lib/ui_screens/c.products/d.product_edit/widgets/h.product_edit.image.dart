part of '../_index.dart';

class ProductEditImage extends StatelessWidget {
  const ProductEditImage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          _dt.rxPickedFile.st == null
              ? SizedBox(
                  height: 200,
                  width: 200,
                  child: Visibility(
                    visible: _dt.rxProductDetail.st!.imageUrl.isNotEmpty,
                    child: OnReactive(
                      () => kIsWeb
                          ? Image.network(_dt.rxProductDetail.st!.imageUrl)
                          : Image.file(File(_dt.rxProductDetail.st!.imageUrl)),
                    ),
                  ),
                )
              : SizedBox(
                  height: 200,
                  width: 200,
                  child: OnReactive(
                    () => kIsWeb
                        ? Image.network(_dt.rxPickedFile.st!.path)
                        : Image.file(
                            File(_dt.rxPickedFile.st!.path),
                          ),
                  ),
                ),
          OutlinedButton(
            onPressed: () {
              _ct.pickedImage();
            },
            child: const Text('picked image'),
          )
        ],
      ),
    );
  }
}
