part of '../view/home_view.dart';

//// Burada duzeltecez
class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Hava Durumu'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
