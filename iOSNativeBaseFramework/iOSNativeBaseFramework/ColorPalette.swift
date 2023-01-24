//
//  ColorPalette.swift
//  iOSNativeBaseFramework
//
//  Created by Jeevan Chandra Joshi on 24/01/23.
//

import UIKit

public struct ColorPalette {
    private static let primaryColors: [Int: UIColor] = [
        50: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 1.0),
        100: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.9),
        200: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.8),
        300: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.7),
        400: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.6),
        500: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.5),
        600: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.4),
        700: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.3),
        800: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.2),
        900: UIColor(red: 0.2, green: 0.4, blue: 0.8, alpha: 0.1),
    ]

    public static var primary: [Int: UIColor] {
        return primaryColors
    }

    private static let secondaryColors: [Int: UIColor] = [
        50: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 1.0),
        100: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.9),
        200: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.8),
        300: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.7),
        400: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.6),
        500: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.5),
        600: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.4),
        700: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.3),
        800: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.2),
        900: UIColor(red: 0.8, green: 0.2, blue: 0.4, alpha: 0.1),
    ]

    public static var secondary: [Int: UIColor] {
        return secondaryColors
    }

    private static let tertiaryColor: [Int: UIColor] = [
        50: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 1.0),
        100: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.9),
        200: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.8),
        300: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.7),
        400: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.6),
        500: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.5),
        600: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.4),
        700: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.3),
        800: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.2),
        900: UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 0.1),
    ]

    public static var tertiary: [Int: UIColor] {
        return tertiaryColor
    }
}
