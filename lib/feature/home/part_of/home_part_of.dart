part of '../view/home_view.dart';

class _HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('Hava Durumu'), actions: [_Loading()]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

////
/// Bloc icin guzel bir sekilde disari Cikardik daha kolay sekilde kontrol etmek
/// icin
@immutable
class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        if (!state.isLoading) return const SizedBox.shrink();
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
