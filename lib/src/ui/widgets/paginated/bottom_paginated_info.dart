import 'package:alex_astudillo_erp/src/domain/responses/default_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomPaginatedInfo extends StatelessWidget {
  const BottomPaginatedInfo(
    this.response, {
    Key? key,
    this.loading = false,
    this.onNext,
    this.onPrevious,
  }) : super(key: key);

  final bool loading;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final DefaultResponse response;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: [
          Expanded(
            child: loading
                ? Text('loading'.tr, textAlign: TextAlign.end)
                : Text.rich(
                    TextSpan(
                      text: '${response.offset ?? ''} - ',
                      children: [
                        TextSpan(
                          text: '${response.lastElement ?? ''} ${'of'.tr} ',
                        ),
                        TextSpan(text: '${response.totalElements ?? ''}'),
                      ],
                    ),
                    textAlign: TextAlign.end,
                  ),
          ),
          const SizedBox(width: 5.0),
          IconButton(
            onPressed: loading || response.first ? null : onPrevious,
            icon: const Icon(Icons.arrow_back_ios_outlined),
            splashRadius: 25.0,
          ),
          const SizedBox(width: 5.0),
          IconButton(
            onPressed: loading || response.last ? null : onNext,
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            splashRadius: 25.0,
          )
        ],
      ),
    );
  }
}
