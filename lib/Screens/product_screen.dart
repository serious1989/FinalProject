import 'package:flutter/material.dart';
import 'package:pharm_app/utils/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPadding.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revolutionizing Pharmaceutical Distribution in Africa',
            style: AppTextStyles.headingStyle,
          ),
          SizedBox(height: 16),
          Text(
            'Serious Pharm Solutions is a web platform where pharmacies and health delivery facilities can gain access to quality and cost-efficient pharmaceutical drugs.',
            style: AppTextStyles.bodyStyle,
          ),
          SizedBox(height: 16),
          Text(
            'Mobile App Integration: Our mobile app enables ease of access to products and information from any location worldwide.',
            style: AppTextStyles.bodyStyle,
          ),
          SizedBox(height: 16),
          Text(
            'Target Market: African pharmaceutical industries and health delivery facilities.',
            style: AppTextStyles.bodyStyle,
          ),
          SizedBox(height: 16),
          Text(
            'Competitive Advantage: We combine cutting-edge technology with a focus on quality and cost-effectiveness.',
            style: AppTextStyles.bodyStyle,
          ),
        ],
      ),
    );
  }
}
