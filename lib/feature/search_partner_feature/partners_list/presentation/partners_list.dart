import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/routing/routes.gr.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/ui/extension/feedback_handler_navigation_extension.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/presentation/viewmodel/quotes_viewmodel.dart';
@RoutePage()
class PartnersListPage extends ConsumerWidget {
  const PartnersListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quotesState = ref.watch(quotesNotifierProvider);
    context.handleFailure(quotesState.failureResponse);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes Page'),
      ),
      body: quotesState.status == QuotesStatus.loading
          ? const CircularProgressIndicator()
          : quotesState.status == QuotesStatus.success && quotesState.quotes != null
          ? _buildQuotesList(quotesState.quotes!)
          : _buildErrorUI(context, ref, quotesState.failureResponse),
    );
  }

  Widget _buildQuotesList(Quotes quotes) {
    return ListView.builder(
      itemCount: quotes.quotes.length,
      itemBuilder: (context, index) {
        final quote = quotes.quotes[index];
        return ListTile(
          title: Text(quote.phrase),
          subtitle: Text(quote.author),
          onTap: () => context.router.navigate(PartnerDetailRoute(item: quote.phrase)),
        );
      },
    );
  }

  Widget _buildErrorUI(BuildContext context, WidgetRef ref, FailureResponse? failureResponse) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 48.0,
          ),
          const Text(
            'Error loading quotes',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16.0,
            ),
          ),
          if (failureResponse != null)
            Text(
              failureResponse.message,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12.0,
              ),
            ),
          ElevatedButton(
            onPressed: () {
              final notifier = ref.read(quotesNotifierProvider.notifier);
              notifier.fetchQuotes();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
