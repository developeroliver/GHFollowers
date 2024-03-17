//
//  GFError.swift
//  GHFollowers
//
//  Created by olivier geiger on 14/03/2024.
//

import UIKit

enum GFError: String, Error {
    case invalidUsername        = "Ce nom d'utilisateur a créé une demande non valide. Veuillez réessayer."
    case unableToComplete       = "Impossible de compléter votre demande. Veuillez vérifier votre connexion internet."
    case invalidResponse        = "Réponse invalide du serveur. Veuillez réessayer."
    case invalidData            = "Les données reçues du serveur n'étaient pas valides. Veuillez réessayer."
    case unableToFavorite       = "Une erreur s'est produite lors de la mise en favori de cet utilisateur. Veuillez réessayer."
    case alreadyInFavorites     = "Vous avez déjà favorisé cet utilisateur. Vous devez VRAIMENT l'apprécier!"
}
