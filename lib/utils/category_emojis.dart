import 'dart:collection';

class CategoryEmojis {
  static final HashMap<String, String> _emojiMap = HashMap.from({
    // Social & Communication
    'social': '💬',
    'communication': '💬',
    'messaging': '💬',
    'chat': '💬',
    'email': '📧',
    'phone': '📞',
    'contacts': '👥',
    
    // Productivity & Office
    'productivity': '⚡',
    'office': '📊',
    'business': '💼',
    'finance': '💰',
    'banking': '🏦',
    'notes': '📝',
    'calendar': '📅',
    'tasks': '✅',
    'todo': '✅',
    'documents': '📄',
    'pdf': '📄',
    
    // Media & Entertainment
    'media': '🎬',
    'video': '🎬',
    'music': '🎵',
    'audio': '🎵',
    'player': '🎵',
    'photos': '📷',
    'gallery': '🖼️',
    'camera': '📸',
    'streaming': '📺',
    'tv': '📺',
    'movies': '🎭',
    
    // Games
    'games': '🎮',
    'gaming': '🎮',
    'arcade': '🕹️',
    'puzzle': '🧩',
    'strategy': '♟️',
    'adventure': '🗺️',
    'sports games': '⚽',
    
    // Utilities & Tools
    'utilities': '🔧',
    'tools': '🔧',
    'system': '⚙️',
    'file': '📁',
    'file manager': '📁',
    'browser': '🌐',
    'vpn': '🔒',
    'security': '🛡️',
    'antivirus': '🛡️',
    'cleaner': '🧹',
    'backup': '💾',
    
    // Development
    'development': '💻',
    'programming': '💻',
    'code': '💻',
    'developer': '👨‍💻',
    'terminal': '💻',
    'editor': '📝',
    
    // Education & Learning
    'education': '📚',
    'learning': '📚',
    'books': '📖',
    'study': '📖',
    'school': '🎓',
    'language': '🗣️',
    'dictionary': '📕',
    
    // Health & Fitness
    'health': '🏥',
    'fitness': '💪',
    'medical': '⚕️',
    'exercise': '🏃',
    'sports': '⚽',
    'yoga': '🧘',
    
    // Shopping & E-commerce
    'shopping': '🛒',
    'ecommerce': '🛍️',
    'store': '🏪',
    'food': '🍔',
    'delivery': '🚚',
    
    // Travel & Navigation
    'travel': '✈️',
    'navigation': '🗺️',
    'maps': '📍',
    'gps': '📍',
    'weather': '🌤️',
    
    // News & Information
    'news': '📰',
    'information': 'ℹ️',
    'magazine': '📖',
    'blog': '📝',
    
    // Graphics & Design
    'graphics': '🎨',
    'design': '🎨',
    'drawing': '✏️',
    'art': '🖼️',
    'photo editing': '🖼️',
    
    // Internet & Network
    'internet': '🌐',
    'network': '🌐',
    'wifi': '📶',
    'download': '⬇️',
    'upload': '⬆️',
    
    // Custom & Miscellaneous
    'custom': '⭐',
    'misc': '📦',
    'other': '📦',
    'default': '📱',
  });

  static String getEmojiForCategory(String category) {
    // Try exact match first
    String? emoji = _emojiMap[category.toLowerCase()];
    if (emoji != null) return emoji;
    
    // Try partial match
    for (String key in _emojiMap.keys) {
      if (category.toLowerCase().contains(key)) {
        return _emojiMap[key]!;
      }
    }
    
    // Return default emoji
    return _emojiMap['default']!;
  }
}
