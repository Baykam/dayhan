enum CachePaths {
  themeKey(path: 'product_theme_key'),
  localeKey(path: 'product_locale_key'),
  accessKey(path: 'access_key'),
  refreshKey(path: 'refresh_key'),
  productCache(path: 'product_cache'),
  tokenPath(path: 'token_path');

  final String path;

  const CachePaths({required this.path});
}
