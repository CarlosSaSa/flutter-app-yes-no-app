import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {


  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF611232), // Genera un schema apartir de este color
        brightness: Brightness.light // Controla el brillo
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 25,
        )
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF611232),
        centerTitle: true,
        elevation: 0,
      ),
      extensions: <ThemeExtension>[
        const AppColors(success: Color(0xFF34C759), warning:Color(0xFFFF9500), brand: Color(0xFFFF6B35))
      ]
    );

  }


}

// Clase con propiedades custom
class AppColors extends ThemeExtension<AppColors> {

  final Color success;
  final Color warning;
  final Color brand;

  const AppColors({ required this.success, required this.warning, required this.brand });
  
  @override
  ThemeExtension<AppColors> copyWith( { Color? success, Color? warning, Color? brand } ) {
    return AppColors(success: success ?? this.success , warning: warning ?? this.warning, brand: brand ?? this.brand );
  }
  
  @override
  ThemeExtension<AppColors> lerp( AppColors? other, double t) {
    if ( other == null ) return this;
    return AppColors(success: Color.lerp( success, other.success , t )!, 
                      warning: Color.lerp( warning , other.warning, t)!, 
                      brand: Color.lerp( brand, other.brand, t)! );
  }


}