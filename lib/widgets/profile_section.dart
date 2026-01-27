import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSettings.defaultPadding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary.withOpacity(0.1),
            AppColors.secondary.withOpacity(0.05),
          ],
        ),
      ),
      child: Column(
        children: [
          // Profile Image

          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primary,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(  // ← YOUR NEW CODE STARTS HERE
                'assets/images/Profile_image.jpeg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.blue,
                    child: const Icon(Icons.person, color: Colors.white),
                  );
                },
              ),
            ),
          ),

          // Name
          Text(
            PortfolioInfo.name,
            style: AppTextStyles.heading1.copyWith(
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),

          // Title
          Text(
            PortfolioInfo.title,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.secondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),

          // Bio
          Text(
            PortfolioInfo.bio,
            textAlign: TextAlign.center,
            style: AppTextStyles.body,
          ),
          const SizedBox(height: 20),

          // Contact Info
          _buildContactInfo(),
          const SizedBox(height: 24),

          // Social Links
          _buildSocialLinks(),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSettings.defaultBorderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildContactItem(Icons.email, PortfolioInfo.email),
          _buildContactItem(Icons.location_on, PortfolioInfo.location),
          _buildContactItem(Icons.phone, PortfolioInfo.phone),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 20,
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 80,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon(Icons.email, 'Email', () {
          print('Open email');
        }),
        const SizedBox(width: 20),
        _buildSocialIcon(Icons.code, 'GitHub', () {
          print('Open GitHub');
        }),
        const SizedBox(width: 20),
        _buildSocialIcon(Icons.work, 'LinkedIn', () {
          print('Open LinkedIn');
        }),
        const SizedBox(width: 20),
        _buildSocialIcon(Icons.web, 'Portfolio', () {
          print('Open Portfolio');
        }),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, String label, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 24,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: AppTextStyles.caption,
        ),
      ],
    );
  }
}