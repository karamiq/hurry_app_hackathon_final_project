import 'package:app/common_lib.dart';
import 'package:app/src/home/components/check_again.dart';
import 'package:app/src/home/components/upload_fingerprints.dart';
import 'package:app/src/home/utils/bio_authenticator.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isAllowed = useState<bool>(false);

    useEffect(() {
      Future.microtask(() async {
        isAllowed.value = await BioAuthenticator.authenticate();
      });
      return null;
    }, []);

    return Column(
      children: [
        Expanded(
          child: isAllowed.value
              ? UploadFingerprints()
              : CheckAgain(
                  onChange: (value) {
                    isAllowed.value = value;
                  },
                ),
        )
      ],
    );
  }
}
