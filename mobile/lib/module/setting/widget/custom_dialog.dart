import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/module/setting/bloc/setting_bloc.dart';
import 'package:flutter_boilerplate/module/setting/setting.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({
    super.key,
    required this.type,
    required this.onSubmit,
    required this.bloc,
    required this.data,
  });

  final ChangeType type;
  final void Function(String? newValue, DateTime birthday, Gender? gender)
      onSubmit;
  final SettingBloc bloc;
  final dynamic data;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  late TextEditingController _controller;
  String? error;
  Gender? gender = Gender.male;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    switch (widget.type) {
      case ChangeType.name:
        _controller.text = widget.data as String;
        break;
      case ChangeType.phone:
        _controller.text = widget.data as String;
        break;
      case ChangeType.gender:
        gender = widget.data as Gender;
        break;
      case ChangeType.birthday:
        break;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.type.toName();

    switch (widget.type) {
      case ChangeType.name:
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            height: 180,
            padding: const EdgeInsets.all(PaddingConstants.padding3U),
            // width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Palette.jetBlack,
                  ),
                ),
                TextField(
                  controller: _controller,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.jetBlack,
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size1U,
                ),
                if (error != null)
                  Text(
                    error!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Palette.error,
                    ),
                  ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('Huỷ'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: SizeConstants.size2U,
                    ),
                    OutlinedButton(
                      child: const Text('Xác nhận'),
                      onPressed: () {
                        final value = _controller.text;

                        if (value.isEmpty) {
                          setState(() {
                            error = 'Tên không được để trống';
                          });
                        } else {
                          widget.bloc
                              .add(SettingEvent.update(widget.type, value));

                          Navigator.pop(context);
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      case ChangeType.phone:
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            height: 180,
            padding: const EdgeInsets.all(PaddingConstants.padding3U),
            // width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Palette.jetBlack,
                  ),
                ),
                TextField(
                  controller: _controller,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.jetBlack,
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size1U,
                ),
                if (error != null)
                  Text(
                    error!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Palette.error,
                    ),
                  ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('Huỷ'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: SizeConstants.size2U,
                    ),
                    OutlinedButton(
                      child: const Text('Xác nhận'),
                      onPressed: () {
                        final value = _controller.text;

                        const regexPattern = r'^(?:[+0][1-9])?[0-9]{9,12}$';
                        final regExp = RegExp(regexPattern);

                        if (value.isEmpty || !regExp.hasMatch(value)) {
                          setState(() {
                            error = 'Số điện thoại không hợp lệ';
                          });
                        } else {
                          widget.bloc
                              .add(SettingEvent.update(widget.type, value));

                          Navigator.pop(context);
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      case ChangeType.birthday:
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            height: 180,
            padding: const EdgeInsets.all(PaddingConstants.padding3U),
            // width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Palette.jetBlack,
                  ),
                ),
                // TextField(
                //   controller: _controller,
                //   style: const TextStyle(
                //     fontSize: 14,
                //     fontWeight: FontWeight.w400,
                //     color: Palette.jetBlack,
                //   ),
                // ),
                const SizedBox(
                  height: SizeConstants.size1U,
                ),

                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('Huỷ'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: SizeConstants.size2U,
                    ),
                    OutlinedButton(
                      child: const Text('Xác nhận'),
                      onPressed: () {
                        // final value = _controller.text;

                        // if (value.isEmpty) {
                        //   context
                        //       .read<SettingBloc>()
                        //       .add(SettingEvent.update(widget.type, value));
                        // } else {
                        //   context
                        //       .read<SettingBloc>()
                        //       .add(SettingEvent.update(widget.type, value));

                        //   Navigator.pop(context);
                        // }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      case ChangeType.gender:
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            height: 180,
            padding: const EdgeInsets.all(PaddingConstants.padding3U),
            // width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Palette.jetBlack,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton<Gender>(
                    isExpanded: true,
                    value: gender,
                    alignment: AlignmentDirectional.centerEnd,
                    items: [
                      DropdownMenuItem<Gender>(
                        value: Gender.male,
                        child: Text(Gender.male.toName()),
                      ),
                      DropdownMenuItem<Gender>(
                        value: Gender.female,
                        child: Text(Gender.female.toName()),
                      ),
                    ],
                    onChanged: (g) {
                      setState(() {
                        gender = g;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('Huỷ'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: SizeConstants.size2U,
                    ),
                    OutlinedButton(
                      child: const Text('Xác nhận'),
                      onPressed: () {
                        widget.bloc
                            .add(SettingEvent.update(widget.type, gender));

                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        );
    }
  }
}
