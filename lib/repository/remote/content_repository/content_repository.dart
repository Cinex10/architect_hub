import 'dart:convert';

import 'package:architect_hub/model/announce_model.dart';
import 'package:architect_hub/model/portfolio_model.dart';
import 'package:architect_hub/repository/remote/content_repository/base_content_repository.dart';
import 'package:flutter/services.dart';

class ContentRepository extends BaseContentRepository {
  @override
  Future<List<AnnounceModel>> getAnnounces() async {
    final String response =
        await rootBundle.loadString('assets/dummy_data/announces.json');
    final data = jsonDecode(response);
    List<AnnounceModel> list = AnnounceModel.listFromJson(data);
    return list;
  }

  @override
  Future<List<PortifolioModel>> getPortfolios() async {
    return await Future.delayed(const Duration(seconds: 1)).then((value) async {
      final String response =
          await rootBundle.loadString('assets/dummy_data/portfolios.json');
      final data = jsonDecode(response);
      List<PortifolioModel> list = PortifolioModel.listFromJson(data);
      return list;
    });
  }
}
